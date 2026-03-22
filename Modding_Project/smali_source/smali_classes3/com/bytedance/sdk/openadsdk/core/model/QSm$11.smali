.class Lcom/bytedance/sdk/openadsdk/core/model/QSm$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/model/QSm;->oJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/model/QSm;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/QSm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$11;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$11;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->tB(Lcom/bytedance/sdk/openadsdk/core/model/QSm;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$11;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->cFZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ex(Lcom/bytedance/sdk/openadsdk/core/model/QSm;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$11;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    .line 26
    .line 27
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/QSm;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    sub-long/2addr v2, v4

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static {v1, v0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;JZ)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$11;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ba(Lcom/bytedance/sdk/openadsdk/core/model/QSm;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method
