.class Lcom/bytedance/sdk/openadsdk/component/ex$1;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/ex;->oJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/component/ex;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/ex;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ex$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/ex;

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
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ex$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/ex;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/ex;->oJ(Lcom/bytedance/sdk/openadsdk/component/ex;)Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x7

    .line 14
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;->oJ(I)Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/ex$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/ex;

    .line 27
    .line 28
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/ex;->oJ(Lcom/bytedance/sdk/openadsdk/component/ex;)Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/oJ;-><init>(Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/ex$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/ex;

    .line 36
    .line 37
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/ex;->ZYk(Lcom/bytedance/sdk/openadsdk/component/ex;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->registerAppOpenAdListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IAppOpenAdInteractionListener;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ex$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/ex;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/ex;->oJ(Lcom/bytedance/sdk/openadsdk/component/ex;Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;)Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string v1, "TTAppOpenAdImpl"

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    nop

    .line 62
    :cond_0
    :goto_0
    return-void
.end method
