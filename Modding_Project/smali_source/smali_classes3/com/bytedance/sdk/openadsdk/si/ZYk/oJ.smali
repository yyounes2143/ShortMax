.class public Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private BTZ:I

.field private Pfn:I

.field private PiB:Ljava/lang/String;

.field private ZYk:Ljava/lang/String;

.field private ba:I

.field private cFZ:Ljava/lang/String;

.field private dLZ:Ljava/lang/String;

.field private ex:I

.field private jFA:Ljava/lang/String;

.field private kkU:J

.field private oJ:J

.field private so:Ljava/lang/String;

.field private tB:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->oJ:J

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->ZYk:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->tB:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->cFZ:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->so:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->jFA:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->kkU:J

    .line 25
    .line 26
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->dLZ:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->BTZ:I

    .line 30
    .line 31
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->PiB:Ljava/lang/String;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public BTZ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->BTZ:I

    .line 2
    .line 3
    return v0
.end method

.method public Pfn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->Pfn:I

    return v0
.end method

.method public Pfn(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->jFA:Ljava/lang/String;

    return-void
.end method

.method public PiB()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->PiB:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ZYk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->ZYk:Ljava/lang/String;

    return-object v0
.end method

.method public ZYk(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->Pfn:I

    return-void
.end method

.method public ZYk(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->kkU:J

    return-void
.end method

.method public ZYk(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->tB:Ljava/lang/String;

    return-void
.end method

.method public ba()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->ba:I

    return v0
.end method

.method public ba(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->dLZ:Ljava/lang/String;

    return-void
.end method

.method public cFZ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->cFZ:Ljava/lang/String;

    return-object v0
.end method

.method public cFZ(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->PiB:Ljava/lang/String;

    return-void
.end method

.method public dLZ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->dLZ:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->ex:I

    return v0
.end method

.method public ex(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->BTZ:I

    return-void
.end method

.method public ex(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->so:Ljava/lang/String;

    return-void
.end method

.method public jFA()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->jFA:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public kkU()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->kkU:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public oJ()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->oJ:J

    return-wide v0
.end method

.method public oJ(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->ex:I

    return-void
.end method

.method public oJ(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->oJ:J

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->ZYk:Ljava/lang/String;

    return-void
.end method

.method public so()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->so:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tB()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->tB:Ljava/lang/String;

    return-object v0
.end method

.method public tB(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->ba:I

    return-void
.end method

.method public tB(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->cFZ:Ljava/lang/String;

    return-void
.end method
