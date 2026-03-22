.class public Lcom/bytedance/sdk/openadsdk/core/tB/ex;
.super Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;
.source "SourceFile"


# instance fields
.field protected Pfn:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

.field protected ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

.field protected ba:Ljava/lang/String;

.field protected cFZ:Z

.field protected ex:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private jFA:Z

.field protected final oJ:Landroid/content/Context;

.field private so:I

.field protected tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Z)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "banner_ad"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ba:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->cFZ:Z

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->so:I

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->jFA:Z

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oIC()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x2

    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->awB(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->cFZ:Z

    .line 30
    .line 31
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->oJ:Landroid/content/Context;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 34
    .line 35
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ex:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->tB()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ex:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ex:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedHeight()F

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->oJ(FF)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/tB/ex;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->jFA:Z

    return p0
.end method


# virtual methods
.method public Pfn()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->RZ()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public ex()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getClosedListenerKey()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ba(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ()V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 30
    .line 31
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/jFA;->oq()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public getCurView()Lcom/bytedance/sdk/openadsdk/core/so/QSm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 2
    .line 3
    return-object v0
.end method

.method protected oJ(Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;)Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->cFZ:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->so:I

    if-ltz v0, :cond_0

    .line 3
    iput v0, p1, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;->ZYk:I

    :cond_0
    return-object p1
.end method

.method protected oJ(FF)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->oJ:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->oJ:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result p2

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 8
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->tB()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 12
    .line 13
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ex;->oJ(Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->so:I

    .line 2
    .line 3
    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/tB/ex$2;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/tB/ex$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/ex;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setJsbLandingPageOpenListener(Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 16
    .line 17
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/tB/ex$3;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/tB/ex$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/ex;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public setIsShow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->jFA:Z

    .line 2
    .line 3
    return-void
.end method

.method protected tB()V
    .locals 7

    .line 1
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/tB/ex$1;

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
    move-object v0, v6

    .line 12
    move-object v1, p0

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/tB/ex$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/ex;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 17
    .line 18
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
