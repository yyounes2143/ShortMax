.class public Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/ZYk/kkU;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ$oJ;
    }
.end annotation


# instance fields
.field private Pfn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ZYk:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;

.field private ba:Lcom/bytedance/sdk/openadsdk/core/so/awB;

.field private ex:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private oJ:Landroid/content/Context;

.field private tB:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;Lcom/bytedance/sdk/component/adexpress/ZYk/so;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->oJ:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->tB:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 9
    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->Pfn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;

    .line 19
    .line 20
    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/so;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->tB:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    return-object p0
.end method

.method private ZYk()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->ex:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->ex:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->ex:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    .line 5
    :goto_1
    const-string v1, "remove ugen time out task fail"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "RenderInterceptor"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;ILjava/lang/String;)V
    .locals 1

    .line 10
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;->tB()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->Pfn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->ZYk()V

    .line 13
    new-instance v0, Lcom/bytedance/adsdk/ugeno/core/si;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/core/si;-><init>()V

    .line 14
    invoke-virtual {v0, p2}, Lcom/bytedance/adsdk/ugeno/core/si;->oJ(I)V

    .line 15
    invoke-virtual {v0, p3}, Lcom/bytedance/adsdk/ugeno/core/si;->oJ(Ljava/lang/String;)V

    .line 16
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->tB:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    check-cast p3, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;->Jc()Lcom/bytedance/adsdk/ugeno/core/Ry;

    move-result-object p3

    invoke-interface {p3, v0}, Lcom/bytedance/adsdk/ugeno/core/Ry;->oJ(Lcom/bytedance/adsdk/ugeno/core/si;)V

    .line 17
    invoke-interface {p1, p0}, Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;->ZYk(Lcom/bytedance/sdk/component/adexpress/ZYk/kkU;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    .line 18
    invoke-interface {p1, p0}, Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/kkU;)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;->tB()Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    .line 20
    :cond_3
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;->ZYk()Lcom/bytedance/sdk/component/adexpress/ZYk/awB;

    move-result-object p3

    if-nez p3, :cond_4

    return-void

    .line 21
    :cond_4
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;->oJ(Z)V

    .line 22
    invoke-interface {p3, p2}, Lcom/bytedance/sdk/component/adexpress/ZYk/awB;->a_(I)V

    .line 23
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->Pfn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->ZYk()V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;ILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;)Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public oJ()V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/so/awB;)V
    .locals 1

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->ba:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/awB;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;)Z
    .locals 6

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->tB:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->ba()I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 7
    const-string v2, "time is "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x89

    invoke-direct {p0, p1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;ILjava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ$oJ;

    invoke-direct {v3, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ$oJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;ILcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;)V

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->ex:Ljava/util/concurrent/ScheduledFuture;

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ$1;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;)V

    :goto_0
    return v1
.end method
