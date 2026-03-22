.class Lcom/bytedance/sdk/openadsdk/activity/jFA$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/jFA$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/jFA;->oq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/activity/jFA;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/jFA;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/jFA;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/jFA;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->oJ(Lcom/bytedance/sdk/openadsdk/activity/jFA;)Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/jFA;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->oJ(Lcom/bytedance/sdk/openadsdk/activity/jFA;)Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->setSkipInvisiable()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public oJ()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/jFA;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->oJ(Lcom/bytedance/sdk/openadsdk/activity/jFA;)Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/jFA;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->oJ(Lcom/bytedance/sdk/openadsdk/activity/jFA;)Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->getCloseButton()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method
