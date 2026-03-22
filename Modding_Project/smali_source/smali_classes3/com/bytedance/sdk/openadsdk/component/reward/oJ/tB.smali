.class public Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ZYk:Lcom/bytedance/sdk/openadsdk/common/awB;

.field private final oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

.field private tB:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/common/awB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/common/awB;

    return-object p0
.end method

.method private ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/common/awB;

    const v1, 0x1020002

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/common/awB;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/common/awB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/common/awB;

    .line 6
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/common/awB;->setCallback(Lcom/bytedance/sdk/openadsdk/common/awB$oJ;)V

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/common/awB;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->tB:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    if-nez p1, :cond_1

    .line 10
    new-instance p1, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->tB:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->tB:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    return-object p0
.end method

.method private tB()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->tB:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->getDislikeSendTip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->show(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->tB()V

    return-void
.end method


# virtual methods
.method public ZYk()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->tB:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->onDestroy()V

    :cond_0
    return-void
.end method

.method public oJ()V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->tB:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->hide()V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->BTZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->wd()Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->Id()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/common/awB;

    if-nez v0, :cond_2

    .line 5
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    const-string v0, "initDislike error"

    const-string v1, "RewardFullDislikeManager"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/common/awB;

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/common/awB;->oJ()V

    :cond_3
    return-void

    .line 9
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->tB:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    if-nez p1, :cond_5

    .line 10
    new-instance p1, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->tB:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->tB:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->tB:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->getDislikeTip()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->show(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->BTZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
