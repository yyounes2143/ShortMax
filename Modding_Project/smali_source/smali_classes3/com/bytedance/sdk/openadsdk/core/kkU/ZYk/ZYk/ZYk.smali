.class public Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/ZYk/ZYk;
.super Lcom/bytedance/adsdk/ugeno/ZYk/oJ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/ugeno/ZYk/oJ<",
        "Lcom/bytedance/adsdk/ugeno/jFA/ZYk/oJ;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public ex()Lcom/bytedance/adsdk/ugeno/jFA/ZYk/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/ZYk/oJ;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/ZYk/oJ;->getPlayableView()Lcom/bytedance/adsdk/ugeno/jFA/ZYk/oJ;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public synthetic oJ()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/ZYk/ZYk;->tB()Lcom/bytedance/adsdk/ugeno/jFA/ZYk/oJ;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public tB()Lcom/bytedance/adsdk/ugeno/jFA/ZYk/oJ;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/ZYk/oJ;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ZYk:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/ZYk/oJ;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/jFA/ZYk/oJ;->oJ(Lcom/bytedance/adsdk/ugeno/ex;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
