.class Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->oJ(ZILjava/lang/String;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pfn:Ljava/lang/String;

.field final synthetic ZYk:I

.field final synthetic ba:I

.field final synthetic cFZ:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

.field final synthetic ex:I

.field final synthetic oJ:Z

.field final synthetic tB:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;ZILjava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$8;->cFZ:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$8;->oJ:Z

    .line 4
    .line 5
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$8;->ZYk:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$8;->tB:Ljava/lang/String;

    .line 8
    .line 9
    iput p5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$8;->ex:I

    .line 10
    .line 11
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$8;->Pfn:Ljava/lang/String;

    .line 12
    .line 13
    iput p7, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$8;->ba:I

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$8;->cFZ:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->awB:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$8;->oJ:Z

    .line 8
    .line 9
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$8;->ZYk:I

    .line 10
    .line 11
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$8;->tB:Ljava/lang/String;

    .line 12
    .line 13
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$8;->ex:I

    .line 14
    .line 15
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$8;->Pfn:Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;->oJ(ZILjava/lang/String;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$8;->cFZ:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$8;->oJ:Z

    .line 27
    .line 28
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$8;->ba:I

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/dLZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;ZI)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
