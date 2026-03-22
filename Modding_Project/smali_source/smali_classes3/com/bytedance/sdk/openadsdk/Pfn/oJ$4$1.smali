.class Lcom/bytedance/sdk/openadsdk/Pfn/oJ$4$1;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Pfn/oJ$4;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedRequest;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/ZYk;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/Pfn/oJ$4;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Pfn/oJ$4;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/oJ/Pfn/ZYk;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$4$1;->tB:Lcom/bytedance/sdk/openadsdk/Pfn/oJ$4;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$4$1;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/ZYk;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$4$1;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/so/so;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->WcQ()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->HL()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$4$1;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/ZYk;

    .line 18
    .line 19
    const/16 v1, -0x12

    .line 20
    .line 21
    const-string v2, "Blind mode does not allow requesting ads"

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/oJ/Pfn/ZYk;->onError(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$4$1;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/ZYk;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$4$1;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$4$1;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/ZYk;

    .line 41
    .line 42
    const/4 v1, -0x4

    .line 43
    const-string v2, "adslot is null"

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/oJ/Pfn/ZYk;->onError(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    const/4 v1, 0x7

    .line 50
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setDurationSlotType(I)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/PiB;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/PiB;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$4$1;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 62
    .line 63
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/cFZ;

    .line 64
    .line 65
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$4$1;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/ZYk;

    .line 66
    .line 67
    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/cFZ;-><init>(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/PiB;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    :catchall_0
    return-void
.end method
