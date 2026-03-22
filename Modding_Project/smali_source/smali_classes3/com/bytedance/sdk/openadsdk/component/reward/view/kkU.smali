.class public Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field Pfn:Z

.field ZYk:Landroid/os/Handler;

.field private final ba:Landroid/app/Activity;

.field private final cFZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private dLZ:Z

.field ex:Z

.field private jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

.field private final kkU:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

.field oJ:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

.field private final so:Ljava/lang/String;

.field tB:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->tB:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->ex:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->Pfn:Z

    .line 10
    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->kkU:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 12
    .line 13
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->ba:Landroid/app/Activity;

    .line 16
    .line 17
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->cFZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->so:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;
    .locals 1

    .line 15
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sQ()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->ba:Landroid/app/Activity;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->so:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/cFZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public BTZ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Ry()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public Pfn()Landroid/os/Handler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->ZYk:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->ZYk:Landroid/os/Handler;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->ZYk:Landroid/os/Handler;

    .line 17
    .line 18
    return-object v0
.end method

.method public PiB()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->RZ()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->kkU()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public WcQ()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->cFZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->cFZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->bD()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x3

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->cFZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->EP()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->cFZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Tt()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x1

    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/high16 v1, 0x42b40000    # 90.0f

    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->getBackupContainerBackgroundView()Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/widget/FrameLayout;

    .line 52
    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 60
    .line 61
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    :catchall_0
    :cond_0
    return-void
.end method

.method public ZYk()Landroid/widget/FrameLayout;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->getVideoFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oq()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->WcQ()V

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public ZYk(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->ex:Z

    return-void
.end method

.method public ba()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->dLZ:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->dLZ:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->BTZ()V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->ZYk:Landroid/os/Handler;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_2
    return-void
.end method

.method public cFZ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->kkU()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public dLZ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    .line 6
    .line 7
    instance-of v0, v0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public ex()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->ex:Z

    .line 2
    .line 3
    return v0
.end method

.method public jFA()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oq()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public kkU()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getDynamicShowType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    return-object v0
.end method

.method public oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    if-eqz v0, :cond_0

    .line 22
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->kkU:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public oJ(ILjava/lang/String;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ZYk(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public oJ(IZ)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ(IZZ)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/QSm;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->Pfn:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->Pfn:Z

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->kkU:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->so:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->getVideoFrameLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/QSm;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/so/awB;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->setExpressVideoListenerProxy(Lcom/bytedance/sdk/openadsdk/core/so/awB;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/so/jFA;Lcom/bytedance/sdk/openadsdk/core/so/so;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->cFZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Landroid/view/View;)V

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;)V

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/so/jFA;)V

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Landroid/view/View;)V

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;)V

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/so/so;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->tB:Z

    return-void
.end method

.method public so()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->dLZ()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public tB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->tB:Z

    .line 2
    .line 3
    return v0
.end method
