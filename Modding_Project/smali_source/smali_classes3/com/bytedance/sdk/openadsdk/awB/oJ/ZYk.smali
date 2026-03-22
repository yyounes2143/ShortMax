.class public Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Pfn:Z

.field private ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private ba:Ljava/lang/String;

.field private cFZ:I

.field private ex:I

.field private jFA:I

.field private oJ:Ljava/lang/String;

.field private so:I

.field private tB:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->so:I

    .line 6
    .line 7
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->jFA:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public Pfn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->Pfn:Z

    .line 2
    .line 3
    return v0
.end method

.method public ZYk()Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object v0
.end method

.method public ZYk(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->cFZ:I

    return-void
.end method

.method public ZYk(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->tB:Ljava/lang/String;

    return-void
.end method

.method public ba()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->ba:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public cFZ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->cFZ:I

    .line 2
    .line 3
    return v0
.end method

.method public ex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->ex:I

    return v0
.end method

.method public ex(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->jFA:I

    return-void
.end method

.method public jFA()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->jFA:I

    .line 2
    .line 3
    return v0
.end method

.method public oJ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->oJ:Ljava/lang/String;

    return-object v0
.end method

.method public oJ(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->ex:I

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->oJ:Ljava/lang/String;

    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->Pfn:Z

    return-void
.end method

.method public so()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->so:I

    .line 2
    .line 3
    return v0
.end method

.method public tB()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->tB:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->tB:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->tB:Ljava/lang/String;

    return-object v0
.end method

.method public tB(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->so:I

    return-void
.end method

.method public tB(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->ba:Ljava/lang/String;

    return-void
.end method
