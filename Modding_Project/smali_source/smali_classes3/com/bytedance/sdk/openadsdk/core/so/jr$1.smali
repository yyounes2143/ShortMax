.class Lcom/bytedance/sdk/openadsdk/core/so/jr$1;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/so/jr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/so/jr;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/so/jr;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/jr;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/jr;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/jr;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/jr;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->dLZ()Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->tB()Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/jr;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/jr;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->ZYk(Lcom/bytedance/sdk/openadsdk/core/so/jr;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ(Lorg/json/JSONObject;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/jr;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->tB(Lcom/bytedance/sdk/openadsdk/core/so/jr;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/jr;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->ex(Lcom/bytedance/sdk/openadsdk/core/so/jr;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->tB()Landroid/os/Handler;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/jr;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->Pfn(Lcom/bytedance/sdk/openadsdk/core/so/jr;)Ljava/lang/Runnable;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    return-void
.end method
