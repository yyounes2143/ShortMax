.class public Lcom/applovin/impl/d7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/applovin/impl/sdk/k;

.field private b:Ljava/util/Timer;

.field private c:J

.field private d:J

.field private e:J

.field private f:Z

.field private final g:Ljava/lang/Runnable;

.field private h:J

.field private final i:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/k;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/applovin/impl/d7;->i:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/applovin/impl/d7;->a:Lcom/applovin/impl/sdk/k;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/applovin/impl/d7;->g:Ljava/lang/Runnable;

    .line 14
    .line 15
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/d7;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/applovin/impl/d7;->c:J

    return-wide p1
.end method

.method public static a(JLcom/applovin/impl/sdk/k;Ljava/lang/Runnable;)Lcom/applovin/impl/d7;
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, v0, p2, p3}, Lcom/applovin/impl/d7;->a(JZLcom/applovin/impl/sdk/k;Ljava/lang/Runnable;)Lcom/applovin/impl/d7;

    move-result-object p0

    return-object p0
.end method

.method public static a(JZLcom/applovin/impl/sdk/k;Ljava/lang/Runnable;)Lcom/applovin/impl/d7;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_2

    if-eqz p4, :cond_1

    .line 5
    new-instance v0, Lcom/applovin/impl/d7;

    invoke-direct {v0, p3, p4}, Lcom/applovin/impl/d7;-><init>(Lcom/applovin/impl/sdk/k;Ljava/lang/Runnable;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/applovin/impl/d7;->c:J

    .line 7
    iput-wide p0, v0, Lcom/applovin/impl/d7;->d:J

    .line 8
    iput-boolean p2, v0, Lcom/applovin/impl/d7;->f:Z

    .line 9
    iput-wide p0, v0, Lcom/applovin/impl/d7;->e:J

    .line 10
    :try_start_0
    new-instance p4, Ljava/util/Timer;

    invoke-direct {p4}, Ljava/util/Timer;-><init>()V

    iput-object p4, v0, Lcom/applovin/impl/d7;->b:Ljava/util/Timer;

    .line 11
    invoke-direct {v0}, Lcom/applovin/impl/d7;->b()Ljava/util/TimerTask;

    move-result-object v2

    iget-wide v6, v0, Lcom/applovin/impl/d7;->e:J

    move-object v1, v0

    move-wide v3, p0

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/applovin/impl/d7;->a(Ljava/util/TimerTask;JZJ)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object p1

    const-string p2, "Timer"

    const-string p3, "Failed to create timer due to OOM error"

    invoke-virtual {p1, p2, p3, p0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot create a scheduled timer. Runnable is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot create a scheduled timer. Invalid fire time passed in: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic a(Lcom/applovin/impl/d7;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/d7;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/d7;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/applovin/impl/d7;->b:Ljava/util/Timer;

    return-object p1
.end method

.method private a(Ljava/util/TimerTask;JZJ)V
    .locals 6

    if-eqz p4, :cond_0

    .line 26
    iget-object v0, p0, Lcom/applovin/impl/d7;->b:Ljava/util/Timer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 27
    :cond_0
    iget-object p4, p0, Lcom/applovin/impl/d7;->b:Ljava/util/Timer;

    invoke-virtual {p4, p1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/d7;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/applovin/impl/d7;->d:J

    return-wide p1
.end method

.method static synthetic b(Lcom/applovin/impl/d7;)Lcom/applovin/impl/sdk/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/d7;->a:Lcom/applovin/impl/sdk/k;

    return-object p0
.end method

.method private b()Ljava/util/TimerTask;
    .locals 1

    .line 3
    new-instance v0, Lcom/applovin/impl/d7$a;

    invoke-direct {v0, p0}, Lcom/applovin/impl/d7$a;-><init>(Lcom/applovin/impl/d7;)V

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/d7;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/d7;->i:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/d7;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/applovin/impl/d7;->f:Z

    return p0
.end method

.method static synthetic e(Lcom/applovin/impl/d7;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/applovin/impl/d7;->e:J

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 15
    iget-object v0, p0, Lcom/applovin/impl/d7;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/d7;->b:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 17
    :try_start_1
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :try_start_2
    iput-object v4, p0, Lcom/applovin/impl/d7;->b:Ljava/util/Timer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v1

    .line 19
    :try_start_3
    iget-object v5, p0, Lcom/applovin/impl/d7;->a:Lcom/applovin/impl/sdk/k;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/applovin/impl/d7;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/applovin/impl/d7;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v5

    const-string v6, "Timer"

    const-string v7, "Encountered error while cancelling timer"

    invoke-virtual {v5, v6, v7, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    goto :goto_2

    .line 20
    :cond_0
    :goto_0
    :try_start_4
    iput-object v4, p0, Lcom/applovin/impl/d7;->b:Ljava/util/Timer;

    .line 21
    :goto_1
    iput-wide v2, p0, Lcom/applovin/impl/d7;->h:J

    goto :goto_3

    .line 22
    :goto_2
    iput-object v4, p0, Lcom/applovin/impl/d7;->b:Ljava/util/Timer;

    .line 23
    iput-wide v2, p0, Lcom/applovin/impl/d7;->h:J

    .line 24
    throw v1

    .line 25
    :cond_1
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public c()J
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/d7;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/impl/d7;->c:J

    sub-long/2addr v0, v2

    .line 4
    iget-wide v2, p0, Lcom/applovin/impl/d7;->d:J

    sub-long/2addr v2, v0

    return-wide v2

    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/applovin/impl/d7;->d:J

    iget-wide v2, p0, Lcom/applovin/impl/d7;->h:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public d()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/d7;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/d7;->b:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 4
    :try_start_1
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/applovin/impl/d7;->c:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/applovin/impl/d7;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    iput-object v2, p0, Lcom/applovin/impl/d7;->b:Ljava/util/Timer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v1

    .line 7
    :try_start_3
    iget-object v3, p0, Lcom/applovin/impl/d7;->a:Lcom/applovin/impl/sdk/k;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/applovin/impl/d7;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/applovin/impl/d7;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v3

    const-string v4, "Timer"

    const-string v5, "Encountered error while pausing timer"

    invoke-virtual {v3, v4, v5, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    :try_start_4
    iput-object v2, p0, Lcom/applovin/impl/d7;->b:Ljava/util/Timer;

    goto :goto_2

    :goto_1
    iput-object v2, p0, Lcom/applovin/impl/d7;->b:Ljava/util/Timer;

    .line 9
    throw v1

    .line 10
    :cond_1
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 12

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/d7;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-wide v1, p0, Lcom/applovin/impl/d7;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 4
    :try_start_1
    iget-wide v5, p0, Lcom/applovin/impl/d7;->d:J

    sub-long/2addr v5, v1

    iput-wide v5, p0, Lcom/applovin/impl/d7;->d:J

    cmp-long v1, v5, v3

    if-gez v1, :cond_0

    .line 5
    iput-wide v3, p0, Lcom/applovin/impl/d7;->d:J

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/applovin/impl/d7;->b:Ljava/util/Timer;

    .line 7
    invoke-direct {p0}, Lcom/applovin/impl/d7;->b()Ljava/util/TimerTask;

    move-result-object v6

    iget-wide v7, p0, Lcom/applovin/impl/d7;->d:J

    iget-boolean v9, p0, Lcom/applovin/impl/d7;->f:Z

    iget-wide v10, p0, Lcom/applovin/impl/d7;->e:J

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/applovin/impl/d7;->a(Ljava/util/TimerTask;JZJ)V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/applovin/impl/d7;->c:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    iput-wide v3, p0, Lcom/applovin/impl/d7;->h:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_5

    .line 10
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/applovin/impl/d7;->a:Lcom/applovin/impl/sdk/k;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/d7;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/d7;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v2

    const-string v5, "Timer"

    const-string v6, "Encountered error while resuming timer"

    invoke-virtual {v2, v5, v6, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    goto :goto_3

    .line 11
    :cond_1
    :goto_2
    :try_start_4
    iput-wide v3, p0, Lcom/applovin/impl/d7;->h:J

    goto :goto_4

    :goto_3
    iput-wide v3, p0, Lcom/applovin/impl/d7;->h:J

    .line 12
    throw v1

    .line 13
    :cond_2
    :goto_4
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
