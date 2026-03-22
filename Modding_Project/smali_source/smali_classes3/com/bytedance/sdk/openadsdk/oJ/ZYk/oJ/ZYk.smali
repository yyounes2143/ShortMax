.class public Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/ZYk;
.super Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public ZYk()Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->kkU:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/so/RZ;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->getVideoModel()Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method protected oJ()V
    .locals 7

    .line 1
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/so/RZ;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->so:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/so;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->jFA:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->dLZ:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->kkU:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/so;->oJ:Lcom/bytedance/sdk/openadsdk/core/eZI;

    .line 19
    .line 20
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->getVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/eZI;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ/tB;->tB()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
