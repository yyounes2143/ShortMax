.class Lcom/bytedance/sdk/openadsdk/component/reward/so$3;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/so;->oJ(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/so;

.field final synthetic oJ:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/so;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so$3;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/so;

    .line 2
    .line 3
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so$3;->oJ:I

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/so/so;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
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
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so$3;->oJ:I

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so$3;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/so;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/so;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/so;)Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so$3;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/so;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/so;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/so;)Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ex;-><init>(Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;)V

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;->oJ(I)Landroid/os/IBinder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so$3;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/so;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/so;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/so;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->registerRewardVideoListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string v1, "TTRewardVideoAdImpl"

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    nop

    .line 60
    :cond_0
    :goto_0
    return-void
.end method
