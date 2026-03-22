.class Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$1;
.super Lcom/bytedance/sdk/openadsdk/core/oq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ZYk(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field oJ:Z

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$1;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$1;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/oq;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$1;->oJ:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public oJ()Ljava/lang/String;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$1;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/ex;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$1;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public oJ(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V
    .locals 6

    .line 4
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$1;->oJ:Z

    if-eqz p2, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 6
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$1;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {v2, p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$1;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$1;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/component/reward/WcQ;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V

    :cond_1
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$1;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/ex;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$1;->oJ:Z

    return p1
.end method
