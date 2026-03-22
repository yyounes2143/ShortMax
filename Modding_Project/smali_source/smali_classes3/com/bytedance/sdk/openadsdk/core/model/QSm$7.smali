.class Lcom/bytedance/sdk/openadsdk/core/model/QSm$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/Pfn/eZI;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/model/QSm;->Ry()V
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
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$7;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public oJ(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$7;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->kkU(Lcom/bytedance/sdk/openadsdk/core/model/QSm;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$7;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->kkU(Lcom/bytedance/sdk/openadsdk/core/model/QSm;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$7;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->kkU()V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/dLZ;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$7;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->kkU(Lcom/bytedance/sdk/openadsdk/core/model/QSm;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$7;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->kkU(Lcom/bytedance/sdk/openadsdk/core/model/QSm;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method
