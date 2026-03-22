.class Lcom/bytedance/sdk/openadsdk/component/reward/PiB$ZYk$1;
.super Lcom/bykv/vk/openvk/oJ/oJ/oJ/Pfn/ZYk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/PiB$ZYk;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/component/reward/PiB$ZYk;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/PiB$ZYk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$ZYk$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/PiB$ZYk;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/Pfn/ZYk;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;I)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/BTZ;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/BTZ;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$ZYk$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/PiB$ZYk;

    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$ZYk;->tB:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/BTZ;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
