.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ$1;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ$1;->oJ:Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ$1;->oJ:Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ$1;->oJ:Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk;->onServiceConnected()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
