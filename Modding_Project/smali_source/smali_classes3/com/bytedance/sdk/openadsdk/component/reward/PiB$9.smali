.class Lcom/bytedance/sdk/openadsdk/component/reward/PiB$9;
.super Lcom/bykv/vk/openvk/oJ/oJ/oJ/Pfn/ZYk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/PiB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/component/reward/awB;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/component/reward/PiB$tB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/PiB$tB;

.field final synthetic ZYk:Z

.field final synthetic ba:Lcom/bytedance/sdk/openadsdk/component/reward/PiB;

.field final synthetic ex:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/component/reward/awB;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/PiB;Lcom/bytedance/sdk/openadsdk/component/reward/awB;ZLcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/component/reward/PiB$tB;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$9;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/PiB;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$9;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/awB;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$9;->ZYk:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$9;->tB:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$9;->ex:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$9;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/PiB$tB;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/Pfn/ZYk;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$9;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/awB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/awB;->ZYk()V

    .line 2
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$9;->ZYk:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$9;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/PiB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/PiB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/PiB;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/BTZ;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/BTZ;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$9;->tB:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$9;->ex:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/BTZ;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$9;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/PiB$tB;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->si()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$9;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/PiB$tB;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$9;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/awB;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/awB;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/so;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$tB;->oJ(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)V

    :cond_1
    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;ILjava/lang/String;)V
    .locals 1

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$9;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/PiB$tB;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->si()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$9;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/PiB$tB;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$tB;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
