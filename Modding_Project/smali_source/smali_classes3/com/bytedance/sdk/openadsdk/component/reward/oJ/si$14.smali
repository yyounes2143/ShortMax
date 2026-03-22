.class Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V
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
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$14;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$14;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$14;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jr:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ex;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ex;->ZYk()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$14;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->ba()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
