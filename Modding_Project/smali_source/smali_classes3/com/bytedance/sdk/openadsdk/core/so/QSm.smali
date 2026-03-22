.class public Lcom/bytedance/sdk/openadsdk/core/so/QSm;
.super Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/ZYk/awB;
.implements Lcom/bytedance/sdk/component/adexpress/ZYk/so;
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/ex;
.implements Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ$oJ;
.implements Lcom/bytedance/sdk/openadsdk/core/so/awB;


# instance fields
.field protected BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private Dex:I

.field protected HL:Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;

.field private final HyG:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/component/adexpress/ZYk/ex<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public Id:Z

.field private Jc:Ljava/lang/String;

.field private final Jm:Ljava/lang/Runnable;

.field private LS:Lcom/bytedance/sdk/component/adexpress/ZYk/ba;

.field private Ln:F

.field private LpP:F

.field private MoK:F

.field private NO:Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;

.field private Pfn:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

.field public PiB:Landroid/widget/FrameLayout;

.field protected QSm:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Qu:Ljava/lang/Runnable;

.field protected RZ:Ljava/lang/String;

.field private final Rl:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field protected Ry:I

.field private TA:F

.field private UK:F

.field private UN:Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;

.field private VSB:F

.field protected WcQ:Z

.field private XAo:Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;

.field public Xe:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

.field private Yg:Lcom/bytedance/sdk/openadsdk/core/so/jr;

.field private ZYk:I

.field protected awB:Z

.field private ba:Lcom/bytedance/sdk/openadsdk/core/so/so;

.field private bgF:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

.field private cFZ:Lcom/bytedance/sdk/openadsdk/core/so/jFA;

.field cY:I

.field private cdg:Lcom/bytedance/sdk/openadsdk/core/so/tB;

.field protected dLZ:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field protected eZI:Lcom/bytedance/sdk/component/adexpress/ZYk/tB;

.field private ex:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

.field private jB:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;

.field protected final jFA:Landroid/content/Context;

.field private jXJ:J

.field jr:Z

.field protected kkU:Ljava/lang/String;

.field private lY:Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;

.field private mu:Ljava/lang/String;

.field private mwH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/ZYk/kkU;",
            ">;"
        }
    .end annotation
.end field

.field private final nQI:Ljava/lang/Runnable;

.field private nke:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

.field private final oIC:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/ZYk/tB$oJ;",
            ">;"
        }
    .end annotation
.end field

.field private oJ:Z

.field private oTd:Lcom/bytedance/sdk/component/adexpress/ZYk/eZI;

.field private ofl:Z

.field protected oq:Landroid/view/ViewGroup;

.field private sH:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

.field si:Z

.field private so:Ljava/lang/String;

.field private tB:Lcom/bytedance/sdk/openadsdk/tB/tB;

.field tb:J

.field private uvK:Lcom/bytedance/sdk/openadsdk/core/tB/jFA;

.field private wd:Lcom/bytedance/sdk/openadsdk/core/so/Id;

.field private yz:Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ:Z

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ZYk:I

    .line 4
    const-string v2, "embeded_ad"

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->so:Ljava/lang/String;

    .line 6
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->awB:Z

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->si:Z

    const/4 v2, -0x1

    .line 8
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Ry:I

    .line 9
    const-string v3, ""

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Jc:Ljava/lang/String;

    .line 10
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Id:Z

    .line 11
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ofl:Z

    .line 12
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cY:I

    .line 13
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ex/cFZ;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Xe:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    const-wide/16 v2, 0x0

    .line 14
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->tb:J

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->HyG:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/QSm$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/QSm;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Rl:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 17
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/QSm$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/QSm;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Jm:Ljava/lang/Runnable;

    .line 18
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/QSm$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/QSm;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Qu:Ljava/lang/Runnable;

    .line 19
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/QSm$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/QSm;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->nQI:Ljava/lang/Runnable;

    const/16 v0, 0x8

    .line 20
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Dex:I

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oIC:Landroid/util/SparseArray;

    const/high16 v0, -0x40800000    # -1.0f

    .line 22
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->MoK:F

    .line 23
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->TA:F

    .line 24
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->UK:F

    .line 25
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->VSB:F

    .line 26
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jXJ:J

    .line 27
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 30
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->dLZ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 31
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Id:Z

    .line 32
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cFZ()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;ZZ)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ:Z

    const/4 v1, 0x0

    .line 35
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ZYk:I

    .line 36
    const-string v2, "embeded_ad"

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    const/4 v2, 0x0

    .line 37
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->so:Ljava/lang/String;

    .line 38
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->awB:Z

    .line 39
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->si:Z

    const/4 v2, -0x1

    .line 40
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Ry:I

    .line 41
    const-string v3, ""

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Jc:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Id:Z

    .line 43
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ofl:Z

    .line 44
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cY:I

    .line 45
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ex/cFZ;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Xe:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    const-wide/16 v2, 0x0

    .line 46
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->tb:J

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->HyG:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/QSm$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/QSm;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Rl:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 49
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/QSm$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/QSm;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Jm:Ljava/lang/Runnable;

    .line 50
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/QSm$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/QSm;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Qu:Ljava/lang/Runnable;

    .line 51
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/QSm$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/QSm;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->nQI:Ljava/lang/Runnable;

    const/16 v0, 0x8

    .line 52
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Dex:I

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oIC:Landroid/util/SparseArray;

    const/high16 v0, -0x40800000    # -1.0f

    .line 54
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->MoK:F

    .line 55
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->TA:F

    .line 56
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->UK:F

    .line 57
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->VSB:F

    .line 58
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jXJ:J

    .line 59
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 62
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->dLZ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 63
    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Id:Z

    .line 64
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ofl:Z

    .line 65
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cFZ()V

    return-void
.end method

.method private HL()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private IUZ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->mwH:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return-void
.end method

.method private Ln()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->mwH:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return-void
.end method

.method private LpP()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "fullscreen_interstitial_ad"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "rewarded_video"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const-string v0, "open_ad"

    .line 22
    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->ZYk(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    .line 40
    .line 41
    const-string v1, "embeded_ad"

    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    return v0

    .line 52
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 53
    return v0
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/core/so/QSm;)Lcom/bytedance/sdk/openadsdk/core/so/Id;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->wd:Lcom/bytedance/sdk/openadsdk/core/so/Id;

    return-object p0
