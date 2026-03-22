.class Lcom/bytedance/sdk/openadsdk/activity/ex$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/top/ZYk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/ex;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/activity/ZYk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/activity/ex;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/ex;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/activity/ZYk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$13;->tB:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$13;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$13;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public ZYk(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$13;->tB:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/ex;)Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$13;->tB:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/ex;)Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->c_()V

    .line 16
    .line 17
    .line 18
    :cond_0
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
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$13;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ex()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "skip"

    invoke-static {v2, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/util/Map;)V

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$13;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ba(J)V

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->Pfn(J)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$13;->tB:Lcom/bytedance/sdk/openadsdk/activity/ex;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ex;)V

    return-void
.end method

.method public oJ(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$13;->tB:Lcom/bytedance/sdk/openadsdk/activity/ex;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/ex;)Lcom/bytedance/sdk/openadsdk/activity/so;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$13;->tB:Lcom/bytedance/sdk/openadsdk/activity/ex;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/ex;)Lcom/bytedance/sdk/openadsdk/activity/so;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$13;->tB:Lcom/bytedance/sdk/openadsdk/activity/ex;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->tB(Lcom/bytedance/sdk/openadsdk/activity/ex;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ex;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ex;Z)Z

    :cond_0
    return-void
.end method

.method public tB(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$13;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ex()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
