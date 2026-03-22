.class public Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ZYk:I = 0x1

.field public static oJ:I = 0x0

.field public static tB:I = 0x2


# instance fields
.field private Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final ex:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->wHC()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ex:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ba(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;

    .line 19
    .line 20
    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    .line 33
    .line 34
    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public BTZ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->ex()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public Pfn()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->ba()V

    :cond_0
    return-void
.end method

.method public Pfn(I)V
    .locals 3

    .line 5
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ex:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;

    if-eqz v0, :cond_1

    int-to-long v1, p1

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->oJ(J)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_1

    int-to-long v1, p1

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oJ(J)V

    :cond_1
    return-void
.end method

.method public Pfn(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Pfn(Z)V

    :cond_0
    return-void
.end method

.method public PiB()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ex:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->ex()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->dLZ()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public Ry()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->tB()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public WcQ()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ex:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->so()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public ZYk()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->kkU()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ZYk(I)I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->tB(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ZYk(Ljava/lang/String;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->ZYk(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ZYk(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->ba(Z)V

    :cond_0
    return-void
.end method

.method public awB()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ex:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->oJ()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oJ()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public ba()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->cFZ()V

    :cond_0
    return-void
.end method

.method public ba(I)V
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ex:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->oJ(I)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Pfn(I)V

    :cond_1
    return-void
.end method

.method public ba(Z)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->tB(Z)V

    :cond_0
    return-void
.end method

.method public cFZ(I)V
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ex:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->tB:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->ba()V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_1

    sget v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ZYk:I

    if-eq p1, v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->tB()V

    :cond_1
    return-void
.end method

.method public cFZ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dLZ()Lcom/bytedance/sdk/openadsdk/BTZ/Pfn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->WcQ()Lcom/bytedance/sdk/openadsdk/BTZ/Pfn;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public eZI()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ex:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->Pfn()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->BTZ()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public ex()Lcom/bytedance/sdk/openadsdk/QSm/so;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Ry()Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ex(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->ex(Z)V

    :cond_0
    return-void
.end method

.method public ex(I)Z
    .locals 3

    .line 5
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ex:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->jFA()Z

    move-result p1

    return p1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->jFA()I

    move-result v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->kkU()I

    move-result v2

    sub-int/2addr v0, v2

    if-lt v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public jFA()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->jFA()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-long v0, v0

    .line 10
    return-wide v0

    .line 11
    :cond_0
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    return-wide v0
.end method

.method public kkU()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Pfn()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public oJ(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oJ(I)V

    :cond_0
    return-void
.end method

.method public oJ(ILcom/bytedance/sdk/openadsdk/core/model/cY;Z)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oJ(ILcom/bytedance/sdk/openadsdk/core/model/cY;Z)V

    :cond_0
    return-void
.end method

.method public oJ(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oJ(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public oJ(Landroid/webkit/DownloadListener;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oJ(Landroid/webkit/DownloadListener;)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/BTZ/ba;Z)V
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ex:Z

    if-eqz v0, :cond_0

    .line 24
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->ZYk(Z)V

    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oJ(Lcom/bytedance/sdk/openadsdk/BTZ/ba;Z)V

    :cond_1
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;)V
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ex:Z

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;)V

    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;)V

    :cond_1
    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->tB(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public oJ(Lorg/json/JSONObject;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oJ(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public oJ(Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->ZYk(Z)V

    :cond_0
    return-void
.end method

.method public oJ(ZLjava/lang/String;I)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oJ(ZLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public oJ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->si()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public si()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public so()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->ZYk()V

    :cond_0
    return-void
.end method

.method public so(I)Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ex:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ZYk:I

    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->kkU()Z

    move-result p1

    return p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public tB(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->ZYk(I)V

    :cond_0
    return-void
.end method

.method public tB(Ljava/lang/String;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oJ(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public tB(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oJ(Z)V

    :cond_0
    return-void
.end method

.method public tB()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->eZI()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
