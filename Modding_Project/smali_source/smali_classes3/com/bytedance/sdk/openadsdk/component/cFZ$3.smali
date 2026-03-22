.class Lcom/bytedance/sdk/openadsdk/component/cFZ$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/utils/wd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/component/cFZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/cFZ;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$3;->tB:Lcom/bytedance/sdk/openadsdk/component/cFZ;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$3;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$3;->tB:Lcom/bytedance/sdk/openadsdk/component/cFZ;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/cFZ;)Lcom/bytedance/sdk/openadsdk/core/model/nke;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/nke;->oJ(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$3;->tB:Lcom/bytedance/sdk/openadsdk/component/cFZ;

    .line 12
    .line 13
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$3;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    const/16 v5, 0x64

    .line 21
    .line 22
    invoke-direct {v1, v4, v5, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/cFZ;Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
