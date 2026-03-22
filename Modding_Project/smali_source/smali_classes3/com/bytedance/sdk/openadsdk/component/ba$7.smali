.class Lcom/bytedance/sdk/openadsdk/component/ba$7;
.super Lcom/bytedance/sdk/openadsdk/core/oq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/core/model/nke;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/component/ba;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/ba;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/nke;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba$7;->tB:Lcom/bytedance/sdk/openadsdk/component/ba;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/ba$7;->oJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/ba$7;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/nke;

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
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba$7;->tB:Lcom/bytedance/sdk/openadsdk/component/ba;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/ba$7;->oJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/ba;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba$7;->tB:Lcom/bytedance/sdk/openadsdk/component/ba;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ba$7;->oJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/ba$7;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/nke;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/ba;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/nke;)V

    return-void
.end method
