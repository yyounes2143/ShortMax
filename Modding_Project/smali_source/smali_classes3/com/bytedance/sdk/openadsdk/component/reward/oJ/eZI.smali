.class public Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private BTZ:J

.field private HL:Z

.field private IUZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;

.field private final Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

.field private Ln:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

.field protected Pfn:Z

.field private PiB:Z

.field private QSm:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private RZ:Ljava/lang/String;

.field private Ry:J

.field private WcQ:Z

.field private Xe:I

.field ZYk:Z

.field private awB:J

.field ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

.field private final cFZ:Landroid/app/Activity;

.field private cY:Z

.field private dLZ:J

.field private eZI:I

.field final ex:Z

.field private jFA:Landroid/widget/FrameLayout;

.field private jr:Z

.field private final kkU:Ljava/lang/String;

.field protected oJ:Z

.field private oq:Z

.field private si:J

.field private final so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field tB:Z

.field private tb:F


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ZYk:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Pfn:Z

    .line 10
    .line 11
    const-wide/16 v1, -0x1

    .line 12
    .line 13
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->awB:J

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->eZI:I

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->jr:Z

    .line 19
    .line 20
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Xe:I

    .line 21
    .line 22
    const/high16 v1, 0x3f800000    # 1.0f

    .line 23
    .line 24
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->tb:F

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->HL:Z

    .line 27
    .line 28
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 29
    .line 30
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->cFZ:Landroid/app/Activity;

    .line 33
    .line 34
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 37
    .line 38
    iget-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ex:Z

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ex:Z

    .line 41
    .line 42
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->kkU:Ljava/lang/String;

    .line 45
    .line 46
    new-instance p1, Ljava/util/HashSet;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->QSm:Ljava/util/HashSet;

    .line 52
    .line 53
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->RZ:Ljava/lang/String;

    return-object p0
.end method

.method private ZYk(JJ)V
    .locals 5

    .line 3
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->eZI:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 4
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->eZI:I

    if-ltz v1, :cond_2

    const/16 v2, 0x1f4

    if-gt v0, v2, :cond_2

    int-to-long v3, v1

    cmp-long p3, v3, p3

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    if-ge v0, v2, :cond_2

    .line 5
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->QSm:Ljava/util/HashSet;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->RZ:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 6
    iget p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->eZI:I

    int-to-long p3, p3

    cmp-long p1, p3, p1

    if-lez p1, :cond_1

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->tB()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;)V

    int-to-long p3, v0

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->UN()V

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->eZI:I

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->RZ:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ(ILjava/lang/String;)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->QSm:Ljava/util/HashSet;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->RZ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private nQI()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->ba()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->dLZ:J

    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;->tB()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;->ZYk()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 45
    .line 46
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->ZYk()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 50
    .line 51
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->ex()V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ:Z

    .line 56
    .line 57
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->eZI:I

    return p0
.end method

