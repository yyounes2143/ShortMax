.class Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$11;
.super Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ex;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$ex;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$ex;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/ex/BTZ;Lcom/bytedance/sdk/openadsdk/common/ex;Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$ex;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$11;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 2
    .line 3
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$11;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$ex;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ex;-><init>(Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/ex/BTZ;Lcom/bytedance/sdk/openadsdk/common/ex;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ex;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$11;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$ex;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$ex;->oJ(Landroid/webkit/WebView;I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
