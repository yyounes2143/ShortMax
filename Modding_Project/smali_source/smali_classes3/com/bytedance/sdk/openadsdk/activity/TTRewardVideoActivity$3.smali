.class Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$3;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->oJ(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pfn:I

.field final synthetic ZYk:Z

.field final synthetic ba:Ljava/lang/String;

.field final synthetic cFZ:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

.field final synthetic ex:Ljava/lang/String;

.field final synthetic oJ:Ljava/lang/String;

.field final synthetic tB:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$3;->cFZ:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$3;->oJ:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$3;->ZYk:Z

    .line 6
    .line 7
    iput p5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$3;->tB:I

    .line 8
    .line 9
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$3;->ex:Ljava/lang/String;

    .line 10
    .line 11
    iput p7, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$3;->Pfn:I

    .line 12
    .line 13
    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$3;->ba:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/so/so;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$3;->cFZ:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk(I)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$3;->cFZ:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 11
    .line 12
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->nQI:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$3;->oJ:Ljava/lang/String;

    .line 15
    .line 16
    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$3;->ZYk:Z

    .line 17
    .line 18
    iget v6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$3;->tB:I

    .line 19
    .line 20
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$3;->ex:Ljava/lang/String;

    .line 21
    .line 22
    iget v8, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$3;->Pfn:I

    .line 23
    .line 24
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$3;->ba:Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->executeRewardVideoCallback(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    const-string v1, "rewarded_video"

    .line 32
    .line 33
    const-string v2, "executeRewardVideoCallback execute throw Exception : "

    .line 34
    .line 35
    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "TTAD.RVA"

    .line 40
    .line 41
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
