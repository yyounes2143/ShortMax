.class public Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ba/oJ/oJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oJ"
.end annotation


# instance fields
.field private BTZ:J

.field private Pfn:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

.field private ZYk:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

.field private ba:Z

.field private cFZ:Lcom/bytedance/sdk/component/ba/oJ/Pfn;

.field private dLZ:I

.field private ex:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

.field private jFA:Z

.field private kkU:I

.field private oJ:Lcom/bytedance/sdk/component/ba/oJ/ZYk/tB;

.field private so:Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;

.field private tB:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1388

    .line 5
    .line 6
    iput v0, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->kkU:I

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    iput v0, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->dLZ:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public ZYk(I)Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->dLZ:I

    return-object p0
.end method

.method public ZYk(Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;)Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->tB:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    return-object p0
.end method

.method public oJ(I)Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;
    .locals 0

    .line 7
    iput p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->kkU:I

    return-object p0
.end method

.method public oJ(J)Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->BTZ:J

    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/component/ba/oJ/Pfn;)Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->cFZ:Lcom/bytedance/sdk/component/ba/oJ/Pfn;

    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/component/ba/oJ/ZYk/tB;)Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->oJ:Lcom/bytedance/sdk/component/ba/oJ/ZYk/tB;

    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;)Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->ZYk:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;)Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->so:Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;

    return-object p0
.end method

.method public oJ(Z)Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->ba:Z

    return-object p0
.end method

.method public oJ()Lcom/bytedance/sdk/component/ba/oJ/oJ;
    .locals 3

    .line 8
    new-instance v0, Lcom/bytedance/sdk/component/ba/oJ/oJ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/ba/oJ/oJ;-><init>(Lcom/bytedance/sdk/component/ba/oJ/oJ$1;)V

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->oJ:Lcom/bytedance/sdk/component/ba/oJ/ZYk/tB;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ba/oJ/oJ;->oJ(Lcom/bytedance/sdk/component/ba/oJ/oJ;Lcom/bytedance/sdk/component/ba/oJ/ZYk/tB;)Lcom/bytedance/sdk/component/ba/oJ/ZYk/tB;

    .line 10
    iget-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->ZYk:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ba/oJ/oJ;->oJ(Lcom/bytedance/sdk/component/ba/oJ/oJ;Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;)Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->tB:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ba/oJ/oJ;->ZYk(Lcom/bytedance/sdk/component/ba/oJ/oJ;Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;)Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->ex:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ba/oJ/oJ;->tB(Lcom/bytedance/sdk/component/ba/oJ/oJ;Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;)Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->Pfn:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ba/oJ/oJ;->ex(Lcom/bytedance/sdk/component/ba/oJ/oJ;Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;)Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 14
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->ba:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ba/oJ/oJ;->oJ(Lcom/bytedance/sdk/component/ba/oJ/oJ;Z)Z

    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->cFZ:Lcom/bytedance/sdk/component/ba/oJ/Pfn;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ba/oJ/oJ;->oJ(Lcom/bytedance/sdk/component/ba/oJ/oJ;Lcom/bytedance/sdk/component/ba/oJ/Pfn;)Lcom/bytedance/sdk/component/ba/oJ/Pfn;

    .line 16
    iget-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->so:Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ba/oJ/oJ;->oJ(Lcom/bytedance/sdk/component/ba/oJ/oJ;Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;)Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;

    .line 17
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->jFA:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ba/oJ/oJ;->ZYk(Lcom/bytedance/sdk/component/ba/oJ/oJ;Z)Z

    .line 18
    iget v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->dLZ:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ba/oJ/oJ;->oJ(Lcom/bytedance/sdk/component/ba/oJ/oJ;I)I

    .line 19
    iget v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->kkU:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ba/oJ/oJ;->ZYk(Lcom/bytedance/sdk/component/ba/oJ/oJ;I)I

    .line 20
    iget-wide v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->BTZ:J

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/ba/oJ/oJ;->oJ(Lcom/bytedance/sdk/component/ba/oJ/oJ;J)J

    return-object v0
.end method

.method public tB(Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;)Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ$oJ;->ex:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 2
    .line 3
    return-object p0
.end method
