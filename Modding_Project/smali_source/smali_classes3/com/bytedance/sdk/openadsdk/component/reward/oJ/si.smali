.class public Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/BTZ/so;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$oJ;,
        Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$tB;,
        Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$ZYk;,
        Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$ex;
    }
.end annotation


# instance fields
.field private BTZ:I

.field private Dex:Z

.field private HL:J

.field private HyG:Z

.field private IUZ:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/ZYk/tB$oJ;",
            ">;"
        }
    .end annotation
.end field

.field private Id:Z

.field private Jc:Lcom/bytedance/sdk/openadsdk/common/PiB;

.field private Jm:J

.field private volatile LS:I

.field private Ln:Z

.field private LpP:F

.field private MoK:Z

.field private NO:J

.field Pfn:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

.field private final PiB:Z

.field private QSm:Z

.field private Qu:J

.field private final RZ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Rl:Z

.field private Ry:Z

.field private TA:I

.field private UN:Z

.field private WcQ:I

.field private XAo:Z

.field private Xe:F

.field private Yg:I

.field ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

.field private awB:I

.field ba:I

.field private bgF:I

.field cFZ:Ljava/lang/String;

.field private cY:Landroid/view/View;

.field private cdg:Z

.field private final dLZ:Ljava/lang/String;

.field private eZI:Lcom/bytedance/sdk/component/jFA/ba;

.field protected ex:Ljava/lang/String;

.field private jB:Z

.field jFA:Z

.field private jr:Landroid/view/View;

.field public kkU:Z

.field private lY:Ljava/lang/String;

.field private final mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

.field private mwH:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

.field private volatile nQI:I

.field private nke:F

.field private oIC:Ljava/lang/String;

.field oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

.field private volatile oTd:I

.field private ofl:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

.field private oq:Z

.field private sH:Lcom/bytedance/sdk/openadsdk/common/ex;

.field private si:Lcom/bytedance/sdk/component/jFA/ba;

.field protected so:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

.field protected tB:Z

.field private tb:F

.field private wd:Z

.field private yz:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ba$oJ;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->tB:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Ry:Z

    .line 9
    .line 10
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->RZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ba:I

    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->cFZ:Ljava/lang/String;

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->jFA:Z

    .line 24
    .line 25
    new-instance v2, Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->IUZ:Landroid/util/SparseArray;

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Ln:Z

    .line 33
    .line 34
    const/high16 v0, -0x40800000    # -1.0f

    .line 35
    .line 36
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->LpP:F

    .line 37
    .line 38
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->nke:F

    .line 39
    .line 40
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->XAo:Z

    .line 41
    .line 42
    const-wide/16 v2, -0x1

    .line 43
    .line 44
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Jm:J

    .line 45
    .line 46
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->nQI:I

    .line 47
    .line 48
    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Yg:I

    .line 50
    .line 51
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oTd:I

    .line 52
    .line 53
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->LS:I

    .line 54
    .line 55
    const-wide/16 v2, 0x0

    .line 56
    .line 57
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->NO:J

    .line 58
    .line 59
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->kkU:Z

    .line 60
    .line 61
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->TA:I

    .line 62
    .line 63
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 64
    .line 65
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->dLZ:Ljava/lang/String;

    .line 68
    .line 69
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ex:Z

    .line 70
    .line 71
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->PiB:Z

    .line 72
    .line 73
    return-void
.end method

.method static synthetic BTZ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oTd:I

    return p0
.end method

