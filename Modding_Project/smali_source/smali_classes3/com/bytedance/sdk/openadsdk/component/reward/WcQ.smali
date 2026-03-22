.class Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTClientBidding;


# instance fields
.field private final oJ:Lcom/bytedance/sdk/openadsdk/component/reward/ba;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/ba;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/ba;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/ba;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public ZYk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/ba;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->oJ()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/ba;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public oJ()Lcom/bytedance/sdk/openadsdk/component/reward/ba;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/ba;

    return-object v0
.end method

.method public oJ(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/ba;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->oJ(Z)V

    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/ba;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->win(Ljava/lang/Double;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
