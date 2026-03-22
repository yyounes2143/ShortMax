.class Lcom/bytedance/sdk/openadsdk/component/reward/PiB$6;
.super Lcom/bykv/vk/openvk/oJ/oJ/oJ/Pfn/ZYk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/PiB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/component/reward/PiB$tB;Lcom/bytedance/sdk/openadsdk/component/reward/awB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/awB;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/component/reward/PiB$tB;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/component/reward/PiB;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/PiB;Lcom/bytedance/sdk/openadsdk/component/reward/PiB$tB;Lcom/bytedance/sdk/openadsdk/component/reward/awB;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$6;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/PiB;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$6;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/PiB$tB;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$6;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/awB;

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
    const-string p1, "RewardVideoLoadManager"

    const-string p2, "onVideoPreloadSuccess: "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$6;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/PiB$tB;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->si()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$6;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/PiB$tB;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$6;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/awB;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/awB;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/so;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$tB;->oJ(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;ILjava/lang/String;)V
    .locals 1

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$6;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/PiB$tB;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->si()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$6;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/PiB$tB;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$tB;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
