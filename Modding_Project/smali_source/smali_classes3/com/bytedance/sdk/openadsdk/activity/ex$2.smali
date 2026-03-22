.class Lcom/bytedance/sdk/openadsdk/activity/ex$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/ex;->Id()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/ex;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$2;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$2;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/ZYk;->oJ(Landroid/app/Activity;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$2;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/ex;->ba(Lcom/bytedance/sdk/openadsdk/activity/ex;)Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "tt_list_end_tip"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
