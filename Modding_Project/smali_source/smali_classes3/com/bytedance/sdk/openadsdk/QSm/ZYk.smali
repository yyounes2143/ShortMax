.class public Lcom/bytedance/sdk/openadsdk/QSm/ZYk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/QSm/ZYk$oJ;
    }
.end annotation


# instance fields
.field private Pfn:Lcom/bytedance/sdk/openadsdk/QSm/ZYk$oJ;

.field private ZYk:Lcom/bytedance/sdk/openadsdk/QSm/so;

.field private ex:I

.field private oJ:Ljava/util/concurrent/ScheduledExecutorService;

.field private tB:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/QSm/so;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/ZYk;->oJ:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/ZYk;->tB:J

    .line 10
    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/QSm/ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 12
    .line 13
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/QSm/ZYk;->ex:I

    .line 14
    .line 15
    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/QSm/ZYk;)Lcom/bytedance/sdk/openadsdk/QSm/ZYk$oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/QSm/ZYk;->Pfn:Lcom/bytedance/sdk/openadsdk/QSm/ZYk$oJ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/QSm/ZYk;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/QSm/ZYk;->ex:I

    return p0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/QSm/ZYk;)Lcom/bytedance/sdk/openadsdk/QSm/so;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/QSm/ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/QSm/ZYk;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/ZYk;->tB:J

    return-wide v0
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/QSm/ZYk;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/QSm/ZYk;->oJ:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public ZYk()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/ZYk;->oJ:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public oJ()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/ZYk;->oJ:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    return-void
.end method

.method public oJ(I)V
    .locals 8

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/QSm/ZYk;->oJ:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    new-instance v2, Lcom/bytedance/sdk/openadsdk/QSm/ZYk$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/QSm/ZYk$1;-><init>(Lcom/bytedance/sdk/openadsdk/QSm/ZYk;)V

    int-to-long v5, p1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public oJ(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/QSm/ZYk;->tB:J

    return-void
.end method
