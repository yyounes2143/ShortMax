.class Lcom/bytedance/sdk/openadsdk/activity/ex$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/ex;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/activity/ZYk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:I

.field final synthetic oJ:Landroid/app/Activity;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/activity/ex;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/ex;Landroid/app/Activity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$16;->tB:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$16;->oJ:Landroid/app/Activity;

    .line 4
    .line 5
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$16;->ZYk:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$16;->oJ:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/ZYk;->oJ(Landroid/app/Activity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$16;->tB:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 11
    .line 12
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$16;->ZYk:I

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/ex;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ex;IZ)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
