.class public Lcom/bytedance/sdk/component/Pfn/Pfn/dLZ;
.super Lcom/bytedance/sdk/component/Pfn/Pfn/oJ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Pfn/Pfn/oJ;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private oJ(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/Pfn/tB/tB;)V
    .locals 1

    .line 25
    new-instance v0, Lcom/bytedance/sdk/component/Pfn/Pfn/so;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/Pfn/Pfn/so;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p4, v0}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ(Lcom/bytedance/sdk/component/Pfn/Pfn/jFA;)Z

    return-void
.end method


# virtual methods
.method public oJ()Ljava/lang/String;
    .locals 1

    .line 26
    const-string v0, "net_request"

    return-object v0
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/tB/tB;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Ry()Lcom/bytedance/sdk/component/Pfn/tB/ba;

    move-result-object v3

    .line 2
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->ex()Lcom/bytedance/sdk/component/Pfn/ex;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ(Z)V

    .line 4
    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/component/Pfn/ZYk/ZYk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->PiB()Z

    move-result v4

    .line 6
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->WcQ()Z

    move-result v5

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oq()Lcom/bytedance/sdk/component/Pfn/WcQ;

    move-result-object v6

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/bytedance/sdk/component/Pfn/ZYk/ZYk;-><init>(Ljava/lang/String;ZZLcom/bytedance/sdk/component/Pfn/WcQ;)V

    .line 8
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/Pfn/ex;->oJ(Lcom/bytedance/sdk/component/Pfn/Pfn;)Lcom/bytedance/sdk/component/Pfn/ba;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/ba;->ZYk()I

    move-result v1

    .line 10
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/ba;->oJ()Lcom/bytedance/sdk/component/Pfn/cFZ;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ(Lcom/bytedance/sdk/component/Pfn/cFZ;)V

    .line 11
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/ba;->ZYk()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_1

    .line 12
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/ba;->tB()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [B

    .line 13
    new-instance v1, Lcom/bytedance/sdk/component/Pfn/Pfn/ZYk;

    invoke-direct {v1, v6, v0}, Lcom/bytedance/sdk/component/Pfn/Pfn/ZYk;-><init>([BLcom/bytedance/sdk/component/Pfn/ba;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ(Lcom/bytedance/sdk/component/Pfn/Pfn/jFA;)Z

    .line 14
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->jFA()Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->RZ()Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object v2

    .line 16
    invoke-interface {v2}, Lcom/bytedance/sdk/component/Pfn/ZYk;->Pfn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->RZ()Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->ZYk(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/Ry;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Lcom/bytedance/sdk/component/Pfn/oJ;->oJ(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 18
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->cFZ()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v8, Lcom/bytedance/sdk/component/Pfn/Pfn/dLZ$1;

    move-object v0, v8

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/component/Pfn/Pfn/dLZ$1;-><init>(Lcom/bytedance/sdk/component/Pfn/Pfn/dLZ;Lcom/bytedance/sdk/component/Pfn/ZYk;Lcom/bytedance/sdk/component/Pfn/tB/ba;Lcom/bytedance/sdk/component/Pfn/tB/tB;Ljava/lang/String;[B)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 19
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/ba;->tB()Ljava/lang/Object;

    move-result-object v2

    .line 21
    instance-of v3, v2, Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 22
    check-cast v2, Ljava/lang/Throwable;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 23
    :goto_1
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/ba;->ex()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/bytedance/sdk/component/Pfn/Pfn/dLZ;->oJ(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/Pfn/tB/tB;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    const/16 v1, 0x3ec

    .line 24
    const-string v2, "net request failed!"

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/bytedance/sdk/component/Pfn/Pfn/dLZ;->oJ(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/Pfn/tB/tB;)V

    return-void
.end method