.method private oJ(JZ)Z
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->rQ()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;->oJ()Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->WcQ()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const/4 v1, 0x1

    .line 98
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ZYk:Z

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ZYk(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->jFA:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ZYk(I)V

    .line 102
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->jFA:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->tB(I)V

    .line 103
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->tB(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(J)V

    .line 105
    invoke-virtual {v0, p3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(Z)V

    .line 106
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    return-object p0
.end method


# virtual methods
.method public BTZ()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->ba()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->dLZ:J

    .line 11
    .line 12
    return-wide v0
.end method

.method public HL()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;->cFZ()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;->so()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 32
    .line 33
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->wd()V

    .line 40
    .line 41
    .line 42
    :cond_1
    return v2

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->dLZ()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Z)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 53
    .line 54
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->wd()V

    .line 61
    .line 62
    .line 63
    :cond_3
    return v2

    .line 64
    :cond_4
    return v1
.end method

.method public HyG()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->cdg()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public IUZ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

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

.method public Id()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->jFA()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public Jc()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->jr:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Ry()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public Jm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->ba()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->dLZ:J

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->RZ()V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Z)V

    .line 25
    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->PiB:Z

    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public Ln()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public LpP()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Xe:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    const-string v1, "switch"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Lorg/json/JSONObject;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    const-string v1, "TTAD.RFVideoPlayerMag"

    .line 27
    .line 28
    const-string v2, "onStopPlaySpeed: "

    .line 29
    .line 30
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public Pfn()Lcom/bytedance/sdk/openadsdk/ex/cFZ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Ln:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    .line 2
    .line 3
    return-object v0
.end method

.method public PiB()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->BTZ:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public QSm()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->tB()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public Qu()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->PiB:Z

    .line 2
    .line 3
    return v0
.end method

.method public RZ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->Pfn()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public Rl()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->oJ()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public Ry()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->ex()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 11
    .line 12
    return-void
.end method

.method public UN()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Pfn:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oq()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    return-void

    .line 17
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "onPause throw Exception :"

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "TTAD.RFVideoPlayerMag"

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public WcQ()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->dLZ:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public XAo()D
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->RZ()Lcom/bytedance/sdk/openadsdk/core/model/oq;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oq;->ZYk()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    :goto_0
    long-to-double v0, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oq;->ex()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ba()D

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->Id()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    int-to-double v3, v0

    .line 55
    mul-double v0, v1, v3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const-wide/16 v0, 0x0

    .line 59
    .line 60
    :goto_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 61
    .line 62
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->EP:Lcom/bytedance/sdk/openadsdk/component/reward/dLZ;

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    double-to-long v3, v0

    .line 67
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/dLZ;->oJ(J)V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-wide v0
.end method

.method public Xe()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->jFA()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 10
    .line 11
    invoke-interface {v2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->cFZ()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    add-long/2addr v0, v2

    .line 16
    return-wide v0

    .line 17
    :cond_0
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    return-wide v0
.end method

.method public ZYk()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->si:J

    return-wide v0
.end method

.method public ZYk(J)V
    .locals 0

    .line 11
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->dLZ:J

    return-void
.end method

.method protected ZYk(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V
    .locals 3

    .line 15
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->HL()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->WcQ()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->oJ(JZ)Z

    :cond_0
    return-void
.end method

.method public ZYk(Z)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->ZYk()V

    .line 14
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->WcQ:Z

    :cond_0
    return-void
.end method

.method public awB()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->ZYk()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    return-void

    .line 16
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "RewardFullVideoPlayerManager onPause throw Exception :"

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public ba()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;->ba()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method public cFZ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->PiB()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public cY()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->kkU()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public cdg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->Rl()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public dLZ()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ:Z

    .line 2
    .line 3
    return v0
.end method

.method public eZI()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->cFZ()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public ex(Z)V
    .locals 1

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->cY:Z

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->Id()I

    move-result p1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk(I)V

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->kkU(I)V

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk(I)V

    return-void
.end method

.method public ex()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->HL:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->jr:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Xe:I

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->jr:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Xe:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_3

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public jFA()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;->cFZ()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method public jr()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->so()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public kkU()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->WcQ()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public mu()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;->oJ()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public nke()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->tB:Z

    .line 2
    .line 3
    return v0
.end method

.method public oJ()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->awB:J

    return-wide v0
.end method

.method public oJ(II)V
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->eZI()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB(J)V

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Xe()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex(J)V

    .line 31
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->BTZ()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ZYk(J)V

    .line 32
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->oJ(I)V

    .line 33
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ZYk(I)V

    .line 34
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    invoke-interface {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->BTZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->ex(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)V

    :cond_0
    return-void
.end method

.method public oJ(ILjava/lang/String;)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->eZI:I

    .line 25
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->RZ:Ljava/lang/String;

    return-void
.end method

.method public oJ(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->awB:J

    return-void
.end method

.method public oJ(JJ)V
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->BTZ:J

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ZYk(JJ)V

    return-void
.end method

.method public oJ(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 3

    .line 4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oq:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oq:Z

    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->jFA:Landroid/widget/FrameLayout;

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zxE()Lcom/bytedance/sdk/openadsdk/core/model/LpP;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zxE()Lcom/bytedance/sdk/openadsdk/core/model/LpP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/LpP;->ZYk()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Xe:I

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zxE()Lcom/bytedance/sdk/openadsdk/core/model/LpP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/LpP;->oJ()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->tb:F

    .line 10
    :cond_1
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Ln:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->HL:Z

    .line 13
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->cFZ:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->jFA:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 14
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->cY:Z

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ex(Z)V

    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->IUZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;

    if-eqz p1, :cond_3

    .line 16
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->HL:Z

    .line 18
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/tB;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/tB;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 19
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->IUZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;

    if-eqz p2, :cond_3

    .line 20
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;)V

    :cond_3
    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Yg:Z

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 65
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ba:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->BTZ(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->ex()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 66
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 67
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Pfn:Z

    if-eqz v0, :cond_2

    return-void

    .line 68
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->ba()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 69
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    const/16 v0, 0x12c

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 70
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 71
    iput v0, p1, Landroid/os/Message;->what:I

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V
    .locals 2

    const/4 v0, 0x0

    .line 107
    :try_start_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Pfn:Z

    .line 108
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->dLZ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->nQI()V

    .line 110
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ZYk(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->jFA()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->QSm()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    .line 113
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onContinue throw Exception :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTAD.RFVideoPlayerMag"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->IUZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Ln:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    return-void
.end method

.method public oJ(Ljava/lang/String;Z)V
    .locals 10

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    if-eqz v0, :cond_3

    .line 40
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->BTZ()J

    move-result-wide v0

    .line 41
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qu()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tB()J

    move-result-wide v0

    :cond_0
    move-wide v5, v0

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 44
    invoke-interface {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->cFZ()J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 45
    invoke-interface {v3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    move-result-object v3

    .line 46
    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;JLcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;)Lorg/json/JSONObject;

    move-result-object v8

    .line 47
    :try_start_0
    const-string v0, "auto_click"

    invoke-virtual {v8, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-nez p2, :cond_2

    .line 48
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v0, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ex:Z

    if-eqz v0, :cond_1

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 49
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->xwf()I

    move-result p2

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->HUl()I

    move-result p2

    :goto_0
    long-to-int v0, v5

    .line 50
    invoke-static {v8, p2, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lorg/json/JSONObject;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :catch_0
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->kkU:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->cY()I

    move-result v7

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Ln:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    move-object v4, p1

    .line 53
    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;JILorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    .line 54
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Xe()J

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->cY()I

    .line 55
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->HyG()V

    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ:Z

    return-void
.end method

.method public oJ(ZLcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;Z)V
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->WcQ:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Pfn:Z

    if-eqz p1, :cond_1

    :cond_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->jFA()Z

    move-result p1

    const-string p3, "TTAD.RFVideoPlayerMag"

    if-eqz p1, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->QSm()V

    .line 117
    const-string p1, "resumeOrRestartVideo: continue play"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->nQI()V

    .line 119
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ZYk(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V

    .line 120
    const-string p1, "resumeOrRestartVideo: recreate video player & exec play"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    .line 121
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->WcQ:Z

    return-void
.end method

.method public oJ(ZLjava/lang/String;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0, p1, p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->oJ(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public oJ(JZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;",
            ")Z"
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->IUZ()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Ln()Z

    move-result v0

    if-nez v0, :cond_3

    .line 59
    :cond_2
    invoke-virtual {p0, p5}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    .line 60
    :cond_3
    :try_start_0
    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean p5, p5, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-direct {p0, p1, p2, p5}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(JZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    :try_start_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->PiB:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    move v1, p1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 62
    :goto_0
    const-string p1, "TTAD.RFVideoPlayerMag"

    const-string p5, "playVideo: "

    invoke-static {p1, p5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p1, v1

    :goto_1
    if-eqz p1, :cond_4

    if-nez p3, :cond_4

    .line 63
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    invoke-virtual {p2, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Ljava/util/Map;)V

    :cond_4
    return p1

    :cond_5
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public oJ(Lorg/json/JSONObject;)Z
    .locals 9

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Xe:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto/16 :goto_2

    .line 74
    :cond_0
    const-string v0, "switch"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 75
    const-string v3, "speed"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float p1, v3

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->tb:F

    const/4 v3, 0x0

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_1

    .line 76
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zxE()Lcom/bytedance/sdk/openadsdk/core/model/LpP;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 77
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zxE()Lcom/bytedance/sdk/openadsdk/core/model/LpP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/LpP;->oJ()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->tb:F

    :cond_1
    if-nez v0, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    .line 78
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->tb:F

    .line 79
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->jr:Z

    if-eqz p1, :cond_4

    .line 80
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->si:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Ry:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->si:J

    .line 81
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    if-eqz p1, :cond_2

    .line 82
    invoke-interface {p1, v3, v4}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->oJ(J)V

    .line 83
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cdg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    if-eqz p1, :cond_4

    .line 84
    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->ex(Z)V

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    .line 85
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->jr:Z

    if-nez p1, :cond_4

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Ry:J

    .line 87
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cdg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    if-eqz p1, :cond_4

    .line 88
    invoke-interface {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->ex(Z)V

    :cond_4
    :goto_0
    if-ne v0, v2, :cond_5

    move p1, v2

    goto :goto_1

    :cond_5
    move p1, v1

    .line 89
    :goto_1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->jr:Z

    .line 90
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Xe:I

    if-ne p1, v2, :cond_6

    return v2

    .line 91
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    if-nez p1, :cond_7

    return v1

    .line 92
    :cond_7
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->tb:F

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->oJ(F)Z

    move-result p1

    return p1

    .line 93
    :cond_8
    :goto_2
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->jr:Z

    return v1
.end method

.method public ofl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->ofl()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public oq()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->ZYk()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public si()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

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

.method public so()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->si()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->BTZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    return-object v0
.end method

.method public tB(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->tB:Z

    return-void
.end method

.method public tB()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->jr:Z

    return v0
.end method

.method public tb()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->jFA()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public wd()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/View;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method
