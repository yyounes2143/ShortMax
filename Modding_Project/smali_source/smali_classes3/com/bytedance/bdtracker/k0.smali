.class public Lcom/bytedance/bdtracker/k0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/bytedance/applog/log/IAppLogLogger;

.field public final b:Ljava/lang/String;

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/log/IAppLogLogger;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/bytedance/bdtracker/k0;->c:J

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/bytedance/bdtracker/k0;->d:J

    .line 11
    .line 12
    iput-object p1, p0, Lcom/bytedance/bdtracker/k0;->a:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/bytedance/bdtracker/k0;->b:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-lez v2, :cond_2

    .line 6
    .line 7
    iget-wide v2, p0, Lcom/bytedance/bdtracker/k0;->c:J

    .line 8
    .line 9
    cmp-long v0, v2, v0

    .line 10
    .line 11
    if-lez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/bdtracker/k0;->a:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/bytedance/bdtracker/k0;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x4

    .line 28
    const-string v3, "[DurationEvent:{}] Pause at:{}"

    .line 29
    .line 30
    invoke-interface {v0, v2, v3, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/bdtracker/k0;->d:J

    .line 34
    .line 35
    iget-wide v2, p0, Lcom/bytedance/bdtracker/k0;->c:J

    .line 36
    .line 37
    cmp-long v2, p1, v2

    .line 38
    .line 39
    if-lez v2, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    :goto_0
    iget-wide v2, p0, Lcom/bytedance/bdtracker/k0;->c:J

    .line 47
    .line 48
    sub-long/2addr p1, v2

    .line 49
    add-long/2addr p1, v0

    .line 50
    iput-wide p1, p0, Lcom/bytedance/bdtracker/k0;->d:J

    .line 51
    .line 52
    const-wide/16 p1, -0x1

    .line 53
    .line 54
    iput-wide p1, p0, Lcom/bytedance/bdtracker/k0;->c:J

    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public b(J)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-lez v2, :cond_0

    .line 6
    .line 7
    iget-wide v2, p0, Lcom/bytedance/bdtracker/k0;->c:J

    .line 8
    .line 9
    cmp-long v0, v2, v0

    .line 10
    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/bdtracker/k0;->c(J)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/bytedance/bdtracker/k0;->a:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/bytedance/bdtracker/k0;->b:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 p2, 0x4

    .line 31
    const-string v1, "[DurationEvent:{}] Resume at:{}"

    .line 32
    .line 33
    invoke-interface {v0, p2, v1, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public c(J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Lcom/bytedance/bdtracker/k0;->c:J

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/bdtracker/k0;->a:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/bytedance/bdtracker/k0;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x4

    .line 18
    const-string v1, "[DurationEvent:{}] Start at:{}"

    .line 19
    .line 20
    invoke-interface {v0, p2, v1, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
