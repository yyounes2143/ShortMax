.class public Lcom/bytedance/sdk/openadsdk/component/ZYk;
.super Lcom/bytedance/sdk/openadsdk/component/tB;
.source "SourceFile"


# instance fields
.field private final PiB:Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;

.field private WcQ:Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;

.field private awB:Z

.field private eZI:Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/oJ;IZLcom/bytedance/sdk/openadsdk/component/so/oJ;Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/component/tB;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/oJ;IZLcom/bytedance/sdk/openadsdk/component/so/oJ;)V

    .line 2
    .line 3
    .line 4
    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->PiB:Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/component/ZYk;)Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->eZI:Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;

    return-object p0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/component/ZYk;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk()V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/ZYk;)Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->WcQ:Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/ZYk;Landroid/view/ViewGroup;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/ZYk;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->awB:Z

    return p1
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/component/ZYk;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ()V

    return-void
.end method


# virtual methods
.method public Pfn()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->WcQ:Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Ry()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public ZYk()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->WcQ:Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->RZ()V

    return-void
.end method

.method public ex()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->WcQ:Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;->getDynamicShowType()I

    move-result v0

    return v0
.end method

.method public oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->WcQ:Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public oJ()V
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->BTZ:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->WcQ:Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/oJ/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/component/so/oJ;Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;)Lcom/bytedance/sdk/openadsdk/core/so/jFA;

    move-result-object v0

    .line 20
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/ZYk$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/ZYk$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/ZYk;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk$oJ;)V

    .line 21
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->WcQ:Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/so/jFA;)V

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->BTZ:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->WcQ:Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/oJ/ZYk;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/component/so/oJ;Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;)Lcom/bytedance/sdk/openadsdk/core/so/so;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->WcQ:Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/so/so;)V

    .line 24
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/ZYk$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/ZYk$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/ZYk;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk$oJ;)V

    .line 25
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/tB;->ba()V

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->WcQ:Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/ZYk$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/ZYk$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/ZYk;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setBackupListener(Lcom/bytedance/sdk/component/adexpress/ZYk/tB;)V

    return-void
.end method

.method public oJ(IZ)V
    .locals 0

    .line 27
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ(IZ)V

    return-void
.end method

.method public oJ(JJ)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->WcQ:Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;->oJ(JJ)V

    :cond_0
    return-void
.end method

.method public oJ(Landroid/view/ViewGroup;)V
    .locals 8

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ:I

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/so/oJ/oJ;->oJ(Landroid/view/Window;I)Landroid/util/Pair;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v3

    .line 8
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/component/oJ;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->PiB:Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->BTZ:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    const-string v4, "open_ad"

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/oJ;Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;Lcom/bytedance/sdk/openadsdk/component/so/oJ;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->WcQ:Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/component/oJ;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;->setTopListener(Lcom/bytedance/sdk/openadsdk/component/ba/oJ;)V

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->WcQ:Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/component/oJ;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;->setExpressVideoListenerProxy(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;)V

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->WcQ:Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/ZYk$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/ZYk$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/ZYk;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->awB(I)V

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ex:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->WcQ:Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->eZI:Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->ex:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->eZI:Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;->getTopDislike()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->jFA:Landroid/view/View;

    .line 17
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->eZI:Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;->getTopSkip()Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->kkU:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->eZI:Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;->getTopCountDown()Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/tB;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    return-void
.end method

.method public tB()V
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/tB;->tB()V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk;->WcQ:Lcom/bytedance/sdk/openadsdk/component/jFA/ZYk;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ()V

    :cond_0
    return-void
.end method
