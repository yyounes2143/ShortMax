.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ZYk;
.super Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Stub;
.source "SourceFile"


# instance fields
.field private final ZYk:Ljava/lang/String;

.field private final oJ:Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ZYk;->ZYk:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ZYk;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ZYk;->ZYk:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ZYk;)Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public onItemClickClosed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ZYk$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ZYk$1;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ZYk;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
