.class public Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oJ"
.end annotation


# instance fields
.field private BTZ:I

.field private Pfn:Z

.field private PiB:Z

.field private WcQ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;

.field private ZYk:J

.field private ba:J

.field private cFZ:Z

.field private dLZ:I

.field private ex:Z

.field private jFA:I

.field private kkU:I

.field private oJ:J

.field private so:I

.field private tB:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->oJ:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ZYk:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB:J

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ba:J

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->cFZ:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->PiB:Z

    .line 18
    .line 19
    return-void
.end method

.method private eZI()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-lez v4, :cond_0

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->oJ:J

    .line 10
    .line 11
    cmp-long v6, v4, v0

    .line 12
    .line 13
    if-lez v6, :cond_0

    .line 14
    .line 15
    rem-long/2addr v4, v0

    .line 16
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->oJ:J

    .line 17
    .line 18
    cmp-long v2, v4, v2

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->oJ:J

    .line 23
    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public BTZ()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->cFZ:Z

    .line 2
    .line 3
    return v0
.end method

.method public Pfn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->so:I

    .line 2
    .line 3
    return v0
.end method

.method public PiB()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->WcQ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;

    .line 2
    .line 3
    return-object v0
.end method

.method public WcQ()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex:Z

    .line 2
    .line 3
    return v0
.end method

.method public ZYk()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->oJ:J

    return-wide v0
.end method

.method public ZYk(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->jFA:I

    return-void
.end method

.method public ZYk(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->oJ:J

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->eZI()V

    return-void
.end method

.method public ZYk(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex:Z

    return-void
.end method

.method public awB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->Pfn:Z

    .line 2
    .line 3
    return v0
.end method

.method public ba()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->jFA:I

    .line 2
    .line 3
    return v0
.end method

.method public cFZ()I
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-gtz v2, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->oJ:J

    .line 12
    .line 13
    const-wide/16 v4, 0x64

    .line 14
    .line 15
    mul-long/2addr v2, v4

    .line 16
    div-long/2addr v2, v0

    .line 17
    long-to-int v0, v2

    .line 18
    const/16 v1, 0x64

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method public dLZ()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->PiB:Z

    .line 2
    .line 3
    return v0
.end method

.method public ex()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB:J

    return-wide v0
.end method

.method public ex(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->BTZ:I

    return-void
.end method

.method public ex(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB:J

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->eZI()V

    return-void
.end method

.method public jFA()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->dLZ:I

    .line 2
    .line 3
    return v0
.end method

.method public kkU()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->BTZ:I

    .line 2
    .line 3
    return v0
.end method

.method public oJ()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ba:J

    return-wide v0
.end method

.method public oJ(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->so:I

    return-void
.end method

.method public oJ(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ba:J

    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->WcQ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;

    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->cFZ:Z

    return-void
.end method

.method public so()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->kkU:I

    .line 2
    .line 3
    return v0
.end method

.method public tB()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ZYk:J

    return-wide v0
.end method

.method public tB(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->kkU:I

    return-void
.end method

.method public tB(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ZYk:J

    return-void
.end method

.method public tB(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->Pfn:Z

    return-void
.end method
