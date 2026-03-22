.class Lcom/bytedance/sdk/openadsdk/component/ba$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/ba$ZYk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/nke;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pfn:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field final synthetic ba:Lcom/bytedance/sdk/openadsdk/component/ba;

.field final synthetic ex:Lcom/bytedance/sdk/openadsdk/core/model/nke;

.field final synthetic oJ:I

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/core/model/oJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/ba;ILcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/nke;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba$9;->ba:Lcom/bytedance/sdk/openadsdk/component/ba;

    .line 2
    .line 3
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/ba$9;->oJ:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/ba$9;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/ba$9;->tB:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/ba$9;->ex:Lcom/bytedance/sdk/openadsdk/core/model/nke;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/component/ba$9;->Pfn:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public oJ()V
    .locals 4

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/Pfn/oJ;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/ba$9;->oJ:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/ba$9;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/ba$9;->tB:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/Pfn/oJ;-><init>(ILcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    .line 2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ba$9;->ba:Lcom/bytedance/sdk/openadsdk/component/ba;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/Pfn/oJ;)V

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Pfn/oJ;->ZYk()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/ba$9;->ex:Lcom/bytedance/sdk/openadsdk/core/model/nke;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/ex/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;ILcom/bytedance/sdk/openadsdk/core/model/nke;)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba$9;->ba:Lcom/bytedance/sdk/openadsdk/component/ba;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ba$9;->Pfn:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/ba;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method public oJ(ILjava/lang/String;)V
    .locals 0

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba$9;->ba:Lcom/bytedance/sdk/openadsdk/component/ba;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/ba$9;->Pfn:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/ba;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method
