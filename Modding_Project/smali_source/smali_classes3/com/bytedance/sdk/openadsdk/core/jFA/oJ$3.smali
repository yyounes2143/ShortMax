.class Lcom/bytedance/sdk/openadsdk/core/jFA/oJ$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->tB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;

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
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "check_clz"

    .line 7
    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Uf()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;)Lcom/pgl/ssdk/ces/out/PglSSManager;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lcom/pgl/ssdk/ces/out/PglSSManager;->setCustomInfo(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    const-string v1, "setCustomInfo"

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "MSSdkImpl"

    .line 41
    .line 42
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
