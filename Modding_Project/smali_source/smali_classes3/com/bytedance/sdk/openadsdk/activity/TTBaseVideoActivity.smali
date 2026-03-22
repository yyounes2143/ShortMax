.class public abstract Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;
.super Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/IUZ$oJ;
.implements Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$oJ;
    }
.end annotation


# instance fields
.field protected BTZ:Lcom/bytedance/sdk/openadsdk/BTZ/ba;

.field protected Pfn:Lcom/bytedance/sdk/openadsdk/IListenerManager;

.field private PiB:Z

.field private WcQ:I

.field ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

.field private final awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk;

.field ba:I

.field cFZ:Z

.field protected dLZ:Z

.field private final eZI:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final ex:Lcom/bytedance/sdk/component/utils/IUZ;

.field protected jFA:Lcom/bytedance/sdk/openadsdk/utils/Jc;

.field kkU:I

.field public final oJ:Ljava/lang/String;

.field protected tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->cY()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "rewarded_video"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "fullscreen_interstitial_ad"

    .line 14
    .line 15
    :goto_0
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->oJ:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Lcom/bytedance/sdk/component/utils/IUZ;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/component/utils/IUZ;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/IUZ$oJ;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ex:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->PiB:Z

    .line 30
    .line 31
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->WcQ:I

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->kkU:I

    .line 35
    .line 36
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk;

    .line 37
    .line 38
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk;

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->dLZ:Z

    .line 44
    .line 45
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->eZI:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$1;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->BTZ:Lcom/bytedance/sdk/openadsdk/BTZ/ba;

    .line 58
    .line 59
    return-void
.end method

.method private HL()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->cY()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private Ln()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 12
    .line 13
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cFZ:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return v0

    .line 19
    :cond_0
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x1

    .line 29
    return v0

    .line 30
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    return v0
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/os/Bundle;)V
    .locals 7

    .line 5
    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ex:Lcom/bytedance/sdk/component/utils/IUZ;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/component/utils/IUZ;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;I)V

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v6, v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->oJ(Landroid/content/Intent;)V

    .line 9
    const-string v1, "start_show_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(J)V

    :cond_0
    if-eqz p2, :cond_1

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->sH:Z

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ex()V

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 14
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iput-object p1, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UK:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 15
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/awB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method private tb()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->BTZ:Lcom/bytedance/sdk/openadsdk/BTZ/ba;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/BTZ/ba;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->XAo()D

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    double-to-int v0, v0

    .line 17
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ba:I

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->Id()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->Pfn()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    const-wide/16 v1, 0x0

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(J)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract BTZ()V
.end method

.method public IUZ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BnM()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method protected abstract Id()V
.end method

