.class public Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/oJ/ZYk;
.super Lcom/bytedance/adsdk/ZYk/ba;
.source "SourceFile"


# instance fields
.field private oJ:Lcom/bytedance/adsdk/ugeno/ex;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ZYk/ba;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public oJ(Lcom/bytedance/adsdk/ugeno/ex;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/oJ/ZYk;->oJ:Lcom/bytedance/adsdk/ugeno/ex;

    .line 2
    .line 3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/adsdk/ZYk/ba;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/oJ/ZYk;->oJ:Lcom/bytedance/adsdk/ugeno/ex;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/ex;->cFZ()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/adsdk/ZYk/ba;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/oJ/ZYk;->oJ:Lcom/bytedance/adsdk/ugeno/ex;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/ex;->so()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
