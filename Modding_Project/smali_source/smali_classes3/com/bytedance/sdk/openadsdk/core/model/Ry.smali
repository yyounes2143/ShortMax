.class public Lcom/bytedance/sdk/openadsdk/core/model/Ry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Pfn:Z

.field private ZYk:I

.field private ba:Ljava/lang/String;

.field private ex:D

.field private oJ:Ljava/lang/String;

.field private tB:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public Pfn()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->ZYk:I

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->tB:I

    .line 14
    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public ZYk()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->ZYk:I

    return v0
.end method

.method public ZYk(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->tB:I

    return-void
.end method

.method public ZYk(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->ba:Ljava/lang/String;

    return-void
.end method

.method public ba()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->Pfn:Z

    .line 2
    .line 3
    return v0
.end method

.method public cFZ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->ba:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->ex:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public oJ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ:Ljava/lang/String;

    return-object v0
.end method

.method public oJ(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->ZYk:I

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ:Ljava/lang/String;

    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->Pfn:Z

    return-void
.end method

.method public tB()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->tB:I

    .line 2
    .line 3
    return v0
.end method
