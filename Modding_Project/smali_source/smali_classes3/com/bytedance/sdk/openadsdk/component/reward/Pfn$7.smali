.class Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$7;
.super Lcom/bykv/vk/openvk/oJ/oJ/oJ/Pfn/ZYk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$ZYk;Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$ZYk;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$ZYk;Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$7;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$7;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$ZYk;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$7;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/Pfn/ZYk;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$7;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$ZYk;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->si()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$7;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$ZYk;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$7;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/ba;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;ILjava/lang/String;)V
    .locals 1

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$7;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$ZYk;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->si()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$7;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$ZYk;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$ZYk;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
