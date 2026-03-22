.class public Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;
.super Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;
    }
.end annotation


# instance fields
.field private final HyG:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

.field private Jm:Z

.field private final Qu:I

.field private Rl:J

.field protected XAo:J

.field private Yg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;

.field private final bgF:Ljava/lang/Runnable;

.field private cdg:J

.field private final nQI:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected ofl:Z

.field final wd:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB$ZYk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/view/ViewGroup;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->cdg:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->Rl:J

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->Jm:Z

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->XAo:J

    .line 14
    .line 15
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->ofl:Z

    .line 16
    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->nQI:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$1;

    .line 25
    .line 26
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->wd:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB$ZYk;

    .line 30
    .line 31
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$4;

    .line 32
    .line 33
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->bgF:Ljava/lang/Runnable;

    .line 37
    .line 38
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    .line 39
    .line 40
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->Qu:I

    .line 45
    .line 46
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->SzJ()Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    .line 53
    .line 54
    if-eqz p2, :cond_1

    .line 55
    .line 56
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 57
    .line 58
    if-nez p2, :cond_0

    .line 59
    .line 60
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 65
    .line 66
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 67
    .line 68
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    .line 69
    .line 70
    invoke-virtual {p2, p4, p3}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    new-instance v2, Lcom/bytedance/sdk/openadsdk/WcQ/WcQ;

    .line 80
    .line 81
    invoke-direct {v2, p1}, Lcom/bytedance/sdk/openadsdk/WcQ/WcQ;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    const/16 v4, 0x11

    .line 85
    .line 86
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 87
    .line 88
    const/4 v3, 0x1

    .line 89
    move-object v0, p2

    .line 90
    move-object v6, p0

    .line 91
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;)V

    .line 92
    .line 93
    .line 94
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 95
    .line 96
    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/oJ;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method static synthetic Amz(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic BHY(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic BTZ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic BWx(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Dex(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic EP(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->nQI()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic HL(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic HyG(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    return-wide v0
.end method

.method static synthetic IUZ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Id(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic JJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic Jc(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Jm(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    return-object p0
.end method

.method private Jm()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk(Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jr:Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;->oq()I

    move-result v1

    iput v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Pfn:I

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ba(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/si/tB;->oJ(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->nke()V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->nQI:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    return-void
.end method

.method static synthetic LE(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic LS(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Ln(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic LpP(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic MVA(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic MoK(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic NO(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic NX(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Oof(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic PdF(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->bgF()V

    return-void
.end method

.method static synthetic PiB(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->IUZ()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic QSm(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/ex/cFZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Qu(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p0
.end method

.method private Qu()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Jc()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;->tB(I)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jr:Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->cdg:J

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB(I)V

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB(I)V

    .line 7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic Qzd(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic RZ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Rl(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->IUZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;

    return-object p0
.end method

.method static synthetic Ry(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic SB(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->IUZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic SCr(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic SWT(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic TA(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic TNk(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic UF(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic UK(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->Yg()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic UN(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic UUI(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->eZI:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic Uf(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic VJm(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic VSB(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic WGj(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic WcQ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->bgF:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Wd(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->IUZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Wek(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic XAo(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic XQY(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic XSu(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Xe(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic YF(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic YQ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Yg(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    return-object p0
.end method

.method private Yg()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->dzr()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic ZMY(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    return-object p0
.end method

.method private ZYk(FF)V
    .locals 11

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BHY()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->lY()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;)[I

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Tt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 10
    :goto_0
    aget v4, v0, v2

    int-to-float v6, v4

    .line 11
    aget v0, v0, v3

    int-to-float v7, v0

    if-eqz v1, :cond_2

    cmpl-float v0, p1, p2

    if-lez v0, :cond_3

    const/4 v10, 0x1

    move-object v5, p0

    move v8, p1

    move v9, p2

    .line 12
    invoke-direct/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->oJ(FFFFZ)V

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_2
    cmpg-float v0, p1, p2

    if-gez v0, :cond_3

    const/4 v10, 0x0

    move-object v5, p0

    move v8, p1

    move v9, p2

    .line 13
    invoke-direct/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->oJ(FFFFZ)V

    return-void

    :cond_3
    div-float v0, p1, p2

    div-float v4, v6, v7

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v8, 0x41100000    # 9.0f

    if-eqz v1, :cond_4

    const/high16 v1, 0x3f100000    # 0.5625f

    cmpg-float v4, v4, v1

    if-gez v4, :cond_5

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    mul-float/2addr v8, v7

    div-float p1, v8, v5

    move v2, v3

    move p2, v7

    goto :goto_1

    :cond_4
    const v1, 0x3fe38e39

    cmpl-float v4, v4, v1

    if-lez v4, :cond_5

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    mul-float/2addr v8, v6

    div-float p2, v8, v5

    move v2, v3

    move p1, v6

    :cond_5
    :goto_1
    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    move v6, p1

    move v7, p2

    .line 14
    :goto_2
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p2, v6

    float-to-int v0, v7

    invoke-direct {p1, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 15
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 17
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object v1

    instance-of v1, v1, Landroid/view/TextureView;

    if-eqz v1, :cond_7

    .line 18
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 19
    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object v1

    instance-of v1, v1, Landroid/view/SurfaceView;

    if-eqz v1, :cond_8

    .line 20
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 22
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 23
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 24
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    return-void

    .line 25
    :goto_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    const-string v0, "changeSize error"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private ZYk(JJ)V
    .locals 9

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(J)V

    .line 27
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    .line 28
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->UN:J

    .line 29
    invoke-static {p1, p2, p3, p4}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ex/oJ;->oJ(JJ)I

    move-result v7

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$5;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;JJI)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;FF)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->ZYk(FF)V

    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;JJ)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->ZYk(JJ)V

    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Xe:Z

    return p1
.end method

.method static synthetic Zjw(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Zzm(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic awB(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic bD(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic bgF(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    return-object p0
.end method

.method private bgF()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->bgF:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ZYk()V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->cdg:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->Rl:J

    .line 6
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->Jm:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 7
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->Jm:Z

    .line 8
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->UN:J

    invoke-direct {p0, v2, v3, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->ZYk(JJ)V

    .line 9
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->UN:J

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->kkU:J

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk(Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->IUZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;

    if-eqz v0, :cond_2

    .line 12
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->Rl:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->UN:J

    invoke-static {v4, v5, v6, v7}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ex/oJ;->oJ(JJ)I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;->oJ(JI)V

    .line 13
    :cond_2
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->WcQ:Z

    return-void
.end method

.method static synthetic cFZ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic cY(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic cdg(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->UN:J

    return-wide v0
.end method

.method static synthetic dLZ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic dZS(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->IUZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic eW(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic eXp(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic eZI(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    return-object p0
.end method

.method static synthetic edj(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    return-object p0
.end method

.method static synthetic hwh(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ib(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->IUZ()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic jB(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic jFA(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic jXJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jr:Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic jr(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic kkU(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->Yg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic lY(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p0
.end method

.method private lY()Z
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uvK()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ex;->oJ(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BWx()Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PdF()Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :goto_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->EP()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    :goto_2
    return v2
.end method

.method static synthetic mu(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic mwH(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic nQI(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p0
.end method

.method private nQI()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jr:Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;->ba:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->Qu:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->so(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x1388

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->ofl()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 5
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->bgF:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->bgF:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic nke(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oCU(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oG(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oIC(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->cdg:J

    return-wide p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->nQI:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private oJ(FF)V
    .locals 4

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v0, v2

    div-float v3, p1, v3

    int-to-float v1, v1

    mul-float/2addr v2, v1

    div-float v2, p2, v2

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_1

    div-float p2, v1, p2

    mul-float v0, p1, p2

    goto :goto_0

    :cond_1
    div-float p1, v0, p1

    mul-float v1, p2, p1

    .line 70
    :goto_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p2, v0

    float-to-int v0, v1

    invoke-direct {p1, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xd

    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object p2

    instance-of p2, p2, Landroid/view/TextureView;

    if-eqz p2, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object p2

    instance-of p2, p2, Landroid/view/SurfaceView;

    if-eqz p2, :cond_3

    .line 75
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    return-void

    .line 76
    :goto_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    const-string v0, "changeVideoSizeSupportInteraction error"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private oJ(FFFFZ)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-lez v1, :cond_0

    cmpg-float v1, p4, v0

    if-gtz v1, :cond_1

    .line 77
    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->tB()I

    move-result p3

    int-to-float p3, p3

    .line 78
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object p4

    invoke-virtual {p4}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ZYk()I

    move-result p4

    int-to-float p4, p4

    :cond_1
    cmpg-float v1, p4, v0

    if-lez v1, :cond_8

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz p5, :cond_4

    cmpg-float p2, p3, p4

    if-gez p2, :cond_3

    return-void

    :cond_3
    mul-float/2addr p4, p1

    div-float/2addr p4, p3

    .line 79
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p1, p1

    float-to-int p3, p4

    invoke-direct {p2, p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_4
    cmpl-float p1, p3, p4

    if-lez p1, :cond_5

    return-void

    :cond_5
    mul-float/2addr p3, p2

    div-float/2addr p3, p4

    .line 80
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p3, p3

    float-to-int p2, p2

    invoke-direct {p1, p3, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object p2, p1

    :goto_0
    const/16 p1, 0xd

    .line 81
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 83
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object p1

    instance-of p1, p1, Landroid/view/TextureView;

    if-eqz p1, :cond_6

    .line 84
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 85
    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object p1

    instance-of p1, p1, Landroid/view/SurfaceView;

    if-eqz p1, :cond_7

    .line 86
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 88
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/component/adexpress/ex/ZYk;->oJ(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    if-lez p3, :cond_8

    if-eqz p1, :cond_8

    .line 89
    iget p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 90
    iget p2, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 91
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_8
    :goto_2
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;FF)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->tB(FF)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;JJ)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(JJ)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;Z)Z
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Xe:Z

    return p1
.end method

.method static synthetic oTd(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ofl(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->IUZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;

    return-object p0
.end method

.method static synthetic oo(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic oq(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->mu()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic rg(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic sH(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic sQ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic si(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic so(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    return-object p0
.end method

.method private tB(FF)V
    .locals 9

    .line 22
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-nez v0, :cond_0

    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Tt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v8, v2

    goto :goto_0

    :cond_1
    move v8, v1

    .line 24
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;)[I

    move-result-object v0

    .line 25
    aget v1, v0, v1

    int-to-float v4, v1

    .line 26
    aget v0, v0, v2

    int-to-float v5, v0

    move-object v3, p0

    move v6, p1

    move v7, p2

    .line 27
    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->oJ(FFFFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;FF)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->oJ(FF)V

    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Xe:Z

    return p1
.end method

.method static synthetic tb(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic uaj(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic uq(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic uvK(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic wd(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->Rl:J

    return-wide v0
.end method

.method static synthetic yB(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->Jm()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic yQF(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ypD(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->IUZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic yz(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic zGT(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public Pfn()V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->ex()V

    return-void
.end method

.method public Rl()V
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

.method public Xe()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public cdg()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(I)V

    :cond_0
    return-void
.end method

.method protected eZI()V
    .locals 0

    .line 1
    return-void
.end method

.method public ex()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->BTZ()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->jFA()V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->bgF:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ex()V

    :cond_2
    return-void
.end method

.method public oJ()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->Jm()V

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->jFA()V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/view/View;)V
    .locals 2

    .line 92
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-nez p1, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ba()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk()V

    .line 95
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ZYk(ZZ)V

    .line 96
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ba()V

    return-void

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->cFZ()Z

    move-result p1

    if-nez p1, :cond_3

    .line 98
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz p1, :cond_2

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB(Landroid/view/ViewGroup;)V

    .line 100
    :cond_2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Pfn(J)V

    .line 101
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz p1, :cond_4

    .line 102
    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ZYk(ZZ)V

    return-void

    .line 103
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->tB()V

    .line 104
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz p1, :cond_4

    .line 105
    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ZYk(ZZ)V

    :cond_4
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->Yg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;

    return-void
.end method

.method protected oJ(ZFF)V
    .locals 3

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BHY()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->lY()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v0, p2

    float-to-int v1, p3

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    .line 11
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object v0

    instance-of v0, v0, Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object v0

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_5

    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    if-eqz v0, :cond_5

    mul-float/2addr p2, v1

    float-to-int p2, p2

    .line 20
    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-float/2addr p3, v1

    float-to-int p2, p3

    .line 21
    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 22
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object p2

    instance-of p2, p2, Landroid/view/TextureView;

    if-eqz p2, :cond_3

    .line 23
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 24
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object p2

    instance-of p2, p2, Landroid/view/SurfaceView;

    if-eqz p2, :cond_4

    .line 25
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->HyG()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jr:Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;

    iget p2, p2, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;->ba:I

    const/4 p3, 0x4

    if-ne p2, p3, :cond_5

    .line 27
    iget p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 28
    iget p1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-void

    .line 30
    :goto_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    const-string p3, "changeSize error"

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public oJ(ZI)V
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->ex()V

    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)Z
    .locals 7
    .param p1    # Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)Z

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->eZI()Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->eZI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 35
    :cond_1
    const-string v0, "player_force_raw_url"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ZYk(Z)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V

    .line 37
    invoke-virtual {p1, v2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ex(I)V

    .line 38
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->eZI()Ljava/lang/String;

    move-result-object v0

    const-string v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->ofl:Z

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    if-eqz v0, :cond_6

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jr:Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;->ba:I

    if-ne v0, v2, :cond_3

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->xwf()I

    move-result v0

    goto :goto_1

    .line 42
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->HUl()I

    move-result v0

    .line 43
    :goto_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    .line 44
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_4

    .line 45
    :try_start_0
    sget v4, Lcom/bytedance/sdk/openadsdk/utils/eZI;->BTZ:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 46
    sget v5, Lcom/bytedance/sdk/openadsdk/utils/eZI;->jA:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 47
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    sget-object v6, Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    invoke-virtual {v5, v3, v6}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    .line 48
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    invoke-virtual {v3, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :catchall_0
    :cond_4
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    if-lez v0, :cond_5

    move v1, v2

    :cond_5
    int-to-float v0, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v0, v4

    invoke-virtual {v3, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(ZF)V

    .line 50
    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->nke()V

    .line 51
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->kkU()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_7

    .line 52
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->kkU()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    .line 53
    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->kkU:J

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->kkU:J

    .line 54
    :cond_7
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->UN:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_8

    .line 55
    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    .line 56
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz v0, :cond_9

    .line 57
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ()V

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->cFZ()V

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->so()I

    move-result v1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->jFA()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB(II)V

    .line 60
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB(Landroid/view/ViewGroup;)V

    .line 61
    :cond_9
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->wd:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB$ZYk;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;)V

    .line 63
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ry()V

    .line 64
    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->Rl:J

    .line 65
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->Qu()V

    return v2
.end method

.method public ofl()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->wd:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB$ZYk;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;II)V

    return-void
.end method

.method public tB()V
    .locals 5

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ()V

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->awB()V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Ry()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->cFZ()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 10
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->PiB:Z

    if-eqz v0, :cond_2

    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->Id()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ZYk(I)V

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;->Ry()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->eZI:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(ZJZ)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->QSm()V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->mu:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->eZI:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(ZJZ)V

    .line 17
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->Jm:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln()V

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->tB(J)V

    :cond_5
    return-void
.end method

.method public wd()V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->Jm:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->tB(J)V

    :cond_0
    return-void
.end method
