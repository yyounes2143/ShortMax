.class Lcom/bytedance/sdk/openadsdk/core/so/PiB$2;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/so/PiB;->cFZ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/so/PiB;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/so/PiB;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/PiB$2;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/PiB;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/PiB$2;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/PiB;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so/PiB;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/PiB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/PiB$2;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/PiB;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/so/PiB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/so/PiB;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "dynamic_backup_render"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
