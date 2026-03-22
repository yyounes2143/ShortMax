.class Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so;->ex()Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk$oJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public oJ(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so;)Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/so;)Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/tB;->setIsMute(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
