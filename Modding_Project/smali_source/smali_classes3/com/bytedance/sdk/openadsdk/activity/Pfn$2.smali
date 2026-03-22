.class Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/top/ZYk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/Pfn;->mwH()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

.field final synthetic oJ:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/Pfn;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->oJ:Landroid/view/View;

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
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->c_()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public ex(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string p1, "TTAD.EndCardScene"

    .line 2
    .line 3
    const-string v0, "onPlayableChangeNext: click"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/Pfn;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public oJ(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/activity/Pfn;ZZLjava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/activity/Pfn;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->kkU(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->si()V

    return-void

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->oJ:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->cdg()V

    return-void

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->oJ()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->oJ(I)V

    return-void

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->so()V

    return-void

    .line 13
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 14
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->eZI:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    .line 15
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->cdg()V

    return-void

    .line 16
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->oJ()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 17
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->oJ(I)V

    .line 18
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->cdg()V

    return-void
.end method

.method public oJ(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oJ(Ljava/lang/String;)V

    return-void
.end method

.method public tB(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;->oJ:Landroid/view/View;

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
