.class Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;

.field final synthetic oJ:Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ$1;->ZYk:Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ$1;->oJ:Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public oJ(ILjava/lang/String;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ$1;->ZYk:Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ$1;->oJ:Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;ILjava/lang/String;)V

    return-void
.end method

.method public oJ(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ$1;->ZYk:Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;)V

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ$1;->oJ:Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;->tB()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcom/bytedance/adsdk/ugeno/core/si;

    invoke-direct {p1}, Lcom/bytedance/adsdk/ugeno/core/si;-><init>()V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/core/si;->oJ(I)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ$1;->ZYk:Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->ZYk(Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;->Jc()Lcom/bytedance/adsdk/ugeno/core/Ry;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/ugeno/core/Ry;->oJ(Lcom/bytedance/adsdk/ugeno/core/si;)V

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ$1;->ZYk:Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->ZYk(Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->Pfn()Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;->kkU()V

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ$1;->oJ:Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;->ZYk()Lcom/bytedance/sdk/component/adexpress/ZYk/awB;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ$1;->ZYk:Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->tB(Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;)Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/component/adexpress/ZYk/awB;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/ex;Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ$1;->oJ:Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;->oJ(Z)V

    return-void
.end method
