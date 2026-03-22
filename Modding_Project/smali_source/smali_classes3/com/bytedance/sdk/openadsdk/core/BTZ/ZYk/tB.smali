.class public Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;
.super Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$oJ;
    }
.end annotation


# instance fields
.field private Dex:Z

.field private final HyG:Ljava/lang/String;

.field private Jm:Z

.field private final LS:Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;

.field private NO:I

.field private Qu:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$ex;",
            ">;"
        }
    .end annotation
.end field

.field private final Rl:Z

.field private XAo:J

.field private Yg:I

.field private bgF:I

.field private final cdg:Z

.field private final jB:Ljava/lang/Runnable;

.field private lY:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

.field private mwH:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ZYk;

.field private nQI:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$oJ;",
            ">;"
        }
    .end annotation
.end field

.field private oTd:I

.field private ofl:J

.field private sH:I

.field private final wd:Z

.field private final yz:Lcom/bytedance/sdk/component/utils/HL$oJ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ZZZLcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/view/ViewGroup;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->XAo:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->ofl:J

    .line 9
    .line 10
    const/4 p3, 0x1

    .line 11
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Jm:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->bgF:I

    .line 15
    .line 16
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Yg:I

    .line 17
    .line 18
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->LS:Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;

    .line 24
    .line 25
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->NO:I

    .line 26
    .line 27
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$4;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->jB:Ljava/lang/Runnable;

    .line 33
    .line 34
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$6;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->yz:Lcom/bytedance/sdk/component/utils/HL$oJ;

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Dex:Z

    .line 42
    .line 43
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Ry;->tB(Landroid/content/Context;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->sH:I

    .line 48
    .line 49
    invoke-virtual {p0, p5}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(Z)V

    .line 50
    .line 51
    .line 52
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->HyG:Ljava/lang/String;

    .line 53
    .line 54
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 55
    .line 56
    .line 57
    move-result p4

    .line 58
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->bgF:I

    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Yg:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    :catchall_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oJ(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->wd:Z

    .line 70
    .line 71
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->cdg:Z

    .line 72
    .line 73
    iput-boolean p7, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Rl:Z

    .line 74
    .line 75
    if-eqz p8, :cond_0

    .line 76
    .line 77
    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->lY:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    .line 78
    .line 79
    :cond_0
    return-void
.end method

.method static synthetic BHY(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic BTZ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic BWx(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic Dex(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic EP(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oq:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic HL(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic HyG(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->ofl:J

    return-wide v0
.end method

.method static synthetic IUZ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->wd:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic Id(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/ex/cFZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->lY:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic JJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->eZI:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic Jc(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Jm(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->IUZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;

    return-object p0
.end method

.method private Jm()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->cFZ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->PiB:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->QSm()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->mu:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->eZI:Z

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(ZJZ)V

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln()V

    :cond_3
    return-void
.end method

.method static synthetic LS(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Ln(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic LpP(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic MVA(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic MoK(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic NO(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic NX(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic PdF(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method private Pfn(I)V
    .locals 1

    .line 13
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->sH:I

    if-ne v0, p1, :cond_0

    return-void

    .line 14
    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->sH:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ry:Z

    .line 16
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ry:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->PiB()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->cdg:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 17
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->tB(II)Z

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->nQI:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->nQI:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$oJ;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->sH:I

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$oJ;->oJ(I)V

    :cond_3
    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Rl()V

    return-void
.end method

.method static synthetic PiB(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic QSm(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Qu(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    return-object p0
.end method

.method private Qu()V
    .locals 8

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->nQI()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ex()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Pfn()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v2, :cond_9

    if-lez v3, :cond_9

    if-lez v1, :cond_9

    if-gtz v0, :cond_1

    goto :goto_4

    :cond_1
    if-ne v0, v1, :cond_3

    if-le v2, v3, :cond_2

    move v0, v3

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/high16 v6, 0x3f800000    # 1.0f

    if-le v0, v1, :cond_4

    int-to-float v0, v0

    mul-float/2addr v0, v6

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-double v6, v2

    mul-double/2addr v6, v4

    float-to-double v0, v0

    div-double/2addr v6, v0

    double-to-int v0, v6

    move v1, v2

    goto :goto_1

    :cond_4
    int-to-float v1, v1

    mul-float/2addr v1, v6

    int-to-float v0, v0

    div-float/2addr v1, v0

    int-to-double v6, v3

    mul-double/2addr v6, v4

    float-to-double v0, v1

    div-double/2addr v6, v0

    double-to-int v0, v6

    move v1, v0

    move v0, v3

    :goto_1
    if-gt v0, v3, :cond_6

    if-gtz v0, :cond_5

    goto :goto_2

    :cond_5
    move v3, v0

    :cond_6
    :goto_2
    if-gt v1, v2, :cond_8

    if-gtz v1, :cond_7

    goto :goto_3

    :cond_7
    move v2, v1

    .line 7
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$5;

    invoke-direct {v1, p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_9
    :goto_4
    return-void

    .line 8
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->dLZ:Landroid/content/Context;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->nQI()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 9
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void
.end method

.method static synthetic Qzd(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic RZ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Rl(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->UN:J

    return-wide v0
.end method

.method private Rl()V
    .locals 8

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->NO:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->NO:I

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ZYk()V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->IUZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;

    if-eqz v0, :cond_1

    .line 6
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->ofl:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->UN:J

    invoke-static {v4, v5, v6, v7}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ex/oJ;->oJ(JJ)I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;->oJ(JI)V

    .line 7
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->XAo:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->ofl:J

    .line 8
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Jm:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0, v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/ref/WeakReference;Z)V

    .line 10
    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Id:Z

    if-nez v0, :cond_3

    .line 11
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Id:Z

    .line 12
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->UN:J

    invoke-direct {p0, v3, v4, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->ZYk(JJ)V

    .line 13
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->UN:J

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->kkU:J

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->lY:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk(Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    .line 15
    :cond_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->awB:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->RZ:Z

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Pfn(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/view/View;)V

    .line 17
    :cond_4
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->WcQ:Z

    return-void
.end method

.method static synthetic Ry(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->mu()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic SCr(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic SWT(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic TA(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic UF(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic UK(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic UN(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Uf(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic VJm(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic VSB(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic WcQ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Wek(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic XAo(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic XQY(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Xe(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic YF(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic YQ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->IUZ()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Yg(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ZMY(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p0
.end method

.method private ZYk(JJ)V
    .locals 7

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(J)V

    .line 11
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    .line 12
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->UN:J

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(JJ)V

    .line 14
    invoke-static {p1, p2, p3, p4}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ex/oJ;->oJ(JJ)I

    move-result v0

    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(I)V

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->IUZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;

    if-eqz v0, :cond_0

    .line 17
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;->oJ(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 18
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    const-string v2, "onProgressUpdate error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 21
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(JJLcom/bytedance/sdk/openadsdk/core/dLZ/ba;)V

    :cond_1
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;JJ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->ZYk(JJ)V

    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Xe:Z

    return p1
.end method

.method static synthetic Zzm(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic awB(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->awB:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic bD(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    return-object p0
.end method

.method private ba(I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Pfn(I)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->si:Z

    :cond_0
    return-void
.end method

.method static synthetic bgF(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic cFZ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p0
.end method

.method static synthetic cY(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic cdg(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    return-wide v0
.end method

.method static synthetic dLZ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->jB:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic eXp(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic eZI(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->nQI:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    return-object p0
.end method

.method private ex(II)Z
    .locals 2

    .line 1
    const/16 v0, -0x3f2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ef

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ec

    if-eq p1, v0, :cond_0

    const/16 v0, -0x6e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eq p2, v1, :cond_1

    const/16 v0, 0x2bc

    if-eq p2, v0, :cond_1

    const/16 v0, 0x320

    if-eq p2, v0, :cond_1

    move v1, p1

    :cond_1
    return v1
.end method

.method static synthetic hwh(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ib(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic jB(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Qu()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic jFA(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oq:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic jXJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic jr(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Qu:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic kkU(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->IUZ()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic lY(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic mu(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic mwH(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method private nQI()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->dLZ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic nQI(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p0
.end method

.method static synthetic nke(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oCU(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic oG(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oIC(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->XAo:J

    return-wide p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p0
.end method

.method private oJ(Landroid/content/Context;)V
    .locals 9

    .line 16
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->awB:Z

    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Lcom/bytedance/sdk/openadsdk/WcQ/WcQ;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/WcQ/WcQ;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 18
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/WcQ/PiB;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/WcQ/PiB;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 19
    :goto_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->awB:Z

    if-eqz v0, :cond_1

    .line 20
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Id()Z

    move-result v8

    const/4 v4, 0x1

    const/16 v5, 0x11

    move-object v1, v0

    move-object v2, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    goto :goto_2

    .line 21
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x11

    move-object v1, v0

    move-object v2, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ex;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 22
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/oJ;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->ba(I)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;JJ)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(JJ)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;II)Z
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->ex(II)Z

    move-result p0

    return p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Xe:Z

    return p1
.end method

.method static synthetic oTd(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ofl(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    return-object p0
.end method

.method static synthetic oo(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->nQI()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic oq(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic rg(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic sH(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic sQ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic si(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic so(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    return-object p0
.end method

.method private tB(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V
    .locals 3

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ex(I)V

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    invoke-virtual {v1, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->XAo:J

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB(I)V

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB(I)V

    .line 9
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(Ljava/lang/Runnable;)V

    .line 10
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->awB:Z

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->eZI()V

    :cond_0
    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    return-void
.end method

.method private tB(II)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk()V

    .line 18
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->si:Z

    .line 19
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz v2, :cond_0

    .line 20
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/ref/WeakReference;Z)V

    :cond_0
    const/4 v2, 0x4

    if-eq p2, v2, :cond_2

    if-eqz p2, :cond_2

    .line 21
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz p2, :cond_1

    .line 22
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ()V

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk()V

    .line 24
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->si:Z

    .line 25
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ry:Z

    .line 26
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz p2, :cond_3

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Rl:Z

    invoke-virtual {p2, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(ILcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;Z)Z

    move-result p1

    return p1

    :cond_2
    if-ne p2, v2, :cond_3

    .line 28
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->si:Z

    .line 29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz p1, :cond_3

    .line 30
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->awB()V

    :cond_3
    return v1
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Xe:Z

    return p1
.end method

.method static synthetic tb(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic uvK(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic wd(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->IUZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;

    return-object p0
.end method

.method static synthetic yQF(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic yz(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic zGT(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public HyG()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->nke()V

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Id:Z

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->lY:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->jFA()V

    :cond_0
    return-void
.end method

.method public Pfn()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->BTZ()V

    .line 4
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Jm:Z

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    const-string v0, "embeded_ad"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->HyG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/ref/WeakReference;Z)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->QSm()V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->BTZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->awB:Z

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->ofl()V

    :cond_3
    return-void
.end method

.method public ZYk(II)V
    .locals 1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oJ(II)V

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB(II)V

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(II)V

    .line 9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Qu()V

    :cond_0
    return-void
.end method

.method public ba(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Jm:Z

    return-void
.end method

.method public cFZ(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Ry()V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Jm()V

    return-void
.end method

.method public cdg()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oTd:I

    return v0
.end method

.method public eZI()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Dex:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cY:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Dex:Z

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->yz:Lcom/bytedance/sdk/component/utils/HL$oJ;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/HL;->oJ(Lcom/bytedance/sdk/component/utils/HL$oJ;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ex()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oJ(ZI)V

    return-void
.end method

.method public ex(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oTd:I

    return-void
.end method

.method public oJ(Landroid/view/View;Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;",
            ">;>;)",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->SzJ()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    if-eqz p2, :cond_3

    .line 27
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 28
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    if-eqz p2, :cond_1

    .line 29
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_2

    sget-object v0, Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    goto :goto_1

    :cond_2
    check-cast v0, Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    .line 30
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/view/View;

    invoke-virtual {v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    goto :goto_0

    .line 31
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public oJ()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->jFA()V

    :cond_0
    return-void
.end method

.method public oJ(II)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->bgF:I

    .line 14
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Yg:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final oJ(IZ)V
    .locals 2

    if-nez p2, :cond_0

    .line 80
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Jc:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 81
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Jc:Z

    .line 82
    :cond_1
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Id:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 83
    new-instance p2, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;

    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;-><init>()V

    .line 84
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ZYk(J)V

    .line 85
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex(J)V

    .line 86
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB(J)V

    .line 87
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB(I)V

    .line 88
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex(I)V

    .line 89
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->LpP:Z

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB(Z)V

    .line 90
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->lY:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    :cond_2
    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/view/View;)V
    .locals 2

    .line 91
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-nez p1, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ba()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk()V

    .line 94
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ZYk(ZZ)V

    .line 95
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ba()V

    return-void

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->cFZ()Z

    move-result p1

    if-nez p1, :cond_3

    .line 97
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz p1, :cond_2

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB(Landroid/view/ViewGroup;)V

    .line 99
    :cond_2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Pfn(J)V

    .line 100
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz p1, :cond_4

    .line 101
    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ZYk(ZZ)V

    return-void

    .line 102
    :cond_3
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->cFZ(Z)V

    .line 103
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz p1, :cond_4

    .line 104
    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ZYk(ZZ)V

    :cond_4
    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/view/View;Z)V
    .locals 0

    .line 105
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->RZ:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB(Z)V

    .line 106
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->dLZ:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz p1, :cond_1

    .line 108
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ZYk(Landroid/view/ViewGroup;)V

    .line 109
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB(Z)V

    .line 110
    :cond_1
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(I)V

    .line 111
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->HL:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$ZYk;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 112
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->RZ:Z

    invoke-interface {p1, p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$ZYk;->oJ(Z)V

    :cond_3
    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$ex;)V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Qu:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->awB:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ZYk;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->mwH:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ZYk;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$oJ;)V
    .locals 2

    .line 9
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->awB:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz v0, :cond_0

    .line 10
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$oJ;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$oJ;)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$oJ;)V
    .locals 1

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->nQI:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public oJ(ZI)V
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Id:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oJ(IZ)V

    .line 75
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Id:Z

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->LpP()V

    .line 77
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Pfn()V

    .line 78
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    if-eqz p1, :cond_2

    .line 79
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ex()V

    :cond_2
    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)Z
    .locals 9

    .line 35
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)Z

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 37
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v0, ""

    const-string v2, "twice playVideoUrl"

    invoke-static {v0, v2, p1}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->eZI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 39
    :cond_1
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk(Z)V

    .line 40
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->eZI()Ljava/lang/String;

    .line 41
    const-string v0, "player_force_raw_url"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ZYk(Z)V

    .line 42
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oTd:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oTd:I

    .line 43
    iput v0, p1, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Pfn:I

    .line 44
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V

    .line 45
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->nke()V

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    .line 47
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(ZF)V

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->HyG:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->ZYk(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_4

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    cmp-long v0, v5, v3

    if-gtz v0, :cond_5

    .line 49
    :cond_4
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->kkU()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    .line 50
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->HyG:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->ZYk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    iget-wide v7, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->UN:J

    cmp-long v0, v5, v7

    if-nez v0, :cond_6

    .line 51
    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    .line 52
    :cond_6
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->kkU()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-gtz v0, :cond_7

    .line 53
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Id:Z

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    .line 55
    :cond_7
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->kkU()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    .line 56
    iget-wide v7, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->kkU:J

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->kkU:J

    .line 57
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz v0, :cond_9

    .line 58
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ()V

    .line 59
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->NO:I

    if-nez v0, :cond_8

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->cFZ()V

    .line 61
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->so()I

    move-result v5

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->jFA()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB(II)V

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB(Landroid/view/ViewGroup;)V

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->so()I

    move-result v5

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->jFA()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(II)V

    .line 64
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-nez v0, :cond_a

    .line 65
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    .line 66
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->LS:Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;)V

    .line 67
    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ry()V

    .line 68
    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->ofl:J

    .line 69
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->tB(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 70
    new-instance v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;

    const/16 v1, -0xa

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;-><init>(IILjava/lang/String;)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;)V

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "[video] invoke NativeVideoController#playVideo cause exception :"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public ofl()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Dex:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cY:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Dex:Z

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->yz:Lcom/bytedance/sdk/component/utils/HL$oJ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/HL;->oJ(Lcom/bytedance/sdk/component/utils/HL$oJ;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public tB()V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ()V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Ry()V

    .line 16
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Jm()V

    return-void
.end method

.method public tB(I)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Pfn(I)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->si:Z

    .line 33
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->tB()V

    :cond_0
    return-void
.end method

.method public wd()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    .line 3
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(I)V

    :cond_0
    return-void
.end method
