.class public Lcom/bytedance/sdk/openadsdk/core/model/nke;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Pfn:J

.field public ZYk:J

.field private ba:J

.field private cFZ:J

.field private dLZ:I

.field private ex:Lcom/bytedance/sdk/openadsdk/utils/wd;

.field private jFA:J

.field private kkU:J

.field public oJ:Z

.field private so:J

.field private tB:Lcom/bytedance/sdk/openadsdk/utils/wd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/wd;->tB()Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/nke;->tB:Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 9
    .line 10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/wd;->tB()Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/nke;->ex:Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public Pfn()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/nke;->so:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public ZYk()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/nke;->Pfn:J

    return-wide v0
.end method

.method public ZYk(Lcom/bytedance/sdk/openadsdk/utils/wd;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/nke;->ex:Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/nke;->tB:Lcom/bytedance/sdk/openadsdk/utils/wd;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/wd;->oJ(Lcom/bytedance/sdk/openadsdk/utils/wd;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/nke;->jFA:J

    return-void
.end method

.method public ba()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/nke;->jFA:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public cFZ()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/nke;->kkU:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public ex()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/nke;->cFZ:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public oJ()Lcom/bytedance/sdk/openadsdk/utils/wd;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/nke;->tB:Lcom/bytedance/sdk/openadsdk/utils/wd;

    return-object v0
.end method

.method public oJ(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/nke;->dLZ:I

    return-void
.end method

.method public oJ(J)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/nke;->kkU:J

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/utils/wd;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/nke;->tB:Lcom/bytedance/sdk/openadsdk/utils/wd;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/utils/wd;Lcom/bytedance/sdk/openadsdk/utils/wd;ILcom/bytedance/sdk/openadsdk/utils/wd;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/nke;->tB:Lcom/bytedance/sdk/openadsdk/utils/wd;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/wd;->oJ(Lcom/bytedance/sdk/openadsdk/utils/wd;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/nke;->Pfn:J

    .line 2
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/wd;->oJ(Lcom/bytedance/sdk/openadsdk/utils/wd;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/nke;->ba:J

    int-to-long v0, p3

    .line 3
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/nke;->cFZ:J

    .line 4
    invoke-virtual {p4, p2}, Lcom/bytedance/sdk/openadsdk/utils/wd;->oJ(Lcom/bytedance/sdk/openadsdk/utils/wd;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/nke;->so:J

    return-void
.end method

.method public so()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/nke;->dLZ:I

    .line 2
    .line 3
    return v0
.end method

.method public tB()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/nke;->ba:J

    .line 2
    .line 3
    return-wide v0
.end method
