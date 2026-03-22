.class public Lcom/bytedance/sdk/component/ba/oJ/so;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static PiB:Lcom/bytedance/sdk/component/ba/oJ/so;

.field private static volatile kkU:Lcom/bytedance/sdk/component/ba/oJ/Pfn/oJ;


# instance fields
.field private volatile BTZ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/component/ba/oJ/ZYk/tB;",
            ">;"
        }
    .end annotation
.end field

.field private volatile Pfn:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

.field private final WcQ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile ZYk:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

.field private awB:J

.field private volatile ba:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

.field private volatile cFZ:Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;

.field private volatile dLZ:Lcom/bytedance/sdk/component/ba/oJ/ZYk/tB;

.field private volatile ex:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

.field private volatile jFA:Lcom/bytedance/sdk/component/ba/oJ/Pfn;

.field private volatile oJ:Landroid/content/Context;

.field private volatile so:Z

.field private volatile tB:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->WcQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    return-void
.end method

.method public static Pfn()Lcom/bytedance/sdk/component/ba/oJ/Pfn/oJ;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/component/ba/oJ/so;->kkU:Lcom/bytedance/sdk/component/ba/oJ/Pfn/oJ;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/bytedance/sdk/component/ba/oJ/so;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/ba/oJ/so;->kkU:Lcom/bytedance/sdk/component/ba/oJ/Pfn/oJ;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/bytedance/sdk/component/ba/oJ/Pfn/ZYk;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/ba/oJ/Pfn/ZYk;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/ba/oJ/so;->kkU:Lcom/bytedance/sdk/component/ba/oJ/Pfn/oJ;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    .line 6
    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/component/ba/oJ/so;->kkU:Lcom/bytedance/sdk/component/ba/oJ/Pfn/oJ;

    return-object v0
.end method

.method public static declared-synchronized cFZ()Lcom/bytedance/sdk/component/ba/oJ/so;
    .locals 2

    .line 1
    const-class v0, Lcom/bytedance/sdk/component/ba/oJ/so;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/ba/oJ/so;->PiB:Lcom/bytedance/sdk/component/ba/oJ/so;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/bytedance/sdk/component/ba/oJ/so;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/bytedance/sdk/component/ba/oJ/so;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/bytedance/sdk/component/ba/oJ/so;->PiB:Lcom/bytedance/sdk/component/ba/oJ/so;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/component/ba/oJ/so;->PiB:Lcom/bytedance/sdk/component/ba/oJ/so;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method


# virtual methods
.method public BTZ()Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->ZYk:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 2
    .line 3
    return-object v0
.end method

.method public Pfn(Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->Pfn:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    return-void
.end method

.method public PiB()Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->tB:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 2
    .line 3
    return-object v0
.end method

.method public WcQ()Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->ex:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 2
    .line 3
    return-object v0
.end method

.method public ZYk(Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->ZYk:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    return-void
.end method

.method public ZYk(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->so:Z

    return-void
.end method

.method public ZYk()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->so:Z

    return v0
.end method

.method public awB()Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->Pfn:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 2
    .line 3
    return-object v0
.end method

.method public ba()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->oJ:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public dLZ()V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/component/ba/oJ/ZYk/ex;->oJ:Lcom/bytedance/sdk/component/ba/oJ/ZYk/ex;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/ex;->tB()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public eZI()Lcom/bytedance/sdk/component/ba/oJ/Pfn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->jFA:Lcom/bytedance/sdk/component/ba/oJ/Pfn;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->cFZ:Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;

    return-object v0
.end method

.method public ex(Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->ex:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    return-void
.end method

.method public jFA()V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/component/ba/oJ/ZYk/ex;->oJ:Lcom/bytedance/sdk/component/ba/oJ/ZYk/ex;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/ex;->ZYk()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public kkU()Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->ba:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ(J)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->awB:J

    return-void
.end method

.method public oJ(Landroid/content/Context;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->oJ:Landroid/content/Context;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/ba/oJ/Pfn;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->jFA:Lcom/bytedance/sdk/component/ba/oJ/Pfn;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/ba/oJ/ZYk/tB;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->dLZ:Lcom/bytedance/sdk/component/ba/oJ/ZYk/tB;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->ba:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->oJ(J)V

    .line 8
    sget-object v0, Lcom/bytedance/sdk/component/ba/oJ/ZYk/ex;->oJ:Lcom/bytedance/sdk/component/ba/oJ/ZYk/ex;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->ex()B

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/ex;->oJ(Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;I)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->cFZ:Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;

    return-void
.end method

.method public oJ(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ba/oJ;->oJ()Lcom/bytedance/sdk/component/ba/oJ/ba/ZYk;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/bytedance/sdk/component/ba/oJ/ba/ZYk;->oJ(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;ILjava/lang/String;)V

    return-void
.end method

.method public oJ(Ljava/lang/String;Z)V
    .locals 1

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ba/oJ;->oJ()Lcom/bytedance/sdk/component/ba/oJ/ba/ZYk;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/ba/oJ/ba/ZYk;->oJ(Ljava/lang/String;Z)V

    return-void
.end method

.method public oJ(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->WcQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public oJ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->WcQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public si()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->awB:J

    .line 2
    .line 3
    const-wide/32 v2, 0x5265c00

    .line 4
    .line 5
    .line 6
    mul-long/2addr v0, v2

    .line 7
    return-wide v0
.end method

.method public so()Lcom/bytedance/sdk/component/ba/oJ/ZYk/tB;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->dLZ:Lcom/bytedance/sdk/component/ba/oJ/ZYk/tB;

    .line 2
    .line 3
    return-object v0
.end method

.method public tB()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/component/ba/oJ/ZYk/tB;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->BTZ:Ljava/util/Map;

    return-object v0
.end method

.method public tB(Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/so;->tB:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    return-void
.end method
