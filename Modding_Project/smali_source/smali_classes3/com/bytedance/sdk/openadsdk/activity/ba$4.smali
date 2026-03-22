.class Lcom/bytedance/sdk/openadsdk/activity/ba$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/ba;->oJ(JZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/ba;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public ZYk(JI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 4
    .line 5
    const/16 p2, 0x12c

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->awB:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->kkU()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->so()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->RZ()V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    .line 51
    .line 52
    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 53
    .line 54
    const/4 p3, 0x3

    .line 55
    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk(I)Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public oJ()V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ:Lcom/bytedance/sdk/component/utils/IUZ;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->Ry()V

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk(I)Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    return-void
.end method

.method public oJ(JI)V
    .locals 3

    .line 1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/activity/ba;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ba;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/bytedance/sdk/openadsdk/activity/ba;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ba;Z)Z

    .line 3
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ:Lcom/bytedance/sdk/component/utils/IUZ;

    const/16 v1, 0x12c

    invoke-virtual {p3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->Ry()V

    .line 5
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p3, p1, p2, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(JJ)V

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->RZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TAr()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Rl(I)V

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->si()V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    move-result p1

    const/16 p2, 0x15

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->WcQ()Z

    move-result p1

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ex(Z)V

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->si()V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean p3, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    const/4 v1, 0x5

    if-eqz p3, :cond_3

    .line 14
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk(I)Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    move-result-object p1

    .line 15
    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;->Pfn:Z

    .line 16
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p3, p2, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {p3, p2, p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    return-void

    .line 17
    :cond_3
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->Pfn:Z

    if-eqz p1, :cond_4

    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->dLZ()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tB:Z

    const-string p3, "skip"

    if-eqz p2, :cond_7

    .line 19
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qu()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB()V

    return-void

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ(ZI)V

    .line 22
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jXJ:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    if-eqz p1, :cond_6

    const-wide/16 v1, 0x0

    .line 23
    invoke-interface {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->oJ(J)V

    .line 24
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 25
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p1, p3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Ljava/lang/String;Z)V

    return-void

    .line 26
    :cond_7
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qu()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB()V

    return-void

    .line 28
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p1, p3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Ljava/lang/String;Z)V

    .line 30
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->cdg()V

    :cond_a
    return-void
.end method

.method public oJ(JJ)V
    .locals 7

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Yg:Z

    if-nez v1, :cond_0

    .line 35
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ZYk(Z)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ:Lcom/bytedance/sdk/component/utils/IUZ;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->PiB()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->Ry()V

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(JJ)V

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->XAo()D

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v3, p1, v3

    long-to-double v5, v3

    sub-double/2addr v1, v5

    double-to-int v1, v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/activity/ba;->ba:I

    long-to-int v0, v3

    .line 43
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->dLZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 44
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 45
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oq()V

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/activity/ba;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ba;I)V

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    long-to-float p2, p3

    div-float/2addr p1, p2

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ(F)V

    .line 48
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ba$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ba;

    iget p2, p1, Lcom/bytedance/sdk/openadsdk/activity/ba;->ba:I

    if-ltz p2, :cond_5

    .line 49
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method
