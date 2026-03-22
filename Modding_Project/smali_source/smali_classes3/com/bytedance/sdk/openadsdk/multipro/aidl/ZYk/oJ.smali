.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ;
.super Lcom/bytedance/sdk/openadsdk/IAppOpenAdInteractionListener$Stub;
.source "SourceFile"


# instance fields
.field private oJ:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/IAppOpenAdInteractionListener$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ;)Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    return-object p0
.end method

.method private oJ()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ$2;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ$2;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ;)V

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onAdSkip()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ$3;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ$3;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onAdTimeOver()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ$4;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ$4;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ;)V

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
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ;->oJ()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
