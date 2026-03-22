.class Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->oJ(JZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

.field oJ:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ex:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 4
    .line 5
    const/16 p2, 0x12c

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

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
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

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
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->QSm()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->RZ()V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    .line 51
    .line 52
    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 53
    .line 54
    iget-boolean p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tB:Z

    .line 55
    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    const/4 p2, 0x0

    .line 59
    const/4 p3, 0x3

    .line 60
    const/4 v0, 0x1

    .line 61
    invoke-virtual {p1, p2, v0, p3}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->oJ(ZZI)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->mu()Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    xor-int/2addr p2, v0

    .line 75
    const/4 p3, 0x2

    .line 76
    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(II)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->finish()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public oJ()V
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ex:Lcom/bytedance/sdk/component/utils/IUZ;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->oq()V

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tB:Z

    if-eqz v2, :cond_0

    .line 33
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->mu()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->mu()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(II)V

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    const/4 v1, 0x0

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->oJ(ZZI)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->finish()V

    .line 36
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->RZ()V

    return-void
.end method

.method public oJ(JI)V
    .locals 3

    .line 1
    iget-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->oJ:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 2
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->oJ:Z

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ex:Lcom/bytedance/sdk/component/utils/IUZ;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->oq()V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0, p1, p2, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(JJ)V

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->RZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    move-result p1

    const/16 p2, 0x24

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tB:Z

    if-eqz p2, :cond_1

    .line 8
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jr:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ex;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ex;->tB()Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/awB;->ZYk()V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TAr()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Rl(I)V

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->si()V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    move-result p1

    const/16 p2, 0x15

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->WcQ()Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ex(Z)V

    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->si()V

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->dLZ:Z

    if-eqz p2, :cond_4

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->dLZ()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tB:Z

    const-string v0, "skip"

    if-eqz p2, :cond_7

    .line 18
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qu()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB()V

    return-void

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    const/4 p2, 0x0

    const/4 v1, 0x5

    invoke-virtual {p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->oJ(ZI)V

    .line 21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jXJ:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    if-eqz p1, :cond_6

    const-wide/16 v1, 0x0

    .line 22
    invoke-interface {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->oJ(J)V

    .line 23
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 24
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p1, v0, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Ljava/lang/String;Z)V

    return-void

    .line 25
    :cond_7
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qu()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 26
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB()V

    return-void

    .line 27
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 28
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p1, v0, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Ljava/lang/String;Z)V

    .line 29
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->finish()V

    :cond_a
    return-void
.end method

.method public oJ(JJ)V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Yg:Z

    if-nez v1, :cond_0

    .line 38
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oq()V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ex:Lcom/bytedance/sdk/component/utils/IUZ;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->PiB()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->oq()V

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(JJ)V

    .line 45
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p4, p3, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p4, p4, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->XAo()D

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    long-to-double v2, p1

    sub-double/2addr v0, v2

    double-to-int p4, v0

    iput p4, p3, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ba:I

    long-to-int p1, p1

    .line 46
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->dLZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 47
    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 48
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oq()V

    .line 49
    :cond_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->tB(I)V

    .line 50
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$5;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget p2, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ba:I

    if-ltz p2, :cond_5

    .line 51
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method
