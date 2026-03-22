.class Lcom/bytedance/sdk/openadsdk/component/ba$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/ba$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/ba;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/nke;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V
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
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba$10;->ba:Lcom/bytedance/sdk/openadsdk/component/ba;

    .line 2
    .line 3
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/ba$10;->oJ:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/ba$10;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/ba$10;->tB:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/ba$10;->ex:Lcom/bytedance/sdk/openadsdk/core/model/nke;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/component/ba$10;->Pfn:Lcom/bytedance/sdk/openadsdk/AdSlot;

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
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba$10;->ba:Lcom/bytedance/sdk/openadsdk/component/ba;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ba$10;->Pfn:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/ba;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;)V
    .locals 3

    .line 1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/Pfn/oJ;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba$10;->oJ:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ba$10;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/ba$10;->tB:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-direct {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/Pfn/oJ;-><init>(ILcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba$10;->ba:Lcom/bytedance/sdk/openadsdk/component/ba;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/Pfn/oJ;)V

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/Pfn/oJ;->ZYk()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ba$10;->ex:Lcom/bytedance/sdk/openadsdk/core/model/nke;

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/ex/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;ILcom/bytedance/sdk/openadsdk/core/model/nke;)V

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba$10;->ba:Lcom/bytedance/sdk/openadsdk/component/ba;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba$10;->Pfn:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/ba;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method
