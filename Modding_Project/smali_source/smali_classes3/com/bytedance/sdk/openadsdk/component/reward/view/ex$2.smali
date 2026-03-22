.class Lcom/bytedance/sdk/openadsdk/component/reward/view/ex$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/ZYk/tB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->PiB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex$2;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public oJ(Landroid/view/ViewGroup;I)Z
    .locals 2

    .line 1
    :try_start_0
    move-object p2, p1

    .line 2
    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->QSm()V

    .line 5
    .line 6
    .line 7
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex$2;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    .line 8
    .line 9
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/si;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/so/si;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->tB:Lcom/bytedance/sdk/openadsdk/core/so/si;

    .line 19
    .line 20
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex$2;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    .line 21
    .line 22
    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->tB:Lcom/bytedance/sdk/openadsdk/core/so/si;

    .line 23
    .line 24
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex$2;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 37
    .line 38
    invoke-virtual {v0, p2, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/so/si;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/so/QSm;Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    return p1

    .line 43
    :catch_0
    const/4 p1, 0x0

    .line 44
    return p1
.end method
