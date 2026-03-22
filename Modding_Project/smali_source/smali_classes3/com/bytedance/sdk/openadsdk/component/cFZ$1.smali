.class Lcom/bytedance/sdk/openadsdk/component/cFZ$1;
.super Lcom/bytedance/sdk/openadsdk/core/oq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/cFZ;->tB(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/utils/wd;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/component/cFZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/cFZ;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/utils/wd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$1;->tB:Lcom/bytedance/sdk/openadsdk/component/cFZ;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$1;->oJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$1;->ZYk:Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/oq;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public oJ(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$1;->tB:Lcom/bytedance/sdk/openadsdk/component/cFZ;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/cFZ;I)I

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$1;->tB:Lcom/bytedance/sdk/openadsdk/component/cFZ;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;

    const/4 v2, 0x2

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;-><init>(IIILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/cFZ;Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$1;->tB:Lcom/bytedance/sdk/openadsdk/component/cFZ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$1;->oJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$1;->ZYk:Lcom/bytedance/sdk/openadsdk/utils/wd;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/cFZ;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/utils/wd;)V

    return-void
.end method
