.class Lcom/bytedance/sdk/openadsdk/core/so/ba$1;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/so/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/so/ba;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/so/ba;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/ba$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/ba;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/so/so;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/ba$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/ba;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so/ba;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/ba;)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->tB()Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->tB()Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/ba$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/ba;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/so/ba;->ZYk(Lcom/bytedance/sdk/openadsdk/core/so/ba;)Ljava/lang/Runnable;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
