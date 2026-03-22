.class Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->PiB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HL:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;

    .line 8
    .line 9
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->kkU:I

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->oJ(I)[F

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    .line 16
    .line 17
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 18
    .line 19
    invoke-virtual {v2, v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ([FLcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->Ry()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
