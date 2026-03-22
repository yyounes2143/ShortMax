.class Lcom/bytedance/sdk/openadsdk/component/jFA/Pfn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/so/Pfn$ZYk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/jFA/Pfn;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/component/jFA/Pfn;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/jFA/Pfn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/jFA/Pfn$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/jFA/Pfn;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public ZYk()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/jFA/Pfn$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/jFA/Pfn;

    .line 2
    .line 3
    return-object v0
.end method

.method public k_()V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ()Landroid/view/View;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/jFA/Pfn$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/jFA/Pfn;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/jFA/tB;->so:Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/jFA/cFZ;->getTopDislike()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public oJ(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(Landroid/view/View;I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/jFA/Pfn$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/jFA/Pfn;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/jFA/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/component/jFA/Pfn$oJ;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/jFA/Pfn$oJ;->oJ(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
