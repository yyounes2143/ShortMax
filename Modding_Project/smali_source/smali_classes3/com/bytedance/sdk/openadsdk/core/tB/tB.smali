.class public Lcom/bytedance/sdk/openadsdk/core/tB/tB;
.super Lcom/bytedance/sdk/openadsdk/core/tB/ex;
.source "SourceFile"


# instance fields
.field private jFA:I

.field private kkU:I

.field private so:Lcom/bytedance/sdk/openadsdk/oJ/oJ/ZYk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/tB/ex;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Z)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/tB;->jFA:I

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/tB;->kkU:I

    .line 9
    .line 10
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/tB/tB;)Lcom/bytedance/sdk/openadsdk/oJ/oJ/ZYk;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/tB;->so:Lcom/bytedance/sdk/openadsdk/oJ/oJ/ZYk;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/tB/tB;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/tB;->kkU:I

    return p0
.end method


# virtual methods
.method public ZYk()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->si()V

    :cond_0
    return-void
.end method

.method public ex()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->getVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->cdg()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/tB;->jFA:I

    .line 20
    .line 21
    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ex()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public getVideoModel()Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->getVideoModel()Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public oJ()V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    if-eqz v0, :cond_0

    .line 7
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->awB()V

    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/tB;->kkU:I

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/oJ/oJ/ZYk;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->eZI()V

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/tB;->so:Lcom/bytedance/sdk/openadsdk/oJ/oJ/ZYk;

    const/4 p1, 0x3

    .line 5
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/tB;->kkU:I

    :cond_0
    return-void
.end method

.method protected tB()V
    .locals 8

    .line 1
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/tB/tB$1;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->oJ:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ex:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ba:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v6, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->cFZ:Z

    .line 12
    .line 13
    move-object v0, v7

    .line 14
    move-object v1, p0

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/tB/tB$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/tB;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    iput-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 19
    .line 20
    check-cast v7, Lcom/bytedance/sdk/openadsdk/core/so/RZ;

    .line 21
    .line 22
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->getVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/tB;->jFA:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->ex(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 34
    .line 35
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 36
    .line 37
    const/4 v2, -0x1

    .line 38
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;

    .line 56
    .line 57
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/tB/tB$2;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/tB/tB$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/tB;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/oJ/ZYk/tB;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method
