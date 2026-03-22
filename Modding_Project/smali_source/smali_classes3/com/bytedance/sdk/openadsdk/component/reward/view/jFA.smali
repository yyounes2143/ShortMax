.class public Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;
.super Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;
.source "SourceFile"


# instance fields
.field private final oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Rl:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v0, 0x23

    .line 15
    .line 16
    if-lt p1, v0, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private oJ(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 9
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public oJ(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V
    .locals 3

    .line 1
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oJ:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->so()Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->jFA()Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-direct {p0, v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;->oJ(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->kkU()Landroid/view/View;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;->oJ(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method