.end method

.method private PiB()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PdF()Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "embeded_ad"

    .line 10
    .line 11
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->kkU()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "width"

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const-string v2, "height"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    int-to-float v1, v1

    .line 51
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->LpP:F

    .line 52
    .line 53
    int-to-float v0, v0

    .line 54
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Ln:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    :catch_0
    :cond_0
    return-void
.end method

.method private WcQ()V
    .locals 12

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/Ry;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Ry;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->nke:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    .line 12
    .line 13
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/so/PiB;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 18
    .line 19
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->so:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {v1, v0, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/so/PiB;-><init>(Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->yz:Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->XQY()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const-wide/16 v1, 0x0

    .line 33
    .line 34
    :try_start_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PdF()Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->jFA()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_0

    .line 51
    .line 52
    new-instance v5, Lorg/json/JSONObject;

    .line 53
    .line 54
    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v4, "render_delay_time"

    .line 58
    .line 59
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    :cond_0
    move-wide v4, v1

    .line 65
    :goto_0
    const/4 v6, 0x0

    .line 66
    :try_start_1
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 67
    .line 68
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-nez v7, :cond_1

    .line 73
    .line 74
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->so:Ljava/lang/String;

    .line 79
    .line 80
    invoke-interface {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->BTZ(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    if-ne v7, v3, :cond_1

    .line 85
    .line 86
    move v7, v3

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    move v7, v6

    .line 89
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->so:Ljava/lang/String;

    .line 94
    .line 95
    invoke-interface {v8, v9}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->PiB(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    if-eqz v8, :cond_2

    .line 100
    .line 101
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 102
    .line 103
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    const/4 v9, 0x5

    .line 108
    if-eq v8, v9, :cond_2

    .line 109
    .line 110
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 111
    .line 112
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    const/4 v9, 0x6

    .line 117
    if-eq v8, v9, :cond_2

    .line 118
    .line 119
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 120
    .line 121
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TxP()I

    .line 122
    .line 123
    .line 124
    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 125
    const/4 v9, 0x3

    .line 126
    if-ne v8, v9, :cond_3

    .line 127
    .line 128
    :cond_2
    move v7, v3

    .line 129
    goto :goto_2

    .line 130
    :catch_1
    move v7, v6

    .line 131
    :catch_2
    :cond_3
    :goto_2
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 132
    .line 133
    .line 134
    move-result-wide v1

    .line 135
    const-wide/16 v4, 0x2710

    .line 136
    .line 137
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 138
    .line 139
    .line 140
    move-result-wide v1

    .line 141
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getRenderTimeout()I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 146
    .line 147
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    if-eqz v5, :cond_4

    .line 152
    .line 153
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 154
    .line 155
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v5}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ba()D

    .line 160
    .line 161
    .line 162
    move-result-wide v8

    .line 163
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 164
    .line 165
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v5}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->Id()I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    int-to-double v10, v5

    .line 174
    mul-double/2addr v8, v10

    .line 175
    goto :goto_3

    .line 176
    :cond_4
    const-wide/16 v8, 0x0

    .line 177
    .line 178
    :goto_3
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cY:I

    .line 179
    .line 180
    const/4 v10, -0x1

    .line 181
    if-eq v5, v10, :cond_5

    .line 182
    .line 183
    double-to-int v10, v8

    .line 184
    if-ge v5, v10, :cond_5

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_5
    move v3, v6

    .line 188
    :goto_4
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jr:Z

    .line 189
    .line 190
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 191
    .line 192
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/kkU/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-nez v3, :cond_7

    .line 197
    .line 198
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 199
    .line 200
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/kkU/ex;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-eqz v3, :cond_6

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_6
    new-instance v3, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 208
    .line 209
    invoke-direct {v3}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;-><init>()V

    .line 210
    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_7
    :goto_5
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;

    .line 214
    .line 215
    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;-><init>()V

    .line 216
    .line 217
    .line 218
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 219
    .line 220
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/kkU/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    if-eqz v5, :cond_8

    .line 225
    .line 226
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 227
    .line 228
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    .line 229
    .line 230
    invoke-static {v5, v10}, Lcom/bytedance/sdk/openadsdk/core/kkU/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;

    .line 235
    .line 236
    .line 237
    :cond_8
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->yz:Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;

    .line 238
    .line 239
    check-cast v5, Lcom/bytedance/adsdk/ugeno/core/Ry;

    .line 240
    .line 241
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;->oJ(Lcom/bytedance/adsdk/ugeno/core/Ry;)Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;

    .line 242
    .line 243
    .line 244
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Ln:F

    .line 245
    .line 246
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;->oJ(F)Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;

    .line 247
    .line 248
    .line 249
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->LpP:F

    .line 250
    .line 251
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;->ZYk(F)Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;

    .line 252
    .line 253
    .line 254
    :goto_6
    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->Pfn(Z)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 255
    .line 256
    .line 257
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 264
    .line 265
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v10

    .line 269
    invoke-virtual {v5, v10}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 274
    .line 275
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ZiK()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v10

    .line 279
    invoke-virtual {v5, v10}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 284
    .line 285
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v10

    .line 289
    invoke-virtual {v5, v10}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->ex(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->yz:Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;

    .line 294
    .line 295
    invoke-virtual {v5, v10}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 300
    .line 301
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zy()I

    .line 302
    .line 303
    .line 304
    move-result v10

    .line 305
    invoke-virtual {v5, v10}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->ex(I)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    invoke-virtual {v5, v4}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->oJ(I)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 314
    .line 315
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LTg()Z

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->ZYk(Z)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ofl:Z

    .line 324
    .line 325
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->tB(Z)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 330
    .line 331
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->bD()I

    .line 332
    .line 333
    .line 334
    move-result v5

    .line 335
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->ZYk(I)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    invoke-virtual {v4, v1, v2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->oJ(J)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 344
    .line 345
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sQ()I

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->tB(I)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 354
    .line 355
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/util/Map;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->oJ(Ljava/util/Map;)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-virtual {v1, v7}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->ex(Z)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cY:I

    .line 368
    .line 369
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->Pfn(I)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jr:Z

    .line 374
    .line 375
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->oJ(Z)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-virtual {v1, v8, v9}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->oJ(D)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->jXJ()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->ba(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    const-string v2, "inject_data_reuse_open"

    .line 396
    .line 397
    invoke-static {v2, v6}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;I)I

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->ba(I)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 406
    .line 407
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->crS()Lcom/bytedance/sdk/openadsdk/core/model/ZYk;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/ZYk;->oJ()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->cFZ(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 420
    .line 421
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->crS()Lcom/bytedance/sdk/openadsdk/core/model/ZYk;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/ZYk;->ZYk()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->so(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/so/QSm$5;

    .line 434
    .line 435
    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/QSm;Z)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/Pfn;)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;

    .line 439
    .line 440
    .line 441
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->oJ()Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->sH:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 449
    .line 450
    return-void
.end method

.method private Xe()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->qnr()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oIC()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x2

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v9, Lcom/bytedance/sdk/openadsdk/core/ba/oJ/oJ;

    .line 23
    .line 24
    invoke-direct {v9}, Lcom/bytedance/sdk/openadsdk/core/ba/oJ/oJ;-><init>()V

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ZYk:I

    .line 28
    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    if-eq v0, v1, :cond_3

    .line 33
    .line 34
    const/4 v1, 0x7

    .line 35
    if-eq v0, v1, :cond_2

    .line 36
    .line 37
    const/16 v1, 0x9

    .line 38
    .line 39
    if-eq v0, v1, :cond_4

    .line 40
    .line 41
    const/16 v1, 0xa

    .line 42
    .line 43
    if-eq v0, v1, :cond_1

    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 52
    .line 53
    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Id:Z

    .line 54
    .line 55
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->sH:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 56
    .line 57
    move-object v6, v1

    .line 58
    check-cast v6, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    .line 59
    .line 60
    move-object v2, v0

    .line 61
    move-object v7, p0

    .line 62
    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;ZLcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;Landroid/view/ViewGroup;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jB:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;

    .line 66
    .line 67
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    .line 70
    .line 71
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->sH:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 72
    .line 73
    invoke-direct {v1, v2, v0, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;Lcom/bytedance/sdk/component/adexpress/ZYk/so;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;)V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->NO:Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;

    .line 77
    .line 78
    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/awB;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->mwH:Ljava/util/List;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->NO:Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;

    .line 84
    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;

    .line 90
    .line 91
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    .line 92
    .line 93
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 94
    .line 95
    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Id:Z

    .line 96
    .line 97
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->sH:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 98
    .line 99
    move-object v6, v1

    .line 100
    check-cast v6, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    .line 101
    .line 102
    move-object v2, v0

    .line 103
    move-object v7, p0

    .line 104
    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;ZLcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;Landroid/view/ViewGroup;)V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jB:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;

    .line 108
    .line 109
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;

    .line 110
    .line 111
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    .line 112
    .line 113
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->sH:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 114
    .line 115
    invoke-direct {v1, v2, v0, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;Lcom/bytedance/sdk/component/adexpress/ZYk/so;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;)V

    .line 116
    .line 117
    .line 118
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->NO:Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;

    .line 119
    .line 120
    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/awB;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->mwH:Ljava/util/List;

    .line 124
    .line 125
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->NO:Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/cFZ;

    .line 126
    .line 127
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_3
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/Pfn/cFZ;

    .line 132
    .line 133
    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/Pfn/cFZ;-><init>()V

    .line 134
    .line 135
    .line 136
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;

    .line 137
    .line 138
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    .line 139
    .line 140
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->sH:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 145
    .line 146
    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->bgF:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    .line 147
    .line 148
    iget-boolean v13, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Id:Z

    .line 149
    .line 150
    new-instance v14, Lcom/bytedance/sdk/openadsdk/core/so/ba;

    .line 151
    .line 152
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    .line 153
    .line 154
    move-object v2, v14

    .line 155
    move-object v4, v12

    .line 156
    move v5, v13

    .line 157
    move-object v6, v0

    .line 158
    move-object v7, v11

    .line 159
    move-object v8, v9

    .line 160
    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/so/ba;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/Pfn/so;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;Lcom/bytedance/sdk/component/adexpress/dynamic/ba/oJ;)V

    .line 161
    .line 162
    .line 163
    move-object v2, v1

    .line 164
    move-object v3, v10

    .line 165
    move-object v4, v11

    .line 166
    move-object v5, v12

    .line 167
    move v6, v13

    .line 168
    move-object v7, v0

    .line 169
    move-object v8, p0

    .line 170
    move-object v10, v14

    .line 171
    invoke-direct/range {v2 .. v10}, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/Pfn/so;Lcom/bytedance/sdk/component/adexpress/ZYk/so;Lcom/bytedance/sdk/component/adexpress/dynamic/ba/oJ;Lcom/bytedance/sdk/component/adexpress/dynamic/oJ/oJ;)V

    .line 172
    .line 173
    .line 174
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->HL:Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;

    .line 175
    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->mwH:Ljava/util/List;

    .line 177
    .line 178
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/jr;

    .line 183
    .line 184
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    .line 185
    .line 186
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->sH:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 187
    .line 188
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->bgF:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    .line 189
    .line 190
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->nke:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    .line 191
    .line 192
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 193
    .line 194
    move-object v2, v0

    .line 195
    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/so/jr;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 196
    .line 197
    .line 198
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Yg:Lcom/bytedance/sdk/openadsdk/core/so/jr;

    .line 199
    .line 200
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/ZYk/eZI;

    .line 201
    .line 202
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    .line 203
    .line 204
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->sH:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 205
    .line 206
    invoke-direct {v1, v2, v3, v0, p0}, Lcom/bytedance/sdk/component/adexpress/ZYk/eZI;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;Lcom/bytedance/sdk/component/adexpress/ZYk/so;)V

    .line 207
    .line 208
    .line 209
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oTd:Lcom/bytedance/sdk/component/adexpress/ZYk/eZI;

    .line 210
    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->mwH:Ljava/util/List;

    .line 212
    .line 213
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    :goto_0
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/so/QSm;)Ljava/lang/Runnable;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Jm:Ljava/lang/Runnable;

    return-object p0
