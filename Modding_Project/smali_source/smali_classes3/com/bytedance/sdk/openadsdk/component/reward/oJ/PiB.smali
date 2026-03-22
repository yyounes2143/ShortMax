.class public Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Pfn:Z

.field ZYk:Lcom/bytedance/sdk/component/adexpress/dynamic/ex;

.field private ba:Z

.field private final ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

.field oJ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

.field private final tB:Landroid/app/Activity;


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
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->Pfn:Z

    .line 6
    .line 7
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB:Landroid/app/Activity;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public Pfn()V
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ba:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->setSkipInvisiable()V

    :cond_1
    return-void
.end method

.method public Pfn(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ba:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->setSkipEnable(Z)V

    :cond_1
    return-void
.end method

.method public ZYk()V
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ba:Z

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->showCountDownText()V

    :cond_1
    return-void
.end method

.method public ZYk(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->setSoundMute(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ZYk:Lcom/bytedance/sdk/component/adexpress/dynamic/ex;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex;->setSoundMute(Z)V

    :cond_1
    return-void
.end method

.method public ex()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->clickSkip()V

    :cond_0
    return-void
.end method

.method public ex(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ba:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->setShowSkip(Z)V

    :cond_1
    return-void
.end method

.method public oJ()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->Pfn:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->Pfn:Z

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bD:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    if-eqz v2, :cond_1

    .line 4
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ba:Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->yV:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    if-eqz v0, :cond_3

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Br()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Z)V

    return-void

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LTg()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Z)V

    :cond_3
    return-void
.end method

.method public oJ(I)V
    .locals 5

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->getITopLayout()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->getITopLayout()Landroid/view/View;

    move-result-object v0

    const v1, 0x1f000011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 31
    new-array v1, v1, [I

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 33
    aget v1, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr p1, v1

    .line 34
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB:Landroid/app/Activity;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB:Landroid/app/Activity;

    .line 36
    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v2, p1

    add-int/2addr v3, v2

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/adexpress/dynamic/ex;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ZYk:Lcom/bytedance/sdk/component/adexpress/dynamic/ex;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/component/reward/top/ZYk;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->setListener(Lcom/bytedance/sdk/openadsdk/component/reward/top/ZYk;)V

    :cond_0
    return-void
.end method

.method public oJ(Ljava/lang/CharSequence;)V
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ba:Z

    if-eqz v0, :cond_0

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->setSkipText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->clickSound(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public oJ(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ba:Z

    if-eqz v0, :cond_0

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    if-eqz v0, :cond_1

    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->setTime(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public oJ(Z)V
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ba:Z

    if-eqz v0, :cond_0

    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->setShowDislike(Z)V

    :cond_1
    return-void
.end method

.method public tB()V
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ba:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->showSkipButton()V

    :cond_1
    return-void
.end method

.method public tB(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ba:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->setShowSound(Z)V

    :cond_1
    return-void
.end method
