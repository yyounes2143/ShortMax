.class Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/top/ZYk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->Id()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

.field final synthetic oJ:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->oJ:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public ZYk(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->LpP:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public ex(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->oJ(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;ZZ)V

    return-void
.end method

.method public oJ(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->ex()Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk$oJ;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->ex()Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk$oJ;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk$oJ;->oJ(Z)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "will set is Mute "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mLastVolume="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->nke:Lcom/bytedance/sdk/openadsdk/BTZ/jFA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/BTZ/jFA;->oJ()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(ZLjava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Ry(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn(Z)V

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba(Z)V

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v0, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    if-eqz v0, :cond_2

    .line 14
    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->BTZ()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->so(J)V

    return-void

    .line 15
    :cond_2
    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->BTZ()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->jFA(J)V

    :cond_3
    return-void
.end method

.method public tB(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->oJ:Landroid/view/View;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
