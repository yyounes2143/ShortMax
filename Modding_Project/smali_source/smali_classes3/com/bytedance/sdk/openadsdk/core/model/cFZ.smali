.class public Lcom/bytedance/sdk/openadsdk/core/model/cFZ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ZYk:I

.field private ex:I

.field private oJ:I

.field private tB:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/cFZ;->oJ:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/cFZ;->ZYk:I

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/cFZ;->ex:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public ZYk()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/cFZ;->oJ:I

    return v0
.end method

.method public ZYk(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/cFZ;->oJ:I

    return-void
.end method

.method public ex()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/cFZ;->tB:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public oJ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/cFZ;->ex:I

    return v0
.end method

.method public oJ(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/cFZ;->ex:I

    return-void
.end method

.method public oJ(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/cFZ;->tB:J

    return-void
.end method

.method public tB()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/cFZ;->ZYk:I

    return v0
.end method

.method public tB(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/cFZ;->ZYk:I

    return-void
.end method