.method static synthetic HL(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Ry:Z

    return p0
.end method

.method static synthetic IUZ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Ln:Z

    return p0
.end method

.method static synthetic Id(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->LpP:F

    return p0
.end method

.method static synthetic Ln(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->jr:Landroid/view/View;

    return-object p0
.end method

.method static synthetic LpP(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->cY:Landroid/view/View;

    return-object p0
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Qu()V

    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Dex:Z

    return p1
.end method

.method static synthetic PiB(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oTd:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oTd:I

    return v0
.end method

.method static synthetic QSm(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Xe:F

    return p0
.end method

.method private Qu()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->wd:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->MoK:Z

    .line 6
    .line 7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 10
    .line 11
    const/16 v3, 0x258

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 19
    .line 20
    const/16 v3, 0x2bc

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 28
    .line 29
    const/16 v3, 0x384

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 35
    .line 36
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->RZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UK:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->awB()V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Tjr()Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Tjr()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_0

    .line 67
    .line 68
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->so(I)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->kkU()Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Landroid/view/View$OnClickListener;

    .line 95
    .line 96
    if-eqz v1, :cond_0

    .line 97
    .line 98
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$oJ;

    .line 99
    .line 100
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 101
    .line 102
    invoke-direct {v2, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$oJ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    .line 110
    .line 111
    :cond_0
    return-void
.end method

.method static synthetic RZ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->HL:J

    return-wide v0
.end method

.method static synthetic Ry(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/common/ex;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->sH:Lcom/bytedance/sdk/openadsdk/common/ex;

    return-object p0
.end method

.method static synthetic WcQ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mwH:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    return-object p0
.end method

.method static synthetic Xe(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/common/PiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Jc:Lcom/bytedance/sdk/openadsdk/common/PiB;

    return-object p0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->tb:F

    return p1
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    return-object p0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->jB:Z

    return p1
.end method

.method static synthetic awB(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->LS:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->LS:I

    return v0
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ofl:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

    return-object p0
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->QSm:Z

    return p1
.end method

.method private bgF()Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x2

    .line 14
    :goto_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/ex/Ry;

    .line 15
    .line 16
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->PiB:Z

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    const-string v3, "rewarded_video"

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const-string v3, "fullscreen_interstitial_ad"

    .line 24
    .line 25
    :goto_1
    invoke-direct {v2, v1, v3, v0}, Lcom/bytedance/sdk/openadsdk/ex/Ry;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 26
    .line 27
    .line 28
    return-object v2
.end method

.method static synthetic cFZ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->jB:Z

    return p0
.end method

.method static synthetic cFZ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Ln:Z

    return p1
.end method

.method static synthetic cY(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->nke:F

    return p0
.end method

.method static synthetic dLZ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->LS:I

    return p0
.end method

.method static synthetic eZI(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->nQI:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->nQI:I

    return v0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->nke:F

    return p1
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ba$oJ;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->yz:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ba$oJ;

    return-object p0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oq:Z

    return p1
.end method

.method static synthetic jFA(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->bgF:I

    return p0
.end method

.method static synthetic jr(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->UN:Z

    return p0
.end method

.method static synthetic kkU(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->nQI:I

    return p0
.end method

.method private nQI()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 2
    .line 3
    const-string v1, "showPlayableEndCardOverlay"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 12
    .line 13
    const/16 v1, 0x258

    .line 14
    .line 15
    const-wide/16 v2, 0x3e8

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 23
    .line 24
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$5;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jXJ:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    const-wide/16 v1, 0x0

    .line 39
    .line 40
    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->oJ(J)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method static synthetic nke(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->PiB:Z

    return p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Xe:F

    return p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->TA:I

    return p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->HL:J

    return-wide p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->IUZ:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->jr:Landroid/view/View;

    return-object p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/component/jFA/ba;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    return-object p0
.end method

.method private static oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;III)Ljava/lang/String;
    .locals 4

    .line 83
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->dzr()F

    move-result v0

    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 85
    const-string v2, "&"

    const-string v3, "?"

    if-ne p2, v1, :cond_1

    .line 86
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 88
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 89
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "orientation=portrait"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 90
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 92
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 93
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "height="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&width="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&aspect_ratio="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 94
    :cond_3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 95
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ba;->oJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method private oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$ex;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 111
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 112
    new-instance v1, Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$7;

    invoke-direct {v3, p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$7;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Yg:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/ex/dLZ;I)V

    const/4 v11, 0x1

    .line 113
    invoke-virtual {v1, v11}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->ZYk(Z)Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 114
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ba$oJ;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->yz:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ba$oJ;

    .line 115
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si()Z

    move-result v2

    const-string v3, "landingpage_endcard"

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->oJ(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->dLZ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->ZYk(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    invoke-virtual {v1, v11}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->tB(Z)V

    .line 118
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$8;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$8;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 119
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    if-eqz v1, :cond_1

    .line 120
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ex()Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->oJ(Lcom/bytedance/sdk/openadsdk/QSm/so;)V

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->dLZ:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/component/jFA/ba;Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/common/ex;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->sH:Lcom/bytedance/sdk/openadsdk/common/ex;

    if-eqz v1, :cond_3

    .line 122
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object p1, v3

    :cond_2
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/common/ex;->oJ(Ljava/lang/String;)V

    .line 123
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 124
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/component/jFA/ba;)V

    .line 125
    :cond_4
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$9;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->sH:Lcom/bytedance/sdk/openadsdk/common/ex;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 126
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->eXp()Z

    move-result v1

    const/4 v12, 0x0

    if-nez v1, :cond_6

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v8, v12

    goto :goto_2

    :cond_6
    :goto_1
    move v8, v11

    :goto_2
    move-object v1, p1

    move-object v2, p0

    move-object v9, v0

    move-object v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$9;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/UN;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/common/ex;Lcom/bytedance/sdk/openadsdk/ex/BTZ;ZLcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$ex;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ofl:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

    .line 127
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/jFA/ba;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 128
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ofl:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 129
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ofl:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->PiB:Z

    if-eqz v1, :cond_7

    const-string v1, "rewarded_video"

    goto :goto_3

    :cond_7
    const-string v1, "fullscreen_interstitial_ad"

    :goto_3
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;->oJ(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->eXp()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 131
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz p1, :cond_9

    .line 133
    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$11;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->sH:Lcom/bytedance/sdk/openadsdk/common/ex;

    move-object v0, v6

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$11;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/ex/BTZ;Lcom/bytedance/sdk/openadsdk/common/ex;Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$ex;)V

    invoke-virtual {p1, v6}, Lcom/bytedance/sdk/component/jFA/ba;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 134
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/component/jFA/ba;)V

    .line 135
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    const/4 p2, 0x0

    invoke-virtual {p1, v11, p2}, Lcom/bytedance/sdk/component/jFA/ba;->setLayerType(ILandroid/graphics/Paint;)V

    .line 136
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/jFA/ba;->setBackgroundColor(I)V

    .line 137
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {p1, v12}, Lcom/bytedance/sdk/component/jFA/ba;->setDisplayZoomControls(Z)V

    :cond_a
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Ljava/lang/String;)Z
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->XAo:Z

    return p1
.end method

.method private oJ(Ljava/lang/String;)Z
    .locals 2

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->eXp()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ".mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic oq(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->tb:F

    return p0
.end method

.method static synthetic si(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->RZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic so(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->lY:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic so(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Ry:Z

    return p1
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->LpP:F

    return p1
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->XAo:Z

    return p0
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Rl:Z

    return p1
.end method

.method static synthetic tb(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->IUZ:Landroid/util/SparseArray;

    return-object p0
.end method


# virtual methods
.method public BTZ()Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    return-object v0
.end method

.method public HL()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->so:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ex/ex/tB;->so()V

    :cond_0
    return-void
.end method

.method public HyG()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

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
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public IUZ()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->so:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ex/ex/tB;->cFZ()V

    :cond_0
    return-void
.end method

.method public Id()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->PiB()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->PiB()V

    .line 6
    :cond_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Jm:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Jm:J

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->dLZ()V

    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Z)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p0, v1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/core/UN;Z)V

    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/core/UN;ZZ)V

    .line 16
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->kkU(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->wd:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Tjr()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->jFA()V

    goto :goto_0

    .line 19
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Z)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/core/UN;Z)V

    .line 21
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/core/UN;ZZ)V

    .line 22
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->dLZ()V

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v0, :cond_6

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Z)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p0, v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/core/UN;Z)V

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p0, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/core/UN;ZZ)V

    .line 29
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->wd:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Tjr()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->nQI()V

    goto :goto_1

    .line 31
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Z)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/core/UN;Z)V

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p0, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/core/UN;ZZ)V

    .line 34
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    if-eqz v0, :cond_7

    .line 35
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->cFZ()V

    :cond_7
    return-void
.end method

.method public Jc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->so:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ex/ex/tB;->kkU()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public Jm()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->kkU:Z

    .line 2
    .line 3
    return v0
.end method

.method public Ln()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->oJ(J)V

    :cond_0
    return-void
.end method

.method public LpP()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->jFA:Z

    return v0
.end method

.method public Pfn()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->YQ:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ba()V

    return-void
.end method

.method public Pfn(Z)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->Pfn(Z)V

    .line 7
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    const-string v1, "endcard_mute"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    const-string v1, "volumeChange"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public PiB()Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    return-object v0
.end method

.method public QSm()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->so:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ex/ex/tB;->jFA()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->so()V

    :cond_1
    return-void
.end method

.method public RZ()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->QSm:Z

    return v0
.end method

.method public Rl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->wd:Z

    .line 2
    .line 3
    return v0
.end method

.method public Ry()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->RZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public UN()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->jFA()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public WcQ()Lcom/bytedance/sdk/openadsdk/ex/BTZ;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    return-object v0
.end method

.method public XAo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public Xe()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ex:Ljava/lang/String;

    return-object v0
.end method

.method ZYk()V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->cY:Landroid/view/View;

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cFZ:Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->UN:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Jc:Lcom/bytedance/sdk/openadsdk/common/PiB;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/common/PiB;->ex()Lcom/bytedance/sdk/component/jFA/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->WcQ:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/jFA/ba;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->Pfn()V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->eZI:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/jFA/ba;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->Pfn()V

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setDisplayZoomControls(Z)V

    goto :goto_1

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 19
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setLandingPage(Z)V

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->dLZ:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v1, "landingpage_endcard"

    :goto_2
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setTag(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    new-instance v1, Lcom/bytedance/sdk/component/jFA/ba$oJ;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/jFA/ba$oJ;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->hW()Lcom/bytedance/sdk/component/jFA/ZYk/oJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setMaterialMeta(Lcom/bytedance/sdk/component/jFA/ZYk/oJ;)V

    :cond_5
    return-void
.end method

.method public ZYk(I)V
    .locals 1

    .line 30
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->TA:I

    if-gtz v0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ex(Z)V

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ex(Z)V

    .line 33
    :cond_1
    :goto_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->TA:I

    return-void
.end method

.method public ZYk(Lcom/bytedance/sdk/openadsdk/core/UN;Z)V
    .locals 2

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ex(Z)V

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    const-string v1, "viewStatus"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    const-string p2, "viewableChange"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ZYk(Z)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/core/UN;Z)V

    return-void
.end method

.method public awB()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ba()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/activity/so;->ofl()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/activity/so;->wd()Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oq()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    :cond_0
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ex:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->BTZ()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ex:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->PiB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ex:Ljava/lang/String;

    .line 10
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ex:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->BTZ:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->awB:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->WcQ:I

    invoke-static {v1, v0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ex:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ex:Ljava/lang/String;

    const-string v1, "use_second_endcard=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->HyG:Z

    :cond_4
    return-void
.end method

.method public ba()V
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Rl:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v7, :cond_3

    .line 5
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->HL()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mwH:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    if-nez v0, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PQw()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->lY:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;->ZYk()Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mwH:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mwH:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->lY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;->oJ(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->bgF:I

    if-lez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 10
    :goto_0
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Yg:I

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->lY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    if-eqz v0, :cond_2

    .line 13
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Yg:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->oJ(I)V

    .line 14
    :cond_2
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->NO:J

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mwH:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->lY:Ljava/lang/String;

    const-string v4, "landingpage_endcard"

    move-object v3, v7

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/ex/tB$oJ;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)V

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ex:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ex:Ljava/lang/String;

    const-string v2, "play.google.com/store"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 16
    :cond_4
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ba(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_1

    .line 17
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "preLoadEndCardForce: return mShouldPreloadEndCard "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->tB:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",webViewIsLoading "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Dex:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TTAD.RFWVM"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->tB:Z

    if-eqz v0, :cond_b

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->VJm:Z

    .line 20
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v2, :cond_a

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ex:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_6
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 21
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Dex:Z

    if-eqz v0, :cond_7

    return-void

    .line 22
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ex:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&is_pre_render=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    if-eqz v2, :cond_8

    .line 24
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->ex()V

    .line 25
    :cond_8
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 26
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 27
    :cond_9
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/oq;->oJ(Lcom/bytedance/sdk/component/jFA/ba;Ljava/lang/String;)V

    .line 28
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->oJ(Ljava/lang/String;)V

    .line 29
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Dex:Z

    return-void

    .line 30
    :cond_a
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UN:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->tB()V

    :cond_b
    return-void

    .line 32
    :cond_c
    :goto_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->jFA:Z

    return-void
.end method

.method public ba(Z)V
    .locals 4

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->cdg:Z

    .line 34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 35
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 36
    :try_start_0
    const-string v2, "endcard_overlay_render_type"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :catchall_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->dLZ:Ljava/lang/String;

    const-string v3, "use_second_endcard"

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Jm:J

    .line 39
    :try_start_1
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_2

    .line 40
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UN:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->so()V

    .line 41
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->dLZ:Ljava/lang/String;

    const-string v2, "endcard_close_skip"

    invoke-static {v1, p1, v2, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    const-string v0, "click_endcard_close"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    :catch_0
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jXJ:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->so:I

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->oJ(J)V

    return-void
.end method

.method public cFZ()V
    .locals 10

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->BTZ()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oIC:Ljava/lang/String;

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oIC:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->BTZ:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->awB:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->WcQ:I

    invoke-static {v1, v0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;III)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oIC:Ljava/lang/String;

    .line 8
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$3;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->eXp()Z

    move-result v2

    const/4 v9, 0x1

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v8, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v8, v9

    :goto_1
    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/UN;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ex/BTZ;Z)V

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$4;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    invoke-direct {v1, p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/ex/BTZ;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oIC:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/oq;->oJ(Lcom/bytedance/sdk/component/jFA/ba;Ljava/lang/String;)V

    .line 13
    iput-boolean v9, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oq:Z

    return-void
.end method

.method public cFZ(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->MoK:Z

    return-void
.end method

.method public cY()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ba:I

    return v0
.end method

.method public cdg()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->Pfn()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public dLZ()Lcom/bytedance/sdk/component/jFA/ba;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    return-object v0
.end method

.method public eZI()V
    .locals 13

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ofl;->oJ(Landroid/webkit/WebView;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ofl;->oJ(Landroid/webkit/WebView;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 7
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Qu:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x0

    if-lez v5, :cond_4

    .line 8
    iget-wide v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Jm:J

    cmp-long v3, v7, v3

    if-lez v3, :cond_2

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Jm:J

    sub-long/2addr v3, v7

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Qu:J

    .line 10
    :cond_2
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 11
    :try_start_0
    const-string v1, "endcard_overlay_render_type"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x7

    goto :goto_0

    :cond_3
    move v2, v6

    :goto_0
    invoke-virtual {v10, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :catchall_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->dLZ:Ljava/lang/String;

    const-string v9, "second_endcard_duration"

    iget-wide v11, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Qu:J

    invoke-static/range {v7 .. v12}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V

    :cond_4
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->so:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->so:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;->oJ(Z)V

    .line 16
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->so:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;->BTZ()V

    .line 17
    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    if-eqz v1, :cond_6

    .line 18
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->BTZ()V

    .line 19
    :cond_6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    if-eqz v1, :cond_7

    .line 20
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->BTZ()V

    .line 21
    :cond_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    if-eqz v1, :cond_a

    .line 22
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->eXp()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v6, v2

    :cond_9
    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->ex(Z)V

    .line 23
    :cond_a
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils$AudioInfoReceiver;->ZYk(Lcom/bytedance/sdk/openadsdk/BTZ/so;)V

    return-void
.end method

.method public ex(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn(Z)V

    return-void
.end method

.method public ex()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->cdg:Z

    return v0
.end method

.method public jFA()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    const-string v1, "showPlayableEndCardOverlay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    const/16 v1, 0x258

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$6;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jXJ:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->oJ(J)V

    :cond_0
    return-void
.end method

.method public jr()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->cFZ:Ljava/lang/String;

    return-object v0
.end method

.method public kkU()Lcom/bytedance/sdk/component/jFA/ba;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    return-object v0
.end method

.method public mu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public nke()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->so:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ex/ex/ZYk;->tB()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->so:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ex/ex/tB;->ex()V

    :cond_0
    return-void
.end method

.method public oJ()V
    .locals 4

    .line 9
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Id:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Id:Z

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oTd:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->BTZ:I

    .line 12
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->NO:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->WcQ:I

    .line 13
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jB:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->awB:I

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 15
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk()V

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->NO:J

    return-void
.end method

.method public oJ(F)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;F)V

    return-void
.end method

.method public oJ(I)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 100
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->eXp()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/jFA/ba;->setLandingPage(Z)V

    .line 102
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->dLZ:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v2, "landingpage_endcard"

    :goto_0
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/jFA/ba;->setTag(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->hW()Lcom/bytedance/sdk/component/jFA/ZYk/oJ;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/jFA/ba;->setMaterialMeta(Lcom/bytedance/sdk/component/jFA/ZYk/oJ;)V

    :cond_3
    if-nez p1, :cond_4

    .line 104
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 105
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->cFZ()V

    :cond_4
    return-void
.end method

.method public oJ(II)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 78
    const-string v1, "width"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    const-string p1, "height"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    const-string p2, "resize"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 81
    const-string p2, "TTAD.RFWVM"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public oJ(Landroid/webkit/DownloadListener;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/jFA/ba;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/jFA/ba;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->oJ(Z)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->ZYk(Z)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->oJ(Landroid/webkit/WebView;)V

    .line 143
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/16 v2, 0x1d50

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/RZ;->oJ(Landroid/webkit/WebView;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setUserAgentString(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setMixedContentMode(I)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/BTZ/ba;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V
    .locals 10

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    if-nez v0, :cond_0

    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 26
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v2

    const/4 v3, 0x2

    const-string v4, "click_scence"

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 28
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->bgF()Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->so:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    .line 30
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/UN;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-direct {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/UN;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 31
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cdg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V

    .line 32
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ZiK()Ljava/lang/String;

    move-result-object v2

    .line 33
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Lcom/bytedance/sdk/component/jFA/ba;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v5

    .line 34
    invoke-virtual {v5, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v5

    .line 35
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v5

    .line 36
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/UN;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v5

    .line 37
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/UN;->ex(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v5

    .line 38
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kO()Z

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x7

    if-eqz v6, :cond_2

    move v6, v8

    goto :goto_1

    :cond_2
    move v6, v7

    :goto_1
    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(I)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v5

    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$ZYk;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-direct {v6, v9}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$ZYk;-><init>(Landroid/view/View;)V

    .line 39
    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/BTZ/oJ;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v5

    .line 40
    invoke-virtual {v5, v2}, Lcom/bytedance/sdk/openadsdk/core/UN;->Pfn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    .line 41
    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/component/jFA/ba;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v5

    .line 42
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si()Z

    move-result v6

    const-string v9, "landingpage_endcard"

    if-eqz v6, :cond_3

    move-object v6, v9

    goto :goto_2

    :cond_3
    move-object v6, p2

    :goto_2
    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v5

    .line 43
    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->so:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    .line 44
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$16;

    invoke-direct {v5, p0, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$16;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V

    .line 45
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object p3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$15;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$15;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)V

    .line 46
    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/UN$oJ;)V

    .line 47
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 48
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/UN;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/UN;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 51
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cdg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Lcom/bytedance/sdk/component/jFA/ba;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    .line 54
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    .line 55
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/UN;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    .line 56
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/UN;->ex(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    .line 57
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kO()Z

    move-result v3

    if-eqz v3, :cond_5

    move v7, v8

    :cond_5
    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(I)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$ZYk;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$ZYk;-><init>(Landroid/view/View;)V

    .line 58
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/BTZ/oJ;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    .line 59
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/component/jFA/ba;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/UN;->Pfn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object p2, v9

    :cond_6
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object p2

    .line 62
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->so:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    .line 63
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object p2

    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$18;

    invoke-direct {p3, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$18;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)V

    .line 64
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object p2

    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$17;

    invoke-direct {p3, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$17;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)V

    .line 65
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/UN$oJ;)V

    .line 66
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$tB;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    const/4 v2, 0x0

    invoke-direct {p3, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$tB;-><init>(Lcom/bytedance/sdk/component/jFA/ba;Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$1;)V

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/BTZ/kkU;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 67
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$tB;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-direct {p3, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$tB;-><init>(Lcom/bytedance/sdk/component/jFA/ba;Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$1;)V

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/BTZ/kkU;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 68
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->kkU()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Dex:Z

    .line 69
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Z)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object p2

    .line 70
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/BTZ/ba;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 71
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->dLZ()Lcom/bytedance/sdk/openadsdk/BTZ/Pfn;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/BTZ/Pfn;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$19;

    invoke-direct {p2, p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$19;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 72
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/BTZ/tB;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 73
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->HyG:Z

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/UN;->Pfn(Z)V

    .line 74
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->kkU()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$2;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)V

    .line 75
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/BTZ/tB;)Lcom/bytedance/sdk/openadsdk/core/UN;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/common/PiB;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Jc:Lcom/bytedance/sdk/openadsdk/common/PiB;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/UN;Z)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Z)Lcom/bytedance/sdk/openadsdk/core/UN;

    :cond_1
    :goto_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/UN;ZZ)V
    .locals 2

    .line 146
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 147
    const-string v1, "endcard_mute"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 148
    const-string p2, "endcard_show"

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 149
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz p2, :cond_0

    .line 150
    const-string v1, "multi_ads_show"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/so;->wd()Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->cFZ()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 151
    :cond_0
    const-string p2, "endcard_control_event"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    if-eqz p3, :cond_1

    .line 152
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->QSm:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 153
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->jB:Z

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 154
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->jB:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V
    .locals 1

    .line 17
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)V

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$ex;)V

    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/component/jFA/ba;)V

    .line 20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$13;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$13;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->oJ(Landroid/webkit/DownloadListener;)V

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Dex:Z

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->tB(Z)V

    .line 22
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$14;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$14;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->tB:Z

    return-void
.end method

.method public oJ(ZILjava/lang/String;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->so:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 156
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ex/ex/ex;->ZYk()V

    return-void

    .line 157
    :cond_1
    invoke-interface {v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/ex/ex/ex;->oJ(ILjava/lang/String;)V

    return-void
.end method

.method public oJ(ZZ)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p0, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/core/UN;ZZ)V

    return-void
.end method

.method public ofl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->QSm:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->RZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public oq()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->awB()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->awB()V

    .line 6
    :cond_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Jm:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 7
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Qu:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Jm:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Qu:J

    .line 8
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Jm:J

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Z)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/core/UN;Z)V

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/core/UN;ZZ)V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Z)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/core/UN;Z)V

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/core/UN;ZZ)V

    :cond_4
    return-void
.end method

.method public si()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ex:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    const-string v2, "show_landingpage"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public so()V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->RZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oq:Z

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oq:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->nQI()V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB(Z)V

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    sget v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->tB:I

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->cFZ(I)V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/core/UN;ZZ)V

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/core/UN;Z)V

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/core/UN;Z)V

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->eZI:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->eZI()V

    .line 13
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oq:Z

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->si:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/core/UN;ZZ)V

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/core/UN;Z)V

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/core/UN;Z)V

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->XAo:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UK:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->tB(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UK:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->jr()V

    goto :goto_0

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->oJ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->oJ(I)V

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->XAo:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->ex()V

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jXJ:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->so:I

    int-to-long v3, v0

    invoke-interface {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->oJ(J)V

    .line 25
    :cond_4
    :goto_0
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->MoK:Z

    return-void
.end method

.method public tB(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/core/UN;Z)V

    return-void
.end method

.method public tB()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Rl:Z

    return v0
.end method

.method public tb()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->HyG:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->cdg:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UN:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->BTZ()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->HyG:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->cdg:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->RZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->QSm:Z

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public wd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->MoK:Z

    .line 2
    .line 3
    return v0
.end method
