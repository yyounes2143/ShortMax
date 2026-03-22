.class Lcom/bytedance/sdk/openadsdk/activity/ex$7;
.super Lcom/bytedance/sdk/openadsdk/activity/ex$ba;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/ex;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/activity/ex;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/activity/so;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/ex;JLcom/bytedance/sdk/openadsdk/activity/so;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$7;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$7;->oJ:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/ex$ba;-><init>(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method oJ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$7;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ex;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$7;->ZYk:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$7;->oJ:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ex;Lcom/bytedance/sdk/openadsdk/activity/so;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
