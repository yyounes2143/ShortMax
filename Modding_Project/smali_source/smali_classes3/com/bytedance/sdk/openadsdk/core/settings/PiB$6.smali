.class Lcom/bytedance/sdk/openadsdk/core/settings/PiB$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ZYk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/settings/PiB;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/PiB;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$6;->oJ:Lcom/bytedance/sdk/openadsdk/core/settings/PiB;

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
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/dLZ;->oJ()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$6;->oJ:Lcom/bytedance/sdk/openadsdk/core/settings/PiB;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ex(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$6;->oJ:Lcom/bytedance/sdk/openadsdk/core/settings/PiB;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->sQ()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;->ZYk()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
