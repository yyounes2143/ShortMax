.class Lcom/bytedance/sdk/openadsdk/core/cY$9;
.super Lcom/bytedance/sdk/component/cFZ/oJ/ZYk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/cY;->ZYk(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/Id$oJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pfn:Lcom/bytedance/sdk/openadsdk/core/model/tB;

.field final synthetic ZYk:Ljava/util/Map;

.field final synthetic ba:Lcom/bytedance/sdk/openadsdk/core/Id$oJ;

.field final synthetic cFZ:Lcom/bytedance/sdk/openadsdk/core/model/HL;

.field final synthetic ex:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic jFA:Lcom/bytedance/sdk/component/cFZ/ZYk/ex;

.field final synthetic kkU:Lcom/bytedance/sdk/openadsdk/core/cY;

.field final synthetic oJ:Z

.field final synthetic so:I

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/utils/wd;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/cY;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/utils/wd;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/tB;Lcom/bytedance/sdk/openadsdk/core/Id$oJ;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/component/cFZ/ZYk/ex;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->kkU:Lcom/bytedance/sdk/openadsdk/core/cY;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->oJ:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->ZYk:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->tB:Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->ex:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->Pfn:Lcom/bytedance/sdk/openadsdk/core/model/tB;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->ba:Lcom/bytedance/sdk/openadsdk/core/Id$oJ;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->cFZ:Lcom/bytedance/sdk/openadsdk/core/model/HL;

    .line 16
    .line 17
    iput p9, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->so:I

    .line 18
    .line 19
    iput-object p10, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->jFA:Lcom/bytedance/sdk/component/cFZ/ZYk/ex;

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/bytedance/sdk/component/cFZ/oJ/ZYk;-><init>()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Lcom/bytedance/sdk/component/cFZ/ZYk;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->kkU:Lcom/bytedance/sdk/openadsdk/core/cY;

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->oJ:Z

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->ZYk:Ljava/util/Map;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->tB:Lcom/bytedance/sdk/openadsdk/utils/wd;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->ex:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->Pfn:Lcom/bytedance/sdk/openadsdk/core/model/tB;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->ba:Lcom/bytedance/sdk/openadsdk/core/Id$oJ;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->cFZ:Lcom/bytedance/sdk/openadsdk/core/model/HL;

    iget v10, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->so:I

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v10}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/cY;Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Lcom/bytedance/sdk/component/cFZ/ZYk;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/utils/wd;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/tB;Lcom/bytedance/sdk/openadsdk/core/Id$oJ;Lcom/bytedance/sdk/openadsdk/core/model/HL;I)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Ljava/io/IOException;Lcom/bytedance/sdk/component/cFZ/ZYk;)V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->kkU:Lcom/bytedance/sdk/openadsdk/core/cY;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->jFA:Lcom/bytedance/sdk/component/cFZ/ZYk/ex;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->ex:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->oJ:Z

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->ZYk:Ljava/util/Map;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->ba:Lcom/bytedance/sdk/openadsdk/core/Id$oJ;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/cY$9;->Pfn:Lcom/bytedance/sdk/openadsdk/core/model/tB;

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/cY;Lcom/bytedance/sdk/component/cFZ/ZYk/ex;Ljava/io/IOException;Lcom/bytedance/sdk/component/cFZ/ZYk;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/core/Id$oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ex()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/oq;->oJ(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
