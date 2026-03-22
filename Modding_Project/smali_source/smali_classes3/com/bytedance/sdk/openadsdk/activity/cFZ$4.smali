.class Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/cFZ;->oJ(JZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/cFZ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

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
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

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
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

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
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

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
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->so()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

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
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    .line 51
    .line 52
    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 53
    .line 54
    iget-boolean p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    .line 55
    .line 56
    if-nez p2, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->nQI()V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    .line 62
    .line 63
    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 64
    .line 65
    const/4 p3, 0x3

    .line 66
    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk(I)Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public oJ()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ:Lcom/bytedance/sdk/component/utils/IUZ;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->Ry()V

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    if-nez v1, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->nQI()V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

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
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/activity/cFZ;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/activity/cFZ;Z)Z

    .line 3
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ:Lcom/bytedance/sdk/component/utils/IUZ;

    const/16 v1, 0x12c

    invoke-virtual {p3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->Ry()V

    .line 5
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object v1, p3, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/activity/so;->nQI()V

    .line 7
    :cond_1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p3, p1, p2, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(JJ)V

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->RZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TAr()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Rl(I)V

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->si()V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    move-result p1

    const/16 p2, 0x15

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->WcQ()Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ex(Z)V

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->si()V

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 v1, 0x3e8

    div-long/2addr p2, v1

    long-to-int p2, p2

    iput p2, p1, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->ba:I

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean p3, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    const/4 v1, 0x5

    if-eqz p3, :cond_4

    .line 17
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk(I)Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    move-result-object p1

    .line 18
    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;->Pfn:Z

    .line 19
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p3, p2, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {p3, p2, p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    return-void

    .line 20
    :cond_4
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->Pfn:Z

    if-eqz p1, :cond_5

    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->dLZ()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto/16 :goto_0

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->eZI:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_7

    .line 23
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oJ(Z)V

    .line 24
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->Pfn(Z)V

    return-void

    .line 25
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean p3, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tB:Z

    const-string v2, "skip"

    if-eqz p3, :cond_9

    .line 26
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qu()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB()V

    return-void

    .line 28
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    invoke-virtual {p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ(ZI)V

    .line 29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 30
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p1, v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Ljava/lang/String;Z)V

    return-void

    .line 31
    :cond_9
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qu()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 32
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB()V

    return-void

    .line 33
    :cond_a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 34
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p1, v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Ljava/lang/String;Z)V

    .line 35
    :cond_b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->cdg()V

    :cond_c
    return-void

    .line 36
    :cond_d
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    invoke-virtual {p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ(ZI)V

    .line 37
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jXJ:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    if-eqz p1, :cond_e

    const-wide/16 p2, 0x0

    .line 38
    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->oJ(J)V

    :cond_e
    return-void
.end method

.method public oJ(JJ)V
    .locals 11

    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Yg:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 45
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ZYk(Z)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ:Lcom/bytedance/sdk/component/utils/IUZ;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->PiB()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->Ry()V

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(JJ)V

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->XAo()D

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v5, p1, v5

    long-to-double v7, v5

    sub-double/2addr v3, v7

    double-to-int v1, v3

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->so:I

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget v1, v0, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->so:I

    const/4 v3, 0x0

    if-ltz v1, :cond_3

    .line 54
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->XAo()D

    move-result-wide v9

    sub-double/2addr v9, v7

    double-to-int v1, v9

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->so:I

    long-to-int v0, v5

    .line 56
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->xwf()I

    move-result v1

    if-ltz v1, :cond_4

    move v4, v2

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .line 57
    :goto_0
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->dLZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 58
    :cond_5
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 59
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oq()V

    .line 60
    :cond_6
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->Pfn(I)V

    .line 61
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    invoke-virtual {v5, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->oJ(JJ)V

    .line 62
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    long-to-float p2, p3

    div-float/2addr p1, p2

    invoke-virtual {v5, p1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ(F)V

    .line 63
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget p2, p1, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->so:I

    if-lez p2, :cond_8

    .line 64
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex(Z)V

    if-eqz v4, :cond_7

    if-lt v0, v1, :cond_7

    .line 65
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oJ(Z)V

    .line 66
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->so:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->getSkipText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 67
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->Pfn(Z)V

    return-void

    .line 68
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->so:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method
