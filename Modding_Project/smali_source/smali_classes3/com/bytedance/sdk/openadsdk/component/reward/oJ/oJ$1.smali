.class Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/jFA$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/component/utils/IUZ;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public ZYk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->Pfn()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public oJ()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->kkU()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method
