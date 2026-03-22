.class public Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;
.super Lcom/bytedance/sdk/openadsdk/oJ/ZYk/so;
.source "SourceFile"


# instance fields
.field private BTZ:Z

.field protected dLZ:Ljava/lang/String;

.field protected jFA:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field protected kkU:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

.field protected final so:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/so;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;IZ)V

    .line 4
    .line 5
    .line 6
    const-string p2, "embeded_ad"

    .line 7
    .line 8
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->dLZ:Ljava/lang/String;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->BTZ:Z

    .line 12
    .line 13
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/so;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 14
    .line 15
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->awB(I)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/so;->ex:Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;

    .line 19
    .line 20
    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->so:Landroid/content/Context;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->jFA:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->oJ()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->ZYk()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;)Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/so;->ex:Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;

    return-object p0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/so;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p0
.end method

.method private ZYk()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->kkU:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB$1;-><init>(Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setBackupListener(Lcom/bytedance/sdk/component/adexpress/ZYk/tB;)V

    :cond_0
    return-void
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;)Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/so;->ex:Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic cFZ(Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->BTZ:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;)Lcom/bytedance/sdk/openadsdk/core/eZI;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/so;->oJ:Lcom/bytedance/sdk/openadsdk/core/eZI;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;)Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/so;->ex:Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;

    return-object p0
.end method

.method private oJ(FF)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->kkU:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getDynamicShowType()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ex;->oJ(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->kkU:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p2, -0x1

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 8
    :cond_0
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->kkU:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->so:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result p1

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->so:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result p2

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->kkU:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_2

    .line 14
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 15
    :cond_2
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 16
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 17
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->kkU:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;FF)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->oJ(FF)V

    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;)Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/so;->ex:Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;

    return-object p0
.end method


# virtual methods
.method public Pfn()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->kkU:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->RZ()V

    :cond_0
    return-void
.end method

.method public ex()Lcom/bytedance/sdk/openadsdk/core/so/QSm;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->kkU:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    return-object v0
.end method

.method protected oJ()V
    .locals 5

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->so:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/so;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->jFA:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->dLZ:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->kkU:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->tB()V

    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->BTZ:Z

    return-void
.end method

.method protected tB()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->kkU:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB$2;-><init>(Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V

    :cond_0
    return-void
.end method