.end method

.method private awB()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->qnr()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Br()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/oq;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->bgF:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->sH:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 23
    .line 24
    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/so/oq;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/ZYk/ba;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->sH:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 32
    .line 33
    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/ba;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;Lcom/bytedance/sdk/component/adexpress/ZYk/oJ;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->LS:Lcom/bytedance/sdk/component/adexpress/ZYk/ba;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->mwH:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/ZYk/BTZ;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->mwH:Ljava/util/List;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->yz:Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;

    .line 48
    .line 49
    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/ZYk/BTZ;-><init>(Ljava/util/List;Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->lY:Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;

    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->LpP()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->eZI()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->si()V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/jr;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->sH:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 73
    .line 74
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->bgF:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    .line 75
    .line 76
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->nke:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    .line 77
    .line 78
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 79
    .line 80
    move-object v1, v0

    .line 81
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/so/jr;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Yg:Lcom/bytedance/sdk/openadsdk/core/so/jr;

    .line 85
    .line 86
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/ZYk/eZI;

    .line 87
    .line 88
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    .line 89
    .line 90
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->sH:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 91
    .line 92
    invoke-direct {v1, v2, v3, v0, p0}, Lcom/bytedance/sdk/component/adexpress/ZYk/eZI;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;Lcom/bytedance/sdk/component/adexpress/ZYk/so;)V

    .line 93
    .line 94
    .line 95
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oTd:Lcom/bytedance/sdk/component/adexpress/ZYk/eZI;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->mwH:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string v1, "NativeExpressView"

    .line 105
    .line 106
    const-string v2, "NativeExpressView dynamicRender fail"

    .line 107
    .line 108
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    :goto_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/oq;

    .line 112
    .line 113
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->bgF:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    .line 114
    .line 115
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->sH:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 116
    .line 117
    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/so/oq;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;)V

    .line 118
    .line 119
    .line 120
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/ZYk/ba;

    .line 121
    .line 122
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    .line 123
    .line 124
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->sH:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 125
    .line 126
    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/ba;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;Lcom/bytedance/sdk/component/adexpress/ZYk/oJ;)V

    .line 127
    .line 128
    .line 129
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->LS:Lcom/bytedance/sdk/component/adexpress/ZYk/ba;

    .line 130
    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->mwH:Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/ZYk/BTZ;

    .line 137
    .line 138
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->mwH:Ljava/util/List;

    .line 139
    .line 140
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->yz:Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;

    .line 141
    .line 142
    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/ZYk/BTZ;-><init>(Ljava/util/List;Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;)V

    .line 143
    .line 144
    .line 145
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->lY:Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;

    .line 146
    .line 147
    return-void
