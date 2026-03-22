.class Lcom/bytedance/sdk/openadsdk/Pfn/oJ$5$1;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Pfn/oJ$5;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialRequest;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/oJ/tB/oJ;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/Pfn/oJ$5;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Pfn/oJ$5;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/oJ/tB/oJ;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$5$1;->tB:Lcom/bytedance/sdk/openadsdk/Pfn/oJ$5;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$5$1;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/tB/oJ;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$5$1;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$5$1;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/tB/oJ;

    .line 18
    .line 19
    const/16 v1, -0x12

    .line 20
    .line 21
    const-string v2, "Blind mode does not allow requesting ads"

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/oJ/tB/oJ;->onError(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$5$1;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/tB/oJ;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$5$1;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$5$1;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/tB/oJ;

    .line 41
    .line 42
    const/4 v1, -0x4

    .line 43
    const-string v2, "adslot is null"

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/oJ/tB/oJ;->onError(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    const/16 v1, 0x8

    .line 50
    .line 51
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setDurationSlotType(I)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$5$1;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 63
    .line 64
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/tB/ZYk;

    .line 65
    .line 66
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$5$1;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/tB/oJ;

    .line 67
    .line 68
    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/component/tB/ZYk;-><init>(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    :catchall_0
    return-void
.end method
