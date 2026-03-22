.class final Lcom/bytedance/sdk/openadsdk/tB/kkU$2;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/tB/kkU;->oJ(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;

.field final synthetic oJ:I

.field final synthetic tB:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU$2;->oJ:I

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU$2;->ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU$2;->tB:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/so/so;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU$2;->oJ:I

    .line 6
    .line 7
    const/4 v2, 0x6

    .line 8
    if-ne v1, v2, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU$2;->ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ZYk;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU$2;->tB:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU$2;->ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;

    .line 19
    .line 20
    invoke-direct {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ZYk/ZYk;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;->oJ(I)Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU$2;->tB:Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->registerDisLikeClosedListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 42
    :goto_1
    const-string v1, "TTDislikeManager"

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method