.end method

.method private eZI()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uvK()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ZYk:I

    .line 8
    .line 9
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->si()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Xe()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    const-string v1, "NativeExpressView"

    .line 18
    .line 19
    const-string v2, "NativeExpressView dynamicRender fail"

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->UF()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x1

    .line 31
    if-ne v0, v1, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    :goto_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ:Z

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/oq;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->bgF:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->sH:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 44
    .line 45
    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/so/oq;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/ZYk/ba;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->sH:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 53
    .line 54
    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/ba;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;Lcom/bytedance/sdk/component/adexpress/ZYk/oJ;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->LS:Lcom/bytedance/sdk/component/adexpress/ZYk/ba;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->mwH:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->mwH:Ljava/util/List;

    .line 65
    .line 66
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/ZYk/BTZ;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->mwH:Ljava/util/List;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->yz:Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;

    .line 74
    .line 75
    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/ZYk/BTZ;-><init>(Ljava/util/List;Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->lY:Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;

    .line 79
    .line 80
    return-void
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/core/so/QSm;)F
    .locals 0

    .line 2
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->LpP:F

    return p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/so/QSm;Lcom/bytedance/sdk/openadsdk/core/so/Id;)Lcom/bytedance/sdk/openadsdk/core/so/Id;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->wd:Lcom/bytedance/sdk/openadsdk/core/so/Id;

    return-object p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/so/QSm;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Jc:Ljava/lang/String;

    return-object p1
.end method

