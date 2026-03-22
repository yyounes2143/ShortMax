.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex;
.super Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub;
.source "SourceFile"


# instance fields
.field private oJ:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex;->oJ()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex;)Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    return-object p0
.end method

.method private oJ()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex$3;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex$3;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onAdShow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex$1;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onAdVideoBarClick()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex$2;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex$2;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onDestroy()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onRewardVerify(ZILjava/lang/String;ILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex$4;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    move-object v2, p0

    .line 10
    move v3, p1

    .line 11
    move v4, p2

    .line 12
    move-object v5, p3

    .line 13
    move v6, p4

    .line 14
    move-object v7, p5

    .line 15
    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex$4;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex;ZILjava/lang/String;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
