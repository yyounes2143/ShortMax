.class Lcom/bytedance/sdk/openadsdk/core/tB/ex$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/tB/ex;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/tB/ex;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jA()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdWrapperListener;->onAdClicked()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onAdDismissed()V
    .locals 0

    .line 1
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;->onRenderFail(Landroid/view/View;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->setSoundMute(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getDynamicShowType()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ex;->oJ(I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    .line 28
    .line 29
    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->oJ(FF)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/tB/ex;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Ry()V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ex$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    .line 48
    .line 49
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;->onRenderSuccess(Landroid/view/View;FF)V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void
.end method
