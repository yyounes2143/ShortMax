.class public Lcom/bytedance/sdk/openadsdk/core/model/oq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Pfn:Ljava/lang/String;

.field private ZYk:J

.field private ex:J

.field private oJ:J

.field private tB:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x2710

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oq;->oJ:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oq;->ZYk:J

    .line 9
    .line 10
    const-wide/16 v0, 0xa

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oq;->tB:J

    .line 13
    .line 14
    const-wide/16 v0, 0x14

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oq;->ex:J

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oq;->Pfn:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public Pfn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oq;->Pfn:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ZYk()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oq;->ZYk:J

    return-wide v0
.end method

.method public ZYk(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x14

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/oq;->ZYk:J

    return-void

    .line 3
    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/oq;->ZYk:J

    return-void
.end method

.method public ex()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oq;->ex:J

    return-wide v0
.end method

.method public ex(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x14

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/oq;->ex:J

    return-void

    .line 3
    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/oq;->ex:J

    return-void
.end method

.method public oJ()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oq;->oJ:J

    return-wide v0
.end method

.method public oJ(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 p1, 0xa

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/oq;->oJ:J

    return-void

    .line 3
    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/oq;->oJ:J

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/oq;->Pfn:Ljava/lang/String;

    return-void
.end method

.method public tB()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oq;->tB:J

    return-wide v0
.end method

.method public tB(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 p1, 0xa

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/oq;->tB:J

    return-void

    .line 3
    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/oq;->tB:J

    return-void
.end method