.method protected Pfn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    sget v1, Lcom/bytedance/sdk/openadsdk/ex/ZYk$ZYk;->tB:I

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->oJ(ZI)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba()Landroid/widget/FrameLayout;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oJ(Landroid/widget/FrameLayout;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->tb()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method protected PiB()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->jr()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->PiB:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->PiB:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method protected QSm()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x190

    .line 7
    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->cY()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/16 v1, 0x2710

    .line 17
    .line 18
    invoke-interface {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->oJ(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ex:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 22
    .line 23
    const-wide/16 v2, 0x7d0

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method protected Ry()V
    .locals 0

    .line 1
    return-void
.end method

.method public WcQ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ofl()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected Xe()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zxE()Lcom/bytedance/sdk/openadsdk/core/model/LpP;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/LpP;->ZYk()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/LpP;->ZYk()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x2

    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/Jc;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 32
    .line 33
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 34
    .line 35
    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/Jc;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->jFA:Lcom/bytedance/sdk/openadsdk/utils/Jc;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method protected ZYk(I)Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->Pfn:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;->oJ(I)Landroid/os/IBinder;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->Pfn:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->Pfn:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    return-object p1
.end method

.method protected ZYk()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->HL()V

    return-void
.end method

.method public awB()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->wd()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public cFZ()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract cY()Z
.end method

.method public dLZ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->PiB()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public eZI()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->WcQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method protected abstract ex()V
.end method

.method public ex(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public finish()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

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
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/IUZ;->Pfn()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/app/Activity;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const-string v1, "playable"

    .line 27
    .line 28
    const-string v2, "invalid finish"

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 64
    .line 65
    sget v3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ZYk:I

    .line 66
    .line 67
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->so(I)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    return-void
.end method

.method public final jFA()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->eZI:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "invoke callback onShow, "

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "BVA"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->BTZ()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public jr()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public mu()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->dLZ:Z

    .line 3
    .line 4
    return-void
.end method

.method protected oJ(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public oJ(Landroid/os/Bundle;)V
    .locals 0

    .line 2
    return-void
.end method

.method public oJ(Landroid/os/Message;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oJ(Landroid/os/Message;)V

    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 3
    return-void
.end method

.method public oJ(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->oJ(ZZI)V

    return-void
.end method

.method public oJ(ZZI)V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oJ(ZZZI)V

    return-void
.end method

.method protected oJ()Z
    .locals 1

    .line 4
    const/4 v0, 0x1

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

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
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HL:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->oJ()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->HL()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "onCreate "

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "BVA"

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/si;->ZYk(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->Pfn()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->finish()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0, p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ZYk;->oJ(Landroid/content/Intent;Landroid/os/Bundle;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->finish()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Tt()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->kkU:I

    .line 58
    .line 59
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/os/Bundle;)V

    .line 60
    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Jc()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    const/4 v1, 0x1

    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->eZI:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ofl()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->PiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 89
    .line 90
    .line 91
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 92
    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->cFZ()V

    .line 98
    .line 99
    .line 100
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    .line 103
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tb()V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :catchall_0
    move-exception p1

    .line 108
    const-string v0, "TTAD.BVA"

    .line 109
    .line 110
    const-string v1, "onCreate: "

    .line 111
    .line 112
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/awB/tB;->ZYk()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->finish()V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method protected onDestroy()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "onDestroy "

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "BVA"

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 20
    .line 21
    if-eqz v0, :cond_4

    .line 22
    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_0
    iget-wide v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oIC:J

    .line 30
    .line 31
    const-wide/16 v3, 0x0

    .line 32
    .line 33
    cmp-long v1, v1, v3

    .line 34
    .line 35
    if-lez v1, :cond_1

    .line 36
    .line 37
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->PiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 50
    .line 51
    iget-wide v5, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oIC:J

    .line 52
    .line 53
    sub-long/2addr v0, v5

    .line 54
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 59
    .line 60
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 61
    .line 62
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->oJ:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Pfn()Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v2, v5, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 74
    .line 75
    iput-wide v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oIC:J

    .line 76
    .line 77
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->LpP:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->ZYk()V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ex:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->Id()V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 110
    .line 111
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BHY()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 118
    .line 119
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->nke()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_2

    .line 126
    .line 127
    if-eqz v0, :cond_2

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_2

    .line 138
    .line 139
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 140
    .line 141
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cMS()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-nez v2, :cond_2

    .line 148
    .line 149
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ZYk()Landroid/os/Handler;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    new-instance v3, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$oJ;

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->cY()Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    invoke-direct {v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$oJ;-><init>(ZLcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    .line 164
    .line 165
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/awB;->oJ()V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->jFA:Lcom/bytedance/sdk/openadsdk/utils/Jc;

    .line 169
    .line 170
    if-eqz v0, :cond_3

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/Jc;->Pfn()V

    .line 173
    .line 174
    .line 175
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->jFA:Lcom/bytedance/sdk/openadsdk/utils/Jc;

    .line 176
    .line 177
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk;

    .line 178
    .line 179
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk;->oJ(Landroid/app/Activity;)V

    .line 180
    .line 181
    .line 182
    :cond_4
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "onPause "

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "BVA"

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->QSm()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->so:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->bj()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->finish()V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->bj()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->dLZ(Z)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "onResume "

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "BVA"

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 20
    .line 21
    if-eqz v0, :cond_5

    .line 22
    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->si()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Yg:Z

    .line 36
    .line 37
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk;

    .line 38
    .line 39
    iget v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oTd:I

    .line 40
    .line 41
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->LS:F

    .line 42
    .line 43
    invoke-virtual {v2, p0, v3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk;->oJ(Landroid/app/Activity;IF)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->Ln()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 53
    .line 54
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LTg()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Z)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->awB()V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Id()V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->PiB()V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->ZYk()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 97
    .line 98
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 104
    .line 105
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 106
    .line 107
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->WcQ:I

    .line 108
    .line 109
    const/4 v3, 0x0

    .line 110
    if-eqz v2, :cond_2

    .line 111
    .line 112
    move v2, v1

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    move v2, v3

    .line 115
    :goto_0
    invoke-virtual {v0, v3, p0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(ZLcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;Z)V

    .line 116
    .line 117
    .line 118
    :cond_3
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->WcQ:I

    .line 119
    .line 120
    add-int/2addr v0, v1

    .line 121
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->WcQ:I

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->PiB()V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 127
    .line 128
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    .line 129
    .line 130
    if-eqz v0, :cond_4

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->cFZ()V

    .line 133
    .line 134
    .line 135
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 136
    .line 137
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HL:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;

    .line 138
    .line 139
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ex:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->oJ(Lcom/bytedance/sdk/component/utils/IUZ;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->RZ()V

    .line 147
    .line 148
    .line 149
    :cond_5
    :goto_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->PiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cFZ(Z)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->eZI:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->nke()V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 41
    .line 42
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;Landroid/os/Bundle;)V

    .line 43
    .line 44
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "onStart "

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "BVA"

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Jc()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 32
    .line 33
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ex;->oJ(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "onStop "

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "BVA"

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oq()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->ZYk(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->tB(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method protected oq()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ex:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    const/16 v1, 0x190

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public si()V
    .locals 0

    .line 1
    return-void
.end method

.method protected tB()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ex:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 20
    .line 21
    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;Lcom/bytedance/sdk/component/utils/IUZ;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->dLZ()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
