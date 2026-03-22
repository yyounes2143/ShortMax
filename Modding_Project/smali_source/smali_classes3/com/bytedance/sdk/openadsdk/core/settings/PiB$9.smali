.class Lcom/bytedance/sdk/openadsdk/core/settings/PiB$9;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/settings/PiB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final ZYk:Ljava/lang/Runnable;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/settings/PiB;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/PiB;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$9;->oJ:Lcom/bytedance/sdk/openadsdk/core/settings/PiB;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$9$1;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$9$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/PiB$9;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$9;->ZYk:Ljava/lang/Runnable;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/settings/PiB$9;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$9;->ZYk:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$9$2;

    .line 5
    .line 6
    const-string v0, "setting_receiver"

    .line 7
    .line 8
    invoke-direct {p1, p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$9$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/PiB$9;Ljava/lang/String;Landroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->ZYk(Lcom/bytedance/sdk/component/so/so;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
