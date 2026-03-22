.class Lcom/bytedance/sdk/openadsdk/activity/ba$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/top/ZYk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/ba;->Pfn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

.field final synthetic oJ:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/ba;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->oJ:Landroid/view/View;

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
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ba;->c_()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public ex(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    const/4 v0, 0x5

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->oJ()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->oJ(I)V

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->so()V

    return-void

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    const/4 v1, 0x4

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 8
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->eZI:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_1

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->LpP()V

    .line 10
    new-instance p1, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;-><init>()V

    .line 11
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->BTZ()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ZYk(J)V

    .line 12
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Xe()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex(J)V

    .line 13
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->eZI()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB(J)V

    const/4 v2, 0x3

    .line 14
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB(I)V

    .line 15
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->jr()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex(I)V

    .line 16
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ZYk()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->oJ(J)V

    .line 17
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Pfn()Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ba:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/HL;->tB(I)V

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    const-string v2, "skip"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Ljava/lang/String;Z)V

    .line 20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex(Z)V

    .line 21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tB:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 22
    invoke-virtual {p1, v2, v1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ(ZI)V

    goto :goto_0

    .line 23
    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->cdg()V

    .line 24
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    if-eqz v1, :cond_5

    .line 25
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 26
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->BTZ()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ba(J)V

    .line 27
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->BTZ()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->Pfn(J)V

    .line 28
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    return-void

    .line 29
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->oJ()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 30
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->oJ(I)V

    .line 31
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->cdg()V

    return-void
.end method

.method public oJ(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 32
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ba;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ba;->oJ(Ljava/lang/String;)V

    return-void
.end method

.method public tB(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$2;->oJ:Landroid/view/View;

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
