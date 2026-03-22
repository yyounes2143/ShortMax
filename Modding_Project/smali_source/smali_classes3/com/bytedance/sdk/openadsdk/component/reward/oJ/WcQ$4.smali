.class Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->WcQ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$4;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$4;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$4;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->Pfn(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->kkU()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public oJ()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "overlay"

    .line 2
    .line 3
    return-object v0
.end method
