.class Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ$3;
.super Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;->oJ(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Landroid/view/View;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ$3;->tB:Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ$3;->ZYk:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private oJ(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;->oJ:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn;->oJ(Ljava/lang/Integer;)Lcom/bytedance/sdk/openadsdk/jr/ZYk/ZYk;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v1, 0x8

    .line 14
    .line 15
    :goto_0
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/jr/ZYk/ZYk;I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ$3;->tB:Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Z)V

    .line 25
    .line 26
    .line 27
    :cond_2
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ$3;->tB:Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ex;->oJ(Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ$3;->ZYk:Landroid/view/View;

    .line 5
    .line 6
    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ$3;->oJ(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setVideoAdListener(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoAdListener;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoAdListener;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ$3;->tB:Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoAdListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
