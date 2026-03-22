.class Lcom/bytedance/sdk/openadsdk/QSm/so$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/QSm/so;->cdg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/QSm/so;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/QSm/so;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/QSm/so$6;->oJ:Lcom/bytedance/sdk/openadsdk/QSm/so;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/so$6;->oJ:Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/QSm/so;->ZYk(Lcom/bytedance/sdk/openadsdk/QSm/so;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/so$6;->oJ:Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(Lcom/bytedance/sdk/openadsdk/QSm/so;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/so$6;->oJ:Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->ZYk(Lcom/bytedance/sdk/openadsdk/QSm/so;Z)Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/so$6;->oJ:Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/QSm/so;->ex(Lcom/bytedance/sdk/openadsdk/QSm/so;)Landroid/os/Handler;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/QSm/so$6;->oJ:Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->Pfn(Lcom/bytedance/sdk/openadsdk/QSm/so;)Ljava/lang/Runnable;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/so$6;->oJ:Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    const-string v2, "JSSDKLoadTimeOut"

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method
