.class public Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk$oJ;
    }
.end annotation


# instance fields
.field private ZYk:Landroid/content/Context;

.field private ex:Lcom/bytedance/sdk/openadsdk/core/kkU/tB/oJ;

.field private oJ:Lcom/bytedance/sdk/openadsdk/core/kkU/tB/tB;

.field private tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;->ZYk:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public ZYk()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/core/kkU/tB/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/tB;->ex()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public oJ()V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/core/kkU/tB/tB;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/tB;->ZYk()V

    :cond_0
    return-void
.end method

.method public oJ(I)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/core/kkU/tB/tB;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;

    if-eqz v1, :cond_0

    .line 8
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->Pfn()Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ()Lcom/bytedance/sdk/openadsdk/BTZ/ZYk;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ()Lcom/bytedance/sdk/openadsdk/BTZ/ZYk;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/BTZ/ZYk;->oJ(I)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/kkU/tB/oJ;)V
    .locals 1

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;->ex:Lcom/bytedance/sdk/openadsdk/core/kkU/tB/oJ;

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/core/kkU/tB/tB;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/kkU/tB/oJ;)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/so/awB;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;->ZYk:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk$oJ;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/kkU/tB/tB;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/core/kkU/tB/tB;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/tB;->oJ()V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/core/kkU/tB/tB;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/awB;)V

    :cond_0
    return-void
.end method

.method public tB()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/core/kkU/tB/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/tB;->tB()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
