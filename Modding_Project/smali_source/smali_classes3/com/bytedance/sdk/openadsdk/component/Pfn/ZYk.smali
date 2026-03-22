.class public Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Pfn:I

.field private ZYk:I

.field private ba:Ljava/lang/String;

.field private cFZ:Z

.field private ex:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

.field private oJ:I

.field private tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;->oJ:I

    .line 8
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;->ZYk:I

    .line 9
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;->Pfn:I

    .line 10
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;->ba:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;->oJ:I

    .line 3
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;->ZYk:I

    .line 4
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;->ex:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    return-void
.end method


# virtual methods
.method public Pfn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;->Pfn:I

    .line 2
    .line 3
    return v0
.end method

.method public ZYk()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;->oJ:I

    .line 2
    .line 3
    return v0
.end method

.method public ba()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;->ba:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ()Lcom/bytedance/sdk/openadsdk/core/model/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;->ex:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    return-object v0
.end method

.method public oJ(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;->cFZ:Z

    return-void
.end method

.method public tB()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;->ZYk:I

    .line 2
    .line 3
    return v0
.end method
