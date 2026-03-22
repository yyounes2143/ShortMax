.class Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/tB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "oJ"
.end annotation


# instance fields
.field private Pfn:I

.field private final ZYk:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;

.field private ba:Landroid/os/CountDownTimer;

.field private cFZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;

.field private ex:J

.field private jFA:J

.field private final oJ:J

.field private so:J

.field private final tB:Lcom/bytedance/sdk/openadsdk/ex/cFZ;


# direct methods
.method public constructor <init>(JLcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->Pfn:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->oJ:J

    .line 8
    .line 9
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->ZYk:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->tB:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;)Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->ZYk:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;

    return-object p0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->oJ:J

    return-wide v0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->ex:J

    return-wide p1
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;)Lcom/bytedance/sdk/openadsdk/ex/cFZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->tB:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    return-object p0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;)Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->cFZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->Pfn:I

    return p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;)J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->so:J

    return-wide v0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;J)J
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->so:J

    return-wide p1
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->ex:J

    return-wide v0
.end method


# virtual methods
.method public BTZ()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->Pfn:I

    .line 3
    .line 4
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->so:J

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->ex:J

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->ba:Landroid/os/CountDownTimer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->ba:Landroid/os/CountDownTimer;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public Pfn()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public PiB()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->Pfn:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->ba:Landroid/os/CountDownTimer;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->ba:Landroid/os/CountDownTimer;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->cFZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->cFZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public WcQ()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public ZYk(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->ex:J

    return-void
.end method

.method public ZYk()Z
    .locals 2

    .line 3
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->Pfn:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public awB()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public ba()Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->Pfn:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cFZ()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->Pfn:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public dLZ()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->Pfn:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->Pfn:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->eZI()J

    .line 10
    .line 11
    .line 12
    move-result-wide v10

    .line 13
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->ex:J

    .line 14
    .line 15
    cmp-long v0, v0, v10

    .line 16
    .line 17
    if-ltz v0, :cond_1

    .line 18
    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->ex:J

    .line 22
    .line 23
    :cond_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->ex:J

    .line 24
    .line 25
    sub-long v8, v10, v0

    .line 26
    .line 27
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ$1;

    .line 28
    .line 29
    const-wide/16 v6, 0xc8

    .line 30
    .line 31
    move-object v2, v0

    .line 32
    move-object v3, p0

    .line 33
    move-wide v4, v8

    .line 34
    invoke-direct/range {v2 .. v11}, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;JJJJ)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->ba:Landroid/os/CountDownTimer;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public eZI()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->oJ:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public ex()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public jFA()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->jFA:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public kkU()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->so:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->dLZ()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public oJ(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->jFA:J

    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->cFZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;

    return-void
.end method

.method public oJ()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public si()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->so:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public so()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->Pfn:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public tB()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
