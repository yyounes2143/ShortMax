.class public Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;
.super Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;
.source "SourceFile"


# static fields
.field private static WcQ:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;


# instance fields
.field private PiB:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

.field private awB:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private HL()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->cFZ:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->cFZ:Z

    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "invoke callback onAdClose, "

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "BVA"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const-string v0, "onAdClose"

    .line 30
    .line 31
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->oJ(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->PiB:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;->ZYk()V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method private ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ba:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->RZ(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private ex(I)V
    .locals 2

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_skip_ad_time_text"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->tb()V

    return-void
.end method

.method private oJ(Ljava/lang/String;)V
    .locals 2

    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$2;

    const-string v1, "FullScreen_executeMultiProcessCallback"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->tB(Lcom/bytedance/sdk/component/so/so;I)V

    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 22
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

.method private tb()V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "invoke callback onAdClicked, "

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "BVA"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const-string v0, "onAdVideoBarClick"

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->oJ(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->PiB:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdWrapperListener;->onAdClicked()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method


# virtual methods
.method protected BTZ()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "onAdShow"

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->oJ(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->PiB:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;->oJ()V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->jr()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->BTZ()V

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void
.end method

.method protected Id()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->kkU()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;

    .line 12
    .line 13
    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 29
    .line 30
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$4;

    .line 31
    .line 32
    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/top/ZYk;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public RZ()V
    .locals 0

    .line 1
    return-void
.end method

.method protected Ry()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->Ry()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$1;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setJsbLandingPageOpenListener(Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public ZYk(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public ba()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->tb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Geh()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->nnj()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;J)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public cY()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public e_()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

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
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->awB:Z

    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->tb()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method protected ex()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tB:Z

    if-nez v2, :cond_0

    .line 2
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    const-string v2, "X"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->getSkipText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->Pfn(Z)V

    return-void
.end method

.method public f_()V
    .locals 0

    .line 1
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->WcQ:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    .line 6
    .line 7
    return-void
.end method

.method public finish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ba/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/ba/ZYk;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 12
    .line 13
    const-string v2, "videoForceBreak"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/ba/ZYk;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 21
    .line 22
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Dex:Z

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->oJ(Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->HL()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    :catch_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->finish()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public oJ(I)V
    .locals 0

    .line 1
    return-void
.end method

.method protected oJ(Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->oJ(Landroid/content/Intent;)V

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    const-string v1, "is_verity_playable"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Dex:Z

    return-void
.end method

.method public oJ(Landroid/os/Bundle;)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->tB()Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->PiB:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->PiB:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 10
    sget-object p1, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->WcQ:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->PiB:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    const/4 p1, 0x0

    .line 11
    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->WcQ:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    :cond_1
    return-void
.end method

.method public oJ(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    return-void
.end method

.method public oJ(JZ)Z
    .locals 7

    .line 12
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ex/cFZ;-><init>()V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/cFZ;->oJ(JF)V

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so;

    if-eqz v2, :cond_0

    .line 15
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    check-cast v1, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so;->Ln()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    .line 17
    :goto_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;)V

    .line 18
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;)V

    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->awB:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;)V

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(JZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    new-instance p1, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->oJ(D)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ba()D

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    const-wide/16 v4, 0x0

    .line 49
    .line 50
    cmpg-double v2, v2, v4

    .line 51
    .line 52
    if-gtz v2, :cond_1

    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->oJ(D)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->HL()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "recycleRes"

    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->oJ(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->PiB:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    .line 20
    .line 21
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->PiB:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    .line 9
    .line 10
    sput-object v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->WcQ:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    .line 11
    .line 12
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

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
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

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
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->awB:Z

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->awB:Z

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->finish()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

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
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->finish()V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    return-void
.end method

.method public tB(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->HUl()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 14
    .line 15
    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ba:I

    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Pfn(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 39
    .line 40
    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tB:Z

    .line 41
    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 46
    .line 47
    iget-boolean v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->sH:Z

    .line 48
    .line 49
    if-nez v3, :cond_1

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oJ(Z)V

    .line 52
    .line 53
    .line 54
    :cond_1
    if-gt p1, v0, :cond_2

    .line 55
    .line 56
    sub-int/2addr v0, p1

    .line 57
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->ex(I)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->Pfn(Z)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->ex()V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    :goto_0
    if-lt p1, v0, :cond_5

    .line 74
    .line 75
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 76
    .line 77
    iget-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->sH:Z

    .line 78
    .line 79
    if-nez v0, :cond_4

    .line 80
    .line 81
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oJ(Z)V

    .line 82
    .line 83
    .line 84
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->ex()V

    .line 85
    .line 86
    .line 87
    :cond_5
    :goto_1
    return-void
.end method
