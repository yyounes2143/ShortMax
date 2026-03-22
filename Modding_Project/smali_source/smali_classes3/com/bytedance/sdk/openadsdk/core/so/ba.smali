.class public Lcom/bytedance/sdk/openadsdk/core/so/ba;
.super Lcom/bytedance/sdk/component/adexpress/dynamic/oJ/oJ;
.source "SourceFile"


# instance fields
.field private ZYk:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

.field private final ex:Ljava/lang/Runnable;

.field private final oJ:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

.field private final tB:Lcom/bytedance/sdk/component/so/so;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/Pfn/so;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;Lcom/bytedance/sdk/component/adexpress/dynamic/ba/oJ;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/component/adexpress/dynamic/oJ/oJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/Pfn/so;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;Lcom/bytedance/sdk/component/adexpress/dynamic/ba/oJ;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/so/ba$1;

    .line 5
    .line 6
    const-string p2, "dynamic_render_template"

    .line 7
    .line 8
    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/so/ba$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/ba;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/ba;->tB:Lcom/bytedance/sdk/component/so/so;

    .line 12
    .line 13
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/so/ba$2;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/so/ba$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/ba;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/ba;->ex:Ljava/lang/Runnable;

    .line 19
    .line 20
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/so/ba;->oJ:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 21
    .line 22
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/so/ba;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/ba;->ex:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/so/ba;)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/ba;->oJ:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/so/ba;Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/oJ/oJ;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;)V

    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/so/ba;)Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/ba;->ZYk:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public ZYk()V
    .locals 2

    .line 2
    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/oJ/oJ;->ZYk()V

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->tB()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/ba;->ex:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/ba;->ZYk:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/ba;->tB:Lcom/bytedance/sdk/component/so/so;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->ZYk(Lcom/bytedance/sdk/component/so/so;)V

    return-void
.end method
