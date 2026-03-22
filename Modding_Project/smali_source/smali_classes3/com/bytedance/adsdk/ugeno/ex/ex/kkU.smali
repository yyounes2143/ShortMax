.class public Lcom/bytedance/adsdk/ugeno/ex/ex/kkU;
.super Lcom/bytedance/adsdk/ugeno/ex/ex/tB;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/cFZ/jFA$oJ;


# instance fields
.field private BTZ:I

.field private PiB:Landroid/os/Handler;

.field private WcQ:I

.field private dLZ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/kkU;->BTZ:I

    .line 6
    .line 7
    new-instance v0, Lcom/bytedance/adsdk/ugeno/cFZ/jFA;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1, p0}, Lcom/bytedance/adsdk/ugeno/cFZ/jFA;-><init>(Landroid/os/Looper;Lcom/bytedance/adsdk/ugeno/cFZ/jFA$oJ;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/kkU;->PiB:Landroid/os/Handler;

    .line 17
    .line 18
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/kkU;->WcQ:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public oJ(Landroid/os/Message;)V
    .locals 4

    .line 7
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "handleMsg: execute timer event"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/kkU;->WcQ:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UGBaseEventMonitor"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ:Lcom/bytedance/adsdk/ugeno/ex/dLZ;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ba:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->tB:Lcom/bytedance/adsdk/ugeno/ex/ba;

    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/ex/ba;->ZYk()Ljava/util/List;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/ex/dLZ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;Ljava/util/List;)V

    .line 10
    iget p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/kkU;->WcQ:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/kkU;->WcQ:I

    if-gez p1, :cond_1

    .line 11
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/kkU;->BTZ:I

    if-eqz v1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/kkU;->PiB:Landroid/os/Handler;

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    if-lez p1, :cond_2

    .line 13
    iget p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/kkU;->BTZ:I

    if-eqz p1, :cond_2

    .line 14
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/kkU;->PiB:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/kkU;->PiB:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    return-void
.end method

.method public varargs oJ([Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->Pfn:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 2
    const-string v0, "loop"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/kkU;->dLZ:I

    if-gtz p1, :cond_0

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/kkU;->WcQ:I

    goto :goto_0

    .line 4
    :cond_0
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/kkU;->WcQ:I

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->Pfn:Ljava/util/Map;

    const-string v1, "duration"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/kkU;->BTZ:I

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/kkU;->PiB:Landroid/os/Handler;

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/kkU;->BTZ:I

    int-to-long v0, v0

    const/16 v2, 0x3e9

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p1, 0x1

    return p1
.end method