.method public static oJ(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x2

    .line 101
    :try_start_0
    new-array v0, v0, [I

    .line 102
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 103
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 104
    const-string v2, "width"

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    const-string v2, "height"

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 106
    const-string p0, "left"

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 107
    const-string p0, "top"

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/so/QSm;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->tb()V

    return-void
.end method

.method private si()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->Pfn()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/so/BTZ;->oJ()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/so/QSm;)F
    .locals 0

    .line 3
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Ln:F

    return p0
.end method

.method private tb()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->HyG:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Xe:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/mu;->oJ(Landroid/view/View;)F

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/cFZ;->oJ(JF)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public BTZ()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cdg:Lcom/bytedance/sdk/openadsdk/core/so/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ZYk()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    goto :goto_2

    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Id()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->mwH:Ljava/util/List;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/bytedance/sdk/component/adexpress/ZYk/kkU;

    .line 51
    .line 52
    invoke-interface {v1}, Lcom/bytedance/sdk/component/adexpress/ZYk/kkU;->oJ()V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->tB:Lcom/bytedance/sdk/openadsdk/tB/tB;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ex:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->dLZ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Pfn:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ba:Lcom/bytedance/sdk/openadsdk/core/so/so;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->eZI:Lcom/bytedance/sdk/component/adexpress/ZYk/tB;

    .line 80
    .line 81
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cFZ:Lcom/bytedance/sdk/openadsdk/core/so/jFA;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->UN:Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;->tB()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    :cond_3
    return-void

    .line 91
    :goto_2
    const-string v1, "NativeExpressView"

    .line 92
    .line 93
    const-string v2, "detach error"

    .line 94
    .line 95
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public Id()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getVideoProgress()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->Pfn(J)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public Pfn()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public Pfn(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/so/jr;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/so/jr;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->ZYk(I)V

    :cond_0
    return-void
.end method

.method public QSm()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->PiB:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->PiB:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    :catchall_0
    :cond_0
    return-void
.end method

.method public RZ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->tb:J

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jA()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cdg:Lcom/bytedance/sdk/openadsdk/core/so/tB;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const/16 v0, 0x6a

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->a_(I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/so/tB;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/awB;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cdg:Lcom/bytedance/sdk/openadsdk/core/so/tB;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/tB;->oJ()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->nke:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    .line 40
    .line 41
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ex/ex/ex;->oJ()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->lY:Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/awB;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->lY:Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;

    .line 52
    .line 53
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;->oJ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :catchall_0
    return-void
.end method

.method public Ry()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/so/jr;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/so/jr;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->so()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oq()Lcom/bytedance/sdk/openadsdk/core/model/RZ;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->ex()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x5

    .line 29
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/jFA;->ZYk()Landroid/os/Handler;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/so/QSm$6;

    .line 34
    .line 35
    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/QSm;)V

    .line 36
    .line 37
    .line 38
    const-wide/16 v3, 0x3e8

    .line 39
    .line 40
    int-to-long v5, v0

    .line 41
    mul-long/2addr v5, v3

    .line 42
    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->dLZ()V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    const-wide/16 v1, 0x0

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(J)V

    .line 74
    .line 75
    .line 76
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    .line 77
    .line 78
    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;

    .line 79
    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/si;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/ex;)V

    .line 93
    .line 94
    .line 95
    :cond_5
    return-void
.end method

.method public ZYk()V
    .locals 0

    .line 1
    return-void
.end method

.method public ZYk(I)V
    .locals 0

    .line 2
    return-void
.end method

.method protected ZYk(II)V
    .locals 9

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    const-string v1, "banner_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cY:I

    const-string v1, "open_ad"

    const/4 v2, 0x0

    if-lt p2, v0, :cond_1

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jr:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    .line 8
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Pfn()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 10
    :goto_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cY:I

    if-gt p2, v1, :cond_6

    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 12
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cY:I

    int-to-double v3, v1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ba()D

    move-result-wide v5

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->Id()I

    move-result v1

    int-to-double v7, v1

    mul-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    int-to-double v5, p2

    sub-double/2addr v3, v5

    double-to-int p2, v3

    goto :goto_1

    .line 13
    :cond_5
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cY:I

    sub-int p2, v1, p2

    goto :goto_1

    :cond_6
    move p2, v2

    .line 14
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->HL:Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->ZYk()Lcom/bytedance/sdk/component/adexpress/dynamic/ex;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->HL:Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->ZYk()Lcom/bytedance/sdk/component/adexpress/dynamic/ex;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0, p2, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex;->setTime(Ljava/lang/CharSequence;IIZ)V

    .line 16
    :cond_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    instance-of v3, v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;

    if-eqz v3, :cond_8

    .line 17
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->setTime(Ljava/lang/CharSequence;IIZ)V

    :cond_8
    return-void
.end method

.method public ZYk(ILjava/lang/String;)V
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    if-nez v0, :cond_0

    return-void

    .line 19
    :cond_0
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/so/jr;

    if-eqz v1, :cond_1

    .line 20
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/so/jr;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI()Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 21
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 22
    :try_start_0
    const-string v2, "time"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    const-string p1, "flag"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string p1, "onVideoPaused"

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method protected ZYk(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)Z
    .locals 0

    .line 3
    const/4 p1, 0x1

    return p1
.end method

.method public ZYk(Lorg/json/JSONObject;)Z
    .locals 0

    .line 4
    const/4 p1, 0x0

    return p1
.end method

.method public a_(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->yz:Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;->so()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->yz:Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;->jFA()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->yz:Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;

    .line 18
    .line 19
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/so/PiB;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/PiB;->dLZ()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Pfn:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/so;->oJ(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;->onRenderFail(Landroid/view/View;Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->wd:Lcom/bytedance/sdk/openadsdk/core/so/Id;

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/so/Id;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    return-void
.end method

.method public ba()V
    .locals 0

    .line 1
    return-void
.end method

.method public ba(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/so/jr;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/so/jr;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->oJ(I)V

    .line 4
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Dex:I

    :cond_0
    return-void
.end method

.method protected cFZ()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->QSm:Ljava/util/HashSet;

    .line 2
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->bgF:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->dLZ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Ln:F

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->dLZ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedHeight()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->LpP:F

    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->PiB()V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->dLZ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->so:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    const-string v1, "fullscreen_interstitial_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->HUl()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cY:I

    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    const-string v1, "rewarded_video"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->xwf()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cY:I

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    const-string v1, "open_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ()I

    move-result v0

    if-ltz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cY:I

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->so:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->oq(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cY:I

    .line 16
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cY:I

    if-gez v0, :cond_3

    const/4 v0, 0x5

    .line 17
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cY:I

    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jA()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/tB;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/so/tB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/so/QSm;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cdg:Lcom/bytedance/sdk/openadsdk/core/so/tB;

    return-void

    .line 21
    :cond_4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->WcQ()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->mwH:Ljava/util/List;

    .line 23
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->awB()V

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oTd:Lcom/bytedance/sdk/component/adexpress/ZYk/eZI;

    if-eqz v0, :cond_5

    .line 25
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/eZI;->ZYk()Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/so/jr;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Yg:Lcom/bytedance/sdk/openadsdk/core/so/jr;

    .line 26
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getJsObject()Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 27
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ba(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public cFZ(I)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 29
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;->kkU()V

    :cond_0
    return-void
.end method

.method public cY()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->HyG:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public dLZ()V
    .locals 0

    .line 1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ba:Lcom/bytedance/sdk/openadsdk/core/so/so;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->ZYk(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ba:Lcom/bytedance/sdk/openadsdk/core/so/so;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ba:Lcom/bytedance/sdk/openadsdk/core/so/so;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->tB(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cFZ:Lcom/bytedance/sdk/openadsdk/core/so/jFA;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->ZYk(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cFZ:Lcom/bytedance/sdk/openadsdk/core/so/jFA;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cFZ:Lcom/bytedance/sdk/openadsdk/core/so/jFA;

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->tB(I)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_7

    .line 65
    .line 66
    const/4 v1, 0x3

    .line 67
    const/4 v2, 0x1

    .line 68
    if-eq v0, v2, :cond_2

    .line 69
    .line 70
    const/4 v3, 0x2

    .line 71
    if-eq v0, v3, :cond_4

    .line 72
    .line 73
    if-eq v0, v1, :cond_3

    .line 74
    .line 75
    const/4 v1, -0x1

    .line 76
    :cond_2
    :goto_0
    move v5, v1

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const/4 v1, 0x4

    .line 79
    goto :goto_0

    .line 80
    :cond_4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->UK:F

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->MoK:F

    .line 87
    .line 88
    sub-float/2addr v1, v4

    .line 89
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    add-float/2addr v0, v1

    .line 94
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->UK:F

    .line 95
    .line 96
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->VSB:F

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->TA:F

    .line 103
    .line 104
    sub-float/2addr v1, v4

    .line 105
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    add-float/2addr v0, v1

    .line 110
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->VSB:F

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->MoK:F

    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->TA:F

    .line 123
    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 125
    .line 126
    .line 127
    move-result-wide v0

    .line 128
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jXJ:J

    .line 129
    .line 130
    sub-long/2addr v0, v4

    .line 131
    const-wide/16 v4, 0xc8

    .line 132
    .line 133
    cmp-long v0, v0, v4

    .line 134
    .line 135
    if-lez v0, :cond_6

    .line 136
    .line 137
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->UK:F

    .line 138
    .line 139
    const/high16 v1, 0x41000000    # 8.0f

    .line 140
    .line 141
    cmpl-float v0, v0, v1

    .line 142
    .line 143
    if-gtz v0, :cond_5

    .line 144
    .line 145
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->VSB:F

    .line 146
    .line 147
    cmpl-float v0, v0, v1

    .line 148
    .line 149
    if-lez v0, :cond_6

    .line 150
    .line 151
    :cond_5
    move v5, v2

    .line 152
    goto :goto_1

    .line 153
    :cond_6
    move v5, v3

    .line 154
    goto :goto_1

    .line 155
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->MoK:F

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->TA:F

    .line 166
    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 168
    .line 169
    .line 170
    move-result-wide v2

    .line 171
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jXJ:J

    .line 172
    .line 173
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/jFA/tB;->oJ(Landroid/view/MotionEvent;)V

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oIC:Landroid/util/SparseArray;

    .line 178
    .line 179
    if-eqz v0, :cond_8

    .line 180
    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ZYk/tB$oJ;

    .line 186
    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    float-to-double v6, v3

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    float-to-double v8, v3

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 198
    .line 199
    .line 200
    move-result-wide v10

    .line 201
    move-object v4, v2

    .line 202
    invoke-direct/range {v4 .. v11}, Lcom/bytedance/sdk/openadsdk/core/ZYk/tB$oJ;-><init>(IDDJ)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :cond_8
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    return p1
.end method

.method public ex()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAdShowTime()Lcom/bytedance/sdk/openadsdk/ex/cFZ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Xe:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBrandBannerController()Lcom/bytedance/sdk/openadsdk/core/so/tB;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cdg:Lcom/bytedance/sdk/openadsdk/core/so/tB;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClickCreativeListener()Lcom/bytedance/sdk/openadsdk/core/so/so;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ba:Lcom/bytedance/sdk/openadsdk/core/so/so;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClickListener()Lcom/bytedance/sdk/openadsdk/core/so/jFA;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cFZ:Lcom/bytedance/sdk/openadsdk/core/so/jFA;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClosedListenerKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->mu:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDynamicShowType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/ex;->tB()I

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

.method public getExpectExpressHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->LpP:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getExpectExpressWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Ln:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getJsObject()Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Yg:Lcom/bytedance/sdk/openadsdk/core/so/jr;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI()Lcom/bytedance/sdk/openadsdk/core/UN;

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

.method public getRenderEngineCacheType()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/so/jr;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/so/jr;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->awB()Lcom/bytedance/sdk/openadsdk/core/so/kkU;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->oJ()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method protected getRenderTimeout()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->jr()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getUgenTemplateErrorReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Jc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoProgress()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->uvK:Lcom/bytedance/sdk/openadsdk/core/tB/jFA;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/tB/jFA;->getVideoProgress()J

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

.method public getWebView()Lcom/bytedance/sdk/component/jFA/ba;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Yg:Lcom/bytedance/sdk/openadsdk/core/so/jr;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->oJ()Lcom/bytedance/sdk/component/jFA/ba;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method protected jFA()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public jr()V
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->UN:Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/awB;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->UN:Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;

    .line 16
    .line 17
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm$7;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/QSm;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/kkU/tB/oJ;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public kkU()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Yg:Lcom/bytedance/sdk/openadsdk/core/so/jr;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ZYk()Lcom/bytedance/sdk/component/jFA/ba;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Yg:Lcom/bytedance/sdk/openadsdk/core/so/jr;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->ba()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lorg/json/JSONObject;
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/so/jr;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    .line 142
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 143
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getRenderEngineCacheType()I

    move-result v0

    if-eqz p2, :cond_3

    .line 144
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PdF()Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "engine_version"

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PdF()Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->BTZ()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PdF()Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->dLZ()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    .line 146
    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BWx()Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 147
    const-string p2, "v3"

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 148
    :cond_2
    const-string p2, "v1"

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    :cond_3
    :goto_0
    const-string p2, "engine_type"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 150
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_2
    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public oJ()V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(I)V
    .locals 0

    .line 2
    return-void
.end method

.method public oJ(ILcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V
    .locals 0

    .line 3
    return-void
.end method

.method public oJ(ILjava/lang/String;)V
    .locals 0

    .line 4
    return-void
.end method

.method public oJ(IZZ)V
    .locals 2

    .line 12
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->si:Z

    .line 13
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->nQI:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Qu:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0x32

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Qu:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Qu:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 17
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->nQI:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->nQI:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public oJ(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/tB;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 19
    const-string v0, "click_type"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "trigger Class2 method1"

    filled-new-array {v5, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "ClickCreativeListener"

    invoke-static {v5, v4}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, -0x1

    if-eq v3, v4, :cond_18

    if-nez p3, :cond_0

    goto/16 :goto_7

    .line 20
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 21
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v5

    const-string v6, "click_scence"

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    .line 22
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :goto_0
    move-object/from16 v5, p3

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/model/eZI;

    .line 25
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    .line 26
    :try_start_0
    iget-object v6, v5, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->si:Lorg/json/JSONObject;

    if-eqz v6, :cond_2

    .line 27
    invoke-virtual {v6, v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 28
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 29
    invoke-virtual {v9, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    const-string v0, "pag_json_data"

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ba:Lcom/bytedance/sdk/openadsdk/core/so/so;

    if-eqz v0, :cond_3

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getDynamicShowType()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->ex(I)V

    .line 34
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ba:Lcom/bytedance/sdk/openadsdk/core/so/so;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Ljava/util/Map;)V

    .line 35
    :cond_3
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cFZ:Lcom/bytedance/sdk/openadsdk/core/so/jFA;

    if-eqz v0, :cond_4

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getDynamicShowType()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->ex(I)V

    .line 37
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cFZ:Lcom/bytedance/sdk/openadsdk/core/so/jFA;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Ljava/util/Map;)V

    .line 38
    :cond_4
    iget v11, v5, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->oJ:F

    .line 39
    iget v12, v5, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->ZYk:F

    .line 40
    iget v13, v5, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->tB:F

    .line 41
    iget v14, v5, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->ex:F

    .line 42
    iget-boolean v0, v5, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->awB:Z

    .line 43
    iget-object v4, v5, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->WcQ:Landroid/util/SparseArray;

    if-eqz v4, :cond_6

    .line 44
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    move-object v15, v4

    goto :goto_4

    .line 45
    :cond_6
    :goto_3
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oIC:Landroid/util/SparseArray;

    goto :goto_2

    .line 46
    :goto_4
    iget-object v4, v5, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->dLZ:Ljava/lang/String;

    const/4 v6, 0x0

    if-nez v2, :cond_7

    move-object v10, v1

    goto :goto_5

    :cond_7
    if-eq v2, v1, :cond_8

    .line 47
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v6

    :cond_8
    move-object v10, v2

    .line 48
    :goto_5
    iput v3, v5, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->BTZ:I

    if-eqz v6, :cond_9

    .line 49
    iget-object v2, v5, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->PiB:Lorg/json/JSONObject;

    if-nez v2, :cond_9

    .line 50
    iput-object v6, v5, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->PiB:Lorg/json/JSONObject;

    :cond_9
    const/16 v2, 0xd

    if-eq v3, v2, :cond_17

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_7

    .line 51
    :pswitch_0
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA:Landroid/content/Context;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V

    return-void

    .line 52
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ()V

    return-void

    .line 53
    :pswitch_2
    iget-boolean v0, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Id:Z

    xor-int/2addr v0, v7

    const-string v2, "dynamicClick"

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ(ZLjava/lang/String;)V

    return-void

    .line 54
    :pswitch_3
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->PiB:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_a

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 55
    invoke-static/range {v16 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 56
    :cond_a
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jB()I

    move-result v2

    if-ne v2, v7, :cond_b

    if-nez v0, :cond_b

    return-void

    .line 57
    :cond_b
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 58
    const-string v2, "embeded_ad"

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->HL()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->WcQ:Z

    if-nez v2, :cond_c

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 59
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ba:Lcom/bytedance/sdk/openadsdk/core/so/so;

    if-eqz v2, :cond_d

    .line 60
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/so/so;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/eZI;)V

    .line 61
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ba:Lcom/bytedance/sdk/openadsdk/core/so/so;

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Ljava/lang/String;)V

    .line 62
    iget-object v9, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ba:Lcom/bytedance/sdk/openadsdk/core/so/so;

    move/from16 v16, v0

    invoke-virtual/range {v9 .. v16}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    goto :goto_6

    .line 63
    :cond_c
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cFZ:Lcom/bytedance/sdk/openadsdk/core/so/jFA;

    if-eqz v2, :cond_d

    .line 64
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/so/jFA;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/eZI;)V

    .line 65
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cFZ:Lcom/bytedance/sdk/openadsdk/core/so/jFA;

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Ljava/lang/String;)V

    .line 66
    iget-object v9, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cFZ:Lcom/bytedance/sdk/openadsdk/core/so/jFA;

    move/from16 v16, v0

    invoke-virtual/range {v9 .. v16}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    .line 67
    :cond_d
    :goto_6
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Pfn:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    if-eqz v0, :cond_18

    iget-boolean v2, v5, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->Ry:Z

    if-nez v2, :cond_18

    .line 68
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdWrapperListener;->onAdClicked()V

    return-void

    .line 69
    :pswitch_4
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ex:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    if-eqz v0, :cond_e

    .line 70
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 71
    :cond_e
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->tB:Lcom/bytedance/sdk/openadsdk/tB/tB;

    if-eqz v0, :cond_f

    .line 72
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/tB/tB;->oJ()V

    return-void

    .line 73
    :cond_f
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->mu:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V

    return-void

    .line 74
    :pswitch_5
    iget v2, v5, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->eZI:I

    if-lez v2, :cond_10

    .line 75
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/XAo;->oJ(Z)V

    .line 76
    :cond_10
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ba:Lcom/bytedance/sdk/openadsdk/core/so/so;

    if-eqz v2, :cond_12

    .line 77
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/so/so;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/eZI;)V

    .line 78
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ba:Lcom/bytedance/sdk/openadsdk/core/so/so;

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Ljava/lang/String;)V

    .line 79
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 80
    iget-object v2, v5, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->si:Lorg/json/JSONObject;

    if-eqz v2, :cond_11

    .line 81
    const-string v3, "is_ceiling_page"

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 82
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ba:Lcom/bytedance/sdk/openadsdk/core/so/so;

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->ex(Z)V

    .line 83
    :cond_11
    iget-object v9, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ba:Lcom/bytedance/sdk/openadsdk/core/so/so;

    move/from16 v16, v0

    invoke-virtual/range {v9 .. v16}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    .line 84
    :cond_12
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Pfn:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    if-eqz v0, :cond_13

    iget-boolean v2, v5, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->Ry:Z

    if-nez v2, :cond_13

    .line 85
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdWrapperListener;->onAdClicked()V

    .line 86
    :cond_13
    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/core/XAo;->oJ(Z)V

    .line 87
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/16 v2, 0x9

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    return-void

    .line 88
    :pswitch_6
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->PiB:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_14

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 89
    invoke-static/range {v16 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 90
    :cond_14
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jB()I

    move-result v2

    if-ne v2, v7, :cond_15

    if-nez v0, :cond_15

    return-void

    .line 91
    :cond_15
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cFZ:Lcom/bytedance/sdk/openadsdk/core/so/jFA;

    if-eqz v2, :cond_16

    .line 92
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/so/jFA;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/eZI;)V

    .line 93
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cFZ:Lcom/bytedance/sdk/openadsdk/core/so/jFA;

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Ljava/lang/String;)V

    .line 94
    iget-object v9, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cFZ:Lcom/bytedance/sdk/openadsdk/core/so/jFA;

    move/from16 v16, v0

    invoke-virtual/range {v9 .. v16}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    .line 95
    :cond_16
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Pfn:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    if-eqz v0, :cond_18

    iget-boolean v2, v5, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->Ry:Z

    if-nez v2, :cond_18

    .line 96
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdWrapperListener;->onAdClicked()V

    return-void

    .line 97
    :cond_17
    iget v0, v5, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->RZ:I

    if-ltz v0, :cond_18

    .line 98
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 99
    :try_start_1
    const-string v3, "switch"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ(Lorg/json/JSONObject;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_18
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)V
    .locals 0

    .line 5
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/ex;)V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->UN:Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    :try_start_0
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;

    if-eqz v0, :cond_2

    .line 153
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba()Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->dLZ()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oq:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    .line 154
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->UN:Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;->oJ()V

    .line 155
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->UN:Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;->ZYk()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oq:Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/ex;Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/adexpress/ZYk/ex<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;",
            ")V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->HyG:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 109
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    .line 110
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/ex;->tB()I

    .line 111
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Dex:I

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->so()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ba(I)V

    .line 113
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/ex;->tB()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->so(I)V

    .line 115
    :cond_1
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/ex;->tB()I

    move-result v0

    if-eq v0, v1, :cond_7

    .line 116
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/ex;->Pfn()Landroid/view/View;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 118
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 119
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    .line 120
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 121
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_5

    .line 123
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v1, :cond_4

    .line 124
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 126
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/ex;->Pfn()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 127
    :cond_6
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/ex;->Pfn()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 128
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_8

    .line 129
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cFZ()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->tb:J

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/ex;->tB()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(JJLjava/lang/String;I)V

    .line 130
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->yz:Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;

    if-eqz p1, :cond_9

    .line 131
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/so/PiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/so/PiB;->dLZ()V

    .line 132
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Pfn:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    if-eqz p1, :cond_a

    .line 133
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->tB()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->ex()D

    move-result-wide v1

    double-to-float v1, v1

    .line 134
    invoke-interface {p1, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;->onRenderSuccess(Landroid/view/View;FF)V

    .line 135
    :cond_a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    instance-of p1, p1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ba;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/si;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 136
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jr()V

    .line 137
    :cond_b
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ZYk(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 138
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getDynamicShowType()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->tB(I)Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn;->oJ(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;)V

    .line 139
    :cond_c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->wd:Lcom/bytedance/sdk/openadsdk/core/so/Id;

    if-eqz p1, :cond_d

    .line 140
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/so/Id;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public oJ(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 6
    return-void
.end method

.method public oJ(ZLjava/lang/String;)V
    .locals 0

    .line 7
    return-void
.end method

.method public oJ(Lorg/json/JSONObject;)Z
    .locals 0

    .line 8
    const/4 p1, 0x0

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->tb()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Rl:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->mu:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->XAo:Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/jFA;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Rl:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->mu:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ba(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Ln()V

    .line 23
    .line 24
    .line 25
    const/16 v0, 0x8

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {p0, v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ(IZZ)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->tb()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1c

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v2

    .line 20
    :goto_0
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->onWindowVisibilityChanged(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->tb()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Z)V

    .line 29
    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 34
    .line 35
    const/4 v0, 0x4

    .line 36
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 41
    .line 42
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ(IZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onvideoComplate()V
    .locals 0

    .line 1
    return-void
.end method

.method public oq()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/so/oq;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public setBackupListener(Lcom/bytedance/sdk/component/adexpress/ZYk/tB;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->eZI:Lcom/bytedance/sdk/component/adexpress/ZYk/tB;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->LS:Lcom/bytedance/sdk/component/adexpress/ZYk/ba;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/ba;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/tB;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setBannerClickClosedListener(Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->XAo:Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;

    .line 2
    .line 3
    return-void
.end method

.method public setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/so/so;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ba:Lcom/bytedance/sdk/openadsdk/core/so/so;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ$oJ;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setClickListener(Lcom/bytedance/sdk/openadsdk/core/so/jFA;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cFZ:Lcom/bytedance/sdk/openadsdk/core/so/jFA;

    .line 2
    .line 3
    return-void
.end method

.method public setClosedListenerKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->mu:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cdg:Lcom/bytedance/sdk/openadsdk/core/so/tB;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/tB;->oJ(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setDislike(Lcom/bytedance/sdk/openadsdk/tB/tB;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/so/oq;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/ex;->Pfn()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->setDislikeInner(Lcom/bytedance/sdk/openadsdk/core/Ln;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cdg:Lcom/bytedance/sdk/openadsdk/core/so/tB;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/Ln;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->tB:Lcom/bytedance/sdk/openadsdk/tB/tB;

    .line 28
    .line 29
    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Pfn:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cdg:Lcom/bytedance/sdk/openadsdk/core/so/tB;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/tB;->oJ(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setJsbLandingPageOpenListener(Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Yg:Lcom/bytedance/sdk/openadsdk/core/so/jr;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getJsObject()Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getJsObject()Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jB:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public setOuterDislike(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/so/oq;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/ex;->Pfn()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/so/oJ;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/oJ;->setDislikeOuter(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cdg:Lcom/bytedance/sdk/openadsdk/core/so/tB;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/tB;->oJ(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ex:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    .line 28
    .line 29
    return-void
.end method

.method public setSoundMute(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Id:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->HL:Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->ZYk()Lcom/bytedance/sdk/component/adexpress/dynamic/ex;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->HL:Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->ZYk()Lcom/bytedance/sdk/component/adexpress/dynamic/ex;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex;->setSoundMute(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->IUZ:Lcom/bytedance/sdk/component/adexpress/ZYk/ex;

    .line 23
    .line 24
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->setSoundMute(Z)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public setTime(Ljava/lang/CharSequence;IIZ)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ZYk(II)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->UN:Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ZYk;->oJ(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    :cond_0
    return-void
.end method

.method public setTimeUpdate(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setVastVideoHelper(Lcom/bytedance/sdk/openadsdk/core/tB/jFA;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->uvK:Lcom/bytedance/sdk/openadsdk/core/tB/jFA;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoBusiness(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Yg:Lcom/bytedance/sdk/openadsdk/core/so/jr;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setVideoFrameChangeListener(Lcom/bytedance/sdk/openadsdk/BTZ/cFZ;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Yg:Lcom/bytedance/sdk/openadsdk/core/so/jr;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getJsObject()Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getJsObject()Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/BTZ/cFZ;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method protected so()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public tB()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected tB(I)Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;
    .locals 1

    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;-><init>(I)V

    return-object v0
.end method

.method protected tB(Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    return-void
.end method
