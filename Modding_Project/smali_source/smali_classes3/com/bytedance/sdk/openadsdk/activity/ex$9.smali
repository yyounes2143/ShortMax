.class Lcom/bytedance/sdk/openadsdk/activity/ex$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/ex;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/ex;->IUZ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/ex;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$9;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public oJ(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$9;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ex;->ex(Lcom/bytedance/sdk/openadsdk/activity/ex;Z)Z

    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ugeno/ZYk/tB<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->dLZ()Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$9;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ex;Landroid/view/View;)Landroid/view/View;

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$9;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->oq(Lcom/bytedance/sdk/openadsdk/activity/ex;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$9;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->oq(Lcom/bytedance/sdk/openadsdk/activity/ex;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
