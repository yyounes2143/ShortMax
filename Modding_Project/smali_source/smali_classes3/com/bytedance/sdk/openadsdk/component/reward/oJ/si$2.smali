.class Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/BTZ/tB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/BTZ/ba;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$2;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public oJ()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$2;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->tB(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Z)Z

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$2;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->kkU()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public oJ(ZILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
