.class public Lcom/bytedance/adsdk/ugeno/ex/ex/BTZ;
.super Lcom/bytedance/adsdk/ugeno/ex/ex/tB;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/cFZ/jFA$oJ;


# instance fields
.field private BTZ:Landroid/os/Handler;

.field private dLZ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x1f4

    .line 5
    .line 6
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/BTZ;->dLZ:I

    .line 7
    .line 8
    new-instance p1, Lcom/bytedance/adsdk/ugeno/cFZ/jFA;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p1, v0, p0}, Lcom/bytedance/adsdk/ugeno/cFZ/jFA;-><init>(Landroid/os/Looper;Lcom/bytedance/adsdk/ugeno/cFZ/jFA$oJ;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/BTZ;->BTZ:Landroid/os/Handler;

    .line 18
    .line 19
    return-void
.end method

.method private oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0x44d

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/BTZ;->BTZ:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/BTZ;->BTZ:Landroid/os/Handler;

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/BTZ;->dLZ:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public oJ(Landroid/os/Message;)V
    .locals 4

    .line 8
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x44d

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ:Lcom/bytedance/adsdk/ugeno/ex/dLZ;

    if-eqz p1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ba:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->tB:Lcom/bytedance/adsdk/ugeno/ex/ba;

    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/ex/ba;->ZYk()Ljava/util/List;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/ex/dLZ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;Ljava/util/List;)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/BTZ;->BTZ:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs oJ([Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget-object p1, p1, v0

    check-cast p1, Landroid/view/MotionEvent;

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->Pfn:Ljava/util/Map;

    const-string v1, "delay"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/BTZ;->dLZ:I

    .line 4
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-direct {p0, v0, p1}, Lcom/bytedance/adsdk/ugeno/ex/ex/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method
