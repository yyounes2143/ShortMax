.class Lcom/bytedance/sdk/openadsdk/activity/cFZ$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/top/ZYk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/cFZ;->Pfn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

.field final synthetic oJ:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/cFZ;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$2;->oJ:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public ZYk(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->c_()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public ex(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/activity/cFZ;ZZLjava/lang/Runnable;)Z

    return-void
.end method

.method public oJ(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->oJ(Ljava/lang/String;)V

    return-void
.end method

.method public tB(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$2;->oJ:Landroid/view/View;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
