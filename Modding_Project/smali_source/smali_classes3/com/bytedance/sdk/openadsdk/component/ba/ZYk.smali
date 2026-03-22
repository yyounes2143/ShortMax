.class public Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private BTZ:Z

.field private Pfn:I

.field private final ZYk:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

.field private ba:I

.field private cFZ:Z

.field private dLZ:J

.field private ex:I

.field private jFA:I

.field private kkU:J

.field private oJ:Landroid/os/Handler;

.field private final so:I

.field private tB:Lcom/bytedance/sdk/openadsdk/component/ba/oJ;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/so/oJ;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->oJ:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->ex:I

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->Pfn:I

    .line 20
    .line 21
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->ba:I

    .line 22
    .line 23
    const/16 v0, 0x3e8

    .line 24
    .line 25
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->so:I

    .line 26
    .line 27
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->jFA:I

    .line 28
    .line 29
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public Pfn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->oJ:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->oJ:Landroid/os/Handler;

    .line 8
    .line 9
    return-void
.end method

.method public ZYk()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->oJ:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->Pfn:I

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public ZYk(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->Pfn:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->ba:I

    return-void
.end method

.method public ex()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->oJ:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x64

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x64

    .line 5
    .line 6
    if-ne v0, v2, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->oJ:Landroid/os/Handler;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->oJ(I)V

    .line 15
    .line 16
    .line 17
    if-lez p1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput v2, v0, Landroid/os/Message;->what:I

    .line 24
    .line 25
    sub-int/2addr p1, v1

    .line 26
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 27
    .line 28
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->oJ:Landroid/os/Handler;

    .line 29
    .line 30
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->jFA:I

    .line 31
    .line 32
    int-to-long v2, v2

    .line 33
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    return v1
.end method

.method public oJ()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->ba:I

    return v0
.end method

.method public oJ(F)V
    .locals 0

    float-to-int p1, p1

    .line 9
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->Pfn:I

    if-gtz p1, :cond_0

    const/4 p1, 0x5

    .line 10
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->Pfn:I

    :cond_0
    return-void
.end method

.method public oJ(I)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->ex:I

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->Pfn:I

    sub-int/2addr v0, p1

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/so/oJ;->ZYk(J)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->tB:Lcom/bytedance/sdk/openadsdk/component/ba/oJ;

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->cFZ:Z

    if-nez v3, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/component/ba/oJ;->ZYk()V

    .line 6
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->cFZ:Z

    :cond_0
    move p1, v2

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->tB:Lcom/bytedance/sdk/openadsdk/component/ba/oJ;

    if-eqz v3, :cond_4

    .line 8
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->ba:I

    sub-int v5, v4, v0

    if-eqz p1, :cond_3

    if-lt v0, v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    invoke-interface {v3, v5, v1}, Lcom/bytedance/sdk/openadsdk/component/ba/oJ;->oJ(IZ)V

    :cond_4
    return-void
.end method

.method public oJ(IFZ)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return-void

    .line 13
    :cond_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->BTZ:Z

    if-ne v1, p3, :cond_1

    return-void

    .line 14
    :cond_1
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->BTZ:Z

    if-ne p1, v0, :cond_2

    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/component/so/oJ;->oJ(Z)V

    :cond_2
    if-eqz p3, :cond_3

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 17
    :try_start_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->jFA:I

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->dLZ:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 19
    :cond_3
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->kkU:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->dLZ:J

    sub-long/2addr v0, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->kkU:J

    .line 20
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    if-eqz p3, :cond_4

    .line 21
    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/so/oJ;->oJ(J)V

    :catchall_0
    :cond_4
    const/16 p1, 0x3e8

    .line 22
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->jFA:I

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/component/ba/oJ;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->tB:Lcom/bytedance/sdk/openadsdk/component/ba/oJ;

    return-void
.end method

.method public tB()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->oJ:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x64

    .line 10
    .line 11
    iput v1, v0, Landroid/os/Message;->what:I

    .line 12
    .line 13
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->ex:I

    .line 14
    .line 15
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 16
    .line 17
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->oJ:Landroid/os/Handler;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
