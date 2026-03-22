.class Lcom/bytedance/sdk/openadsdk/core/so/cFZ$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/so/cFZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/so/cFZ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/cFZ;

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
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/cFZ;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/cFZ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/cFZ$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/cFZ;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/cFZ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v2, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/so/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/cFZ;Lcom/bytedance/sdk/openadsdk/core/model/cY;J)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
