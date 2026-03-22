.class public abstract Lcom/bytedance/sdk/openadsdk/component/jFA/tB;
.super Lcom/bytedance/sdk/openadsdk/core/Pfn/cFZ;
.source "SourceFile"


# instance fields
.field BTZ:Lcom/bytedance/sdk/openadsdk/core/widget/tB;

.field Pfn:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

.field ZYk:Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

.field ba:Lcom/bytedance/sdk/openadsdk/core/widget/si;

.field cFZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

.field dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

.field ex:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

.field jFA:Lcom/bytedance/sdk/openadsdk/core/widget/si;

.field kkU:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

.field oJ:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

.field final so:Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;

.field tB:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/cFZ;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->so:Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract getAdIconView()Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;
.end method

.method public getAdLogo()Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->ex:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getAdTitleTextView()Lcom/bytedance/sdk/openadsdk/core/Pfn/so;
.end method

.method public getBackImage()Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->oJ:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClickButton()Lcom/bytedance/sdk/openadsdk/core/Pfn/so;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContent()Lcom/bytedance/sdk/openadsdk/core/Pfn/so;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDspAdChoice()Lcom/bytedance/sdk/openadsdk/core/widget/tB;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->BTZ:Lcom/bytedance/sdk/openadsdk/core/widget/tB;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHostAppIcon()Lcom/bytedance/sdk/openadsdk/core/widget/si;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->ba:Lcom/bytedance/sdk/openadsdk/core/widget/si;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHostAppName()Lcom/bytedance/sdk/openadsdk/core/Pfn/so;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->cFZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconOnlyView()Lcom/bytedance/sdk/openadsdk/core/widget/si;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->jFA:Lcom/bytedance/sdk/openadsdk/core/widget/si;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImageView()Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->tB:Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOverlayLayout()Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public abstract getScoreBar()Lcom/bytedance/sdk/openadsdk/core/widget/eZI;
.end method

.method public getTitle()Lcom/bytedance/sdk/openadsdk/core/Pfn/so;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->kkU:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTopCountDown()Lcom/bytedance/sdk/openadsdk/core/Pfn/so;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->so:Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;->getTopCountDown()Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getTopDisLike()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->so:Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;->getTopDislike()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getTopSkip()Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->so:Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;->getTopSkip()Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public abstract getUserInfo()Landroid/view/View;
.end method

.method public getVideoContainer()Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    .line 2
    .line 3
    return-object v0
.end method
