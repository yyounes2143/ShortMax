.class public Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ$oJ;
    }
.end annotation


# instance fields
.field BTZ:F

.field Pfn:F

.field PiB:F

.field RZ:Ljava/lang/String;

.field Ry:I

.field WcQ:I

.field ZYk:I

.field awB:Ljava/lang/String;

.field ba:I

.field cFZ:F

.field dLZ:F

.field eZI:F

.field ex:F

.field jFA:F

.field kkU:I

.field oJ:Ljava/lang/String;

.field si:I

.field so:F

.field tB:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->Ry:I

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->RZ:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public BTZ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->kkU:I

    .line 2
    .line 3
    return v0
.end method

.method public Pfn()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->tB:F

    return v0
.end method

.method public Pfn(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->so:F

    return-void
.end method

.method public Pfn(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->WcQ:I

    return-void
.end method

.method public PiB()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->dLZ:F

    .line 2
    .line 3
    return v0
.end method

.method public RZ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->si:I

    .line 2
    .line 3
    return v0
.end method

.method public Ry()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->eZI:F

    .line 2
    .line 3
    return v0
.end method

.method public WcQ()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->BTZ:F

    .line 2
    .line 3
    return v0
.end method

.method public ZYk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->RZ:Ljava/lang/String;

    return-object v0
.end method

.method public ZYk(F)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->ex:F

    return-void
.end method

.method public ZYk(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->ZYk:I

    return-void
.end method

.method public ZYk(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->oJ:Ljava/lang/String;

    return-void
.end method

.method public awB()Ljava/math/BigDecimal;
    .locals 3

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    .line 2
    .line 3
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->PiB:F

    .line 4
    .line 5
    float-to-double v1, v1

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public ba()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->ex:F

    return v0
.end method

.method public ba(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->jFA:F

    return-void
.end method

.method public ba(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->si:I

    return-void
.end method

.method public cFZ()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->Pfn:F

    return v0
.end method

.method public cFZ(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->dLZ:F

    return-void
.end method

.method public dLZ()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->jFA:F

    .line 2
    .line 3
    return v0
.end method

.method public eZI()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->WcQ:I

    .line 2
    .line 3
    return v0
.end method

.method public ex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->ZYk:I

    return v0
.end method

.method public ex(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->cFZ:F

    return-void
.end method

.method public ex(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->kkU:I

    return-void
.end method

.method public jFA()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->cFZ:F

    return v0
.end method

.method public jFA(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->PiB:F

    return-void
.end method

.method public kkU()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->so:F

    return v0
.end method

.method public kkU(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->eZI:F

    return-void
.end method

.method public oJ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->Ry:I

    return v0
.end method

.method public oJ(F)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->tB:F

    return-void
.end method

.method public oJ(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->Ry:I

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->RZ:Ljava/lang/String;

    return-void
.end method

.method public si()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->awB:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public so()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->ba:I

    return v0
.end method

.method public so(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->BTZ:F

    return-void
.end method

.method public tB()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->oJ:Ljava/lang/String;

    return-object v0
.end method

.method public tB(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->Pfn:F

    return-void
.end method

.method public tB(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->ba:I

    return-void
.end method

.method public tB(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->awB:Ljava/lang/String;

    return-void
.end method
