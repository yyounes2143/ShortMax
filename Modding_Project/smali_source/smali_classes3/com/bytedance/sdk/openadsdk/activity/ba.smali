.class public Lcom/bytedance/sdk/openadsdk/activity/ba;
.super Lcom/bytedance/sdk/openadsdk/activity/oJ;
.source "SourceFile"


# instance fields
.field ba:I

.field private cFZ:Z

.field private so:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;IIZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/activity/oJ;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;IIZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private Pfn(I)V
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->HUl()I

    move-result v0

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ba:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Pfn(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 8
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tB:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->sH:Z

    if-nez v3, :cond_1

    .line 10
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oJ(Z)V

    :cond_1
    if-gt p1, v0, :cond_2

    sub-int/2addr v0, p1

    .line 11
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/ba;->ba(I)V

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->Pfn(Z)V

    return-void

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ba;->ZYk()V

    goto :goto_1

    :cond_3
    :goto_0
    if-lt p1, v0, :cond_5

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->sH:Z

    if-nez v0, :cond_4

    .line 15
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oJ(Z)V

    .line 16
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ba;->ZYk()V

    :cond_5
    :goto_1
    return-void
.end method

.method private ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ba:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->RZ(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private ba(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "tt_skip_ad_time_text"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/ba;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ba;->Pfn(I)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/ba;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ba;->so:Z

    return p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/ba;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba;->so:Z

    return p1
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->dzr()F

    move-result p1

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected Pfn()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->kkU()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/ba$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/ba$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ba;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/ba$2;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/ba$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ba;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/top/ZYk;)V

    return-void
.end method

.method public XAo()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->XAo()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ba;->so:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->ZYk(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Rl()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public ZYk()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tB:Z

    if-nez v2, :cond_0

    .line 2
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    const-string v2, "X"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->getSkipText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->Pfn(Z)V

    return-void
.end method

.method protected a_()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public b_()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "fullscreen_interstitial_ad"

    .line 2
    .line 3
    return-object v0
.end method

.method public c_()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->LpP:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public d_()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 4
    .line 5
    return v0
.end method

.method public e_()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->dzr()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/high16 v1, 0x42c80000    # 100.0f

    .line 10
    .line 11
    cmpl-float v0, v0, v1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ba;->cFZ:Z

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->Qu()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public ex()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ex()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/ba;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/ba;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ba;->cFZ:Z

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ba;->cFZ:Z

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->cdg()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->UN()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->cdg()V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    return-void
.end method

.method public f_()V
    .locals 0

    .line 1
    return-void
.end method

.method protected kkU()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->Jm()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->BTZ()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public oJ(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 7
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->setSoundMute(Z)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->ex()Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk$oJ;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->ex()Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk$oJ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk$oJ;->oJ(Z)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(ZLjava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Ry(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn(Z)V

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 16
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    if-eqz v1, :cond_3

    .line 18
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->BTZ()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->so(J)V

    return-void

    .line 19
    :cond_3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->BTZ()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->jFA(J)V

    :cond_4
    return-void
.end method

.method public oJ(JZ)Z
    .locals 9

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->ZYk(Z)V

    .line 21
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba;->so:Z

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getAdShowTime()Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ex/cFZ;-><init>()V

    .line 26
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v3, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mwH:Z

    if-nez v3, :cond_1

    .line 27
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    check-cast v1, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so;->Ln()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    goto :goto_1

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->ZYk()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    .line 29
    :goto_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->kkU()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "dynamic_show_type"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 34
    :catch_0
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 36
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/ba$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/ba$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ba;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;)V

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(JZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)Z

    move-result p1

    return p1

    .line 39
    :cond_3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ex/cFZ;-><init>()V

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/cFZ;->oJ(JF)V

    .line 41
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    if-eqz v1, :cond_4

    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so;

    if-eqz v2, :cond_4

    .line 42
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    check-cast v1, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so;->Ln()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    goto :goto_3

    .line 43
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    .line 44
    :goto_3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/ba$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ba;)V

    .line 45
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;)V

    .line 46
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->awB:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    if-eqz v1, :cond_5

    .line 47
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;)V

    .line 48
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(JZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)Z

    move-result p1

    return p1
.end method
