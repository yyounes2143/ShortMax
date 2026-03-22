.class Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/BTZ/ba;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$16;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$16;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public oJ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$16;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ba(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$16;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ba(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;->tB()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$16;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->ba()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method
