.class Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$2;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->oJ(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

.field final synthetic oJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$2;->oJ:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/so/so;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk(I)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$2;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->nQI:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$2;->oJ:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->executeFullVideoCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    const-string v1, "fullscreen_interstitial_ad"

    .line 22
    .line 23
    const-string v2, "executeFullVideoCallback execute throw Exception : "

    .line 24
    .line 25
    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "TTAD.FSVA"

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
