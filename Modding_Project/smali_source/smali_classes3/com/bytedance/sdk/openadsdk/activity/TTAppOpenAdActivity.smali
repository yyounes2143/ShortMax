.class public Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;
.super Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/IUZ$oJ;
.implements Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;


# static fields
.field private static jFA:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;


# instance fields
.field private BTZ:Lcom/bytedance/sdk/openadsdk/common/awB;

.field private HL:I

.field private IUZ:Landroid/widget/FrameLayout;

.field private Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private volatile Jc:Z

.field private Ln:Z

.field private LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

.field protected Pfn:Z

.field private PiB:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

.field private QSm:I

.field private RZ:Z

.field private Ry:F

.field private final UN:Lcom/bytedance/sdk/openadsdk/component/oJ;

.field private final WcQ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final Xe:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final ZYk:Lcom/bytedance/sdk/component/utils/IUZ;

.field private awB:Lcom/bytedance/sdk/openadsdk/utils/wd;

.field ba:J

.field cFZ:I

.field private cY:Lcom/bytedance/sdk/openadsdk/IListenerManager;

.field private dLZ:Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;

.field private eZI:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

.field final ex:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private jr:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

.field private final kkU:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

.field private final mu:Ljava/lang/Runnable;

.field private nke:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field protected final oJ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private oq:Ljava/lang/String;

.field private si:F

.field final tB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private tb:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Lcom/bytedance/sdk/component/utils/IUZ;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v0, v2, p0}, Lcom/bytedance/sdk/component/utils/IUZ;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/IUZ$oJ;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->ZYk:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->tB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->ex:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/component/so/oJ;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->kkU:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    .line 43
    .line 44
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Pfn:Z

    .line 45
    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->WcQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    .line 53
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/wd;->tB()Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->awB:Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 58
    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Xe:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    .line 66
    const-wide/16 v2, 0x0

    .line 67
    .line 68
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->ba:J

    .line 69
    .line 70
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Jc:Z

    .line 71
    .line 72
    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->cFZ:I

    .line 74
    .line 75
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;

    .line 76
    .line 77
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->UN:Lcom/bytedance/sdk/openadsdk/component/oJ;

    .line 81
    .line 82
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;

    .line 83
    .line 84
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->mu:Ljava/lang/Runnable;

    .line 88
    .line 89
    return-void
.end method

.method private BTZ()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->HL:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->cFZ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 7
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->HL:I

    if-eq v0, v1, :cond_2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_3
    return-void
.end method

.method static synthetic BTZ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->WcQ()V

    return-void
.end method

.method static synthetic HL(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->RZ()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic IUZ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oq:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private Id()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "onAdClicked"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->jr:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdWrapperListener;->onAdClicked()V

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->QSm:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->cY(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Xe:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void
.end method

.method static synthetic Id(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->si()V

    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->awB()V

    return-void
.end method

.method private PiB()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->BTZ:Lcom/bytedance/sdk/openadsdk/common/awB;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/common/awB;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/common/awB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->BTZ:Lcom/bytedance/sdk/openadsdk/common/awB;

    .line 4
    const-string v1, "video_player"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/awB;->setDislikeSource(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->BTZ:Lcom/bytedance/sdk/openadsdk/common/awB;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/awB;->setCallback(Lcom/bytedance/sdk/openadsdk/common/awB$oJ;)V

    :cond_0
    const v0, 0x1020002

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->BTZ:Lcom/bytedance/sdk/openadsdk/common/awB;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->PiB:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    if-nez v1, :cond_1

    .line 9
    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->PiB:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method static synthetic PiB(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id()V

    return-void
.end method

.method static synthetic QSm(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Ry:F

    return p0
.end method

.method private QSm()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->WcQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->mu:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 5
    :catchall_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->finish()V

    return-void
.end method

.method private RZ()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jA()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    return v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Ln:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/tB;->ex()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method static synthetic RZ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->dLZ:Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;

    return-object p0
.end method

.method static synthetic Ry(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->HL:I

    return p0
.end method

.method private Ry()V
    .locals 7

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->QSm:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->QSm(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->QSm:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->oq(Ljava/lang/String;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->kkU:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/so/oJ;->tB()J

    move-result-wide v1

    int-to-long v3, v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->jr()V

    :cond_0
    return-void
.end method

.method static synthetic WcQ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p0
.end method

.method private WcQ()V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->RZ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Xe()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Jc:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->ZYk:Lcom/bytedance/sdk/component/utils/IUZ;

    const/16 v1, 0x64

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private Xe()V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->dLZ:Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zxE()Lcom/bytedance/sdk/openadsdk/core/model/LpP;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zxE()Lcom/bytedance/sdk/openadsdk/core/model/LpP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/LpP;->ZYk()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zxE()Lcom/bytedance/sdk/openadsdk/core/model/LpP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/LpP;->oJ()F

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->dLZ:Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->oJ(IFZ)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/so/tB;->ZYk()Lcom/bytedance/sdk/openadsdk/component/so/ZYk;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->kkU:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/so/oJ;->oJ()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(J)V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/so/tB;->ZYk()Lcom/bytedance/sdk/openadsdk/component/so/ZYk;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(F)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 10
    :goto_1
    const-string v1, "TTAppOpenAdActivity"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Xe(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oq()V

    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Xe()V

    return-void
.end method

.method private ZYk(Landroid/os/Bundle;)Z
    .locals 4

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    const-string v1, "multi_process_materialmeta"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    const-string v2, "open_ad"

    const-string v3, "initData MultiGlobalInfo throws "

    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "TTAppOpenAdActivity"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :cond_0
    :goto_0
    const-string v1, "multi_process_meta_md5"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oq:Ljava/lang/String;

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(Landroid/content/Intent;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(I)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->ex()Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->jr:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->Pfn()V

    .line 13
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Landroid/content/Intent;)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Landroid/os/Bundle;)V

    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-nez p1, :cond_3

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->finish()V

    const/4 p1, 0x0

    return p1

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BHY()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->nke:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->ba:J

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(J)V

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->QSm:I

    .line 20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Ln:Z

    return p1
.end method

.method private awB()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->RZ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Xe()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->ZYk:Lcom/bytedance/sdk/component/utils/IUZ;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method static synthetic awB(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Ln:Z

    return p0
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->jr()V

    return-void
.end method

.method static synthetic cFZ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->jFA()V

    return-void
.end method

.method static synthetic cY(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->WcQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private cY()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "onAdSkip"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->jr:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;->ZYk()V

    :cond_1
    return-void
.end method

.method private dLZ()V
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "changeScreenOrientation: mOrientation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->HL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->BTZ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    const-string v1, "TTAppOpenAdActivity"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->BTZ()V

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->dLZ(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    .line 9
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->HL:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 10
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 11
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 12
    :cond_2
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 13
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    int-to-float v0, v0

    .line 14
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->si:F

    int-to-float v0, v1

    .line 15
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Ry:F

    .line 16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ()F

    move-result v0

    .line 17
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->HL:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 19
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->si:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->si:F

    goto :goto_2

    :cond_3
    if-ne v1, v2, :cond_4

    .line 20
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Ry:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Ry:F

    .line 21
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

    if-eqz v0, :cond_5

    .line 22
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Ry:F

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->si:F

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ(FF)V

    :cond_5
    return-void
.end method

.method static synthetic dLZ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->RZ:Z

    return p0
.end method

.method static synthetic eZI(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->IUZ:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private eZI()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->PiB:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->getDislikeTip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->show(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/so/oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->kkU:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    return-object p0
.end method

.method static synthetic jFA(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/utils/wd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->awB:Lcom/bytedance/sdk/openadsdk/utils/wd;

    return-object p0
.end method

.method private jFA()V
    .locals 2

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "invoke callback onAdDismiss, "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTAppOpenAdActivity"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    const-string v0, "onAdTimeOver"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->jr:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;->tB()V

    :cond_1
    return-void
.end method

.method static synthetic jr(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/ex/cFZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->eZI:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    return-object p0
.end method

.method private jr()V
    .locals 4

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->QSm:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/HL;->tB(I)V

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->cY()V

    .line 4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->RZ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Xe()V

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/so/tB;->oJ(I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->kkU:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/so/oJ;->tB()J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->dLZ:Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->oJ()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->kkU:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/so/oJ;->ZYk()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/ex/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;IIF)V

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/so/tB;->PiB()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    .line 13
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ba(J)V

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->Pfn(J)V

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->finish()V

    return-void
.end method

.method private kkU()V
    .locals 2

    const/16 v0, 0x1a

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->HL:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->HL:I

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Tt()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->HL:I

    .line 7
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->dLZ()V

    return-void
.end method

.method static synthetic kkU(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->QSm()V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/tB;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;Lcom/bytedance/sdk/openadsdk/component/tB;)Lcom/bytedance/sdk/openadsdk/component/tB;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

    return-object p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)Lcom/bytedance/sdk/openadsdk/ex/cFZ;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->eZI:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    return-object p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->RZ()I

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private oJ(Ljava/lang/String;)V
    .locals 2

    .line 9
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$6;

    const-string v1, "AppOpenAd_executeMultiProcessCallback"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$6;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->tB(Lcom/bytedance/sdk/component/so/so;I)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;Z)Z
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Jc:Z

    return p1
.end method

.method static synthetic oq(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->si:F

    return p0
.end method

.method private oq()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "onAdShow"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->jr:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;->oJ()V

    :cond_1
    return-void
.end method

.method static synthetic si(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->UN:Lcom/bytedance/sdk/openadsdk/component/oJ;

    return-object p0
.end method

.method private si()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->PiB:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->getDislikeSendTip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->show(Ljava/lang/String;)V

    return-void
.end method

.method private so()V
    .locals 3

    .line 2
    const-string v0, "TTAppOpenAdActivity"

    const-string v1, "startCountDownTimer() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ()I

    move-result v0

    if-ltz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ()I

    move-result v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->QSm:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->oq(Ljava/lang/String;)I

    move-result v0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->dLZ:Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->kkU:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/so/oJ;->ZYk()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->oJ(F)V

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->dLZ:Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->ZYk(I)V

    return-void
.end method

.method static synthetic so(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->so()V

    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->cY()V

    return-void
.end method

.method static synthetic tb(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->tb:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method Pfn()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->RZ:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/so/tB;->Pfn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/so/tB;->so()V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->awB()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->dLZ:Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->ex()V

    :cond_2
    return-void
.end method

.method protected ZYk()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Ry()V

    return-void
.end method

.method protected ba()Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->cY:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;

    move-result-object v0

    const/4 v1, 0x7

    .line 4
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;->oJ(I)Landroid/os/IBinder;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->cY:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->cY:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    return-object v0
.end method

.method protected cFZ()Z
    .locals 3

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 3
    const-string v2, "orientation_angle"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 4
    const-string v2, "TTAppOpenAdActivity"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method ex()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->tB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->RZ:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/so/tB;->ba()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/so/tB;->dLZ()V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->WcQ()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->dLZ:Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->tB()V

    :cond_2
    return-void
.end method

.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public oJ(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Xe()V

    :goto_0
    return-void
.end method

.method protected oJ(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 10
    const-string v0, "ad_source"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->tb:I

    .line 11
    const-string v0, "start_show_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->ba:J

    :cond_0
    return-void
.end method

.method protected oJ(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->jr:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    if-nez v0, :cond_0

    .line 13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->jFA:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->jr:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->jFA:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    .line 15
    :cond_0
    :try_start_0
    const-string v0, "meta_index"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 16
    const-string v1, "multi_process_meta_md5"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oq:Ljava/lang/String;

    .line 17
    const-string v1, "ad_source"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->tb:I

    .line 18
    const-string v1, "start_show_time"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->ba:J

    .line 19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(I)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 20
    const-string v0, "TTAppOpenAdActivity"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public oJ(Landroid/os/Message;)V
    .locals 1

    .line 21
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    .line 22
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->RZ:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 23
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Xe()V

    .line 24
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/so/tB;->oJ(I)V

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 28
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;->Pfn:Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;)V

    .line 29
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->cY()V

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->finish()V

    :cond_2
    return-void
.end method

.method protected oJ()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/app/Activity;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$7;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$7;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Ry()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/si;->ZYk(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->ZYk(Landroid/os/Bundle;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->finish()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->Pfn()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->finish()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 34
    .line 35
    const-string v0, "open_ad"

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->RZ:Z

    .line 48
    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v0, "onCreate: isVideo is "

    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->RZ:Z

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->RZ:Z

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->kkU:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ba()D

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    double-to-float v0, v0

    .line 78
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/so/oJ;->oJ(F)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->kkU:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    .line 83
    .line 84
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->QSm:I

    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Id(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    int-to-float v0, v0

    .line 99
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/so/oJ;->oJ(F)V

    .line 100
    .line 101
    .line 102
    :goto_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;

    .line 103
    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->kkU:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    .line 105
    .line 106
    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;-><init>(Lcom/bytedance/sdk/openadsdk/component/so/oJ;)V

    .line 107
    .line 108
    .line 109
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->dLZ:Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;

    .line 110
    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->UN:Lcom/bytedance/sdk/openadsdk/component/oJ;

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/component/ba/oJ;)V

    .line 114
    .line 115
    .line 116
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->kkU()V

    .line 117
    .line 118
    .line 119
    new-instance p1, Landroid/widget/FrameLayout;

    .line 120
    .line 121
    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 122
    .line 123
    .line 124
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->IUZ:Landroid/widget/FrameLayout;

    .line 125
    .line 126
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 127
    .line 128
    const/4 v1, -0x1

    .line 129
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    .line 134
    .line 135
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->IUZ:Landroid/widget/FrameLayout;

    .line 136
    .line 137
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->IUZ:Landroid/widget/FrameLayout;

    .line 141
    .line 142
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$2;

    .line 143
    .line 144
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 148
    .line 149
    .line 150
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 159
    .line 160
    const/16 v1, 0x23

    .line 161
    .line 162
    if-lt v0, v1, :cond_4

    .line 163
    .line 164
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$3;

    .line 165
    .line 166
    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;Landroid/view/View;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    .line 171
    .line 172
    :catchall_0
    :cond_4
    return-void

    .line 173
    :catchall_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/awB/tB;->ZYk()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->finish()V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method protected onDestroy()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ba/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/ba/ZYk;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "videoForceBreak"

    .line 13
    .line 14
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ba/ZYk;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->ZYk:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->dLZ:Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->Pfn()V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 40
    .line 41
    .line 42
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->RZ:Z

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->kkU:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/so/oJ;->tB()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->kkU:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/component/so/oJ;->ZYk()F

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    const/4 v5, 0x1

    .line 61
    invoke-static {v0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/component/ex/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;JFZ)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->kkU:Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/so/oJ;->ZYk()F

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    const/4 v3, 0x0

    .line 74
    const-wide/16 v4, -0x1

    .line 75
    .line 76
    invoke-static {v0, v4, v5, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/ex/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;JFZ)V

    .line 77
    .line 78
    .line 79
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->awB:Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/wd;->ba()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->WcQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->awB:Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/wd;->ex()J

    .line 98
    .line 99
    .line 100
    move-result-wide v2

    .line 101
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 106
    .line 107
    const-string v3, "open_ad"

    .line 108
    .line 109
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->eZI:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    .line 110
    .line 111
    invoke-static {v0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    .line 112
    .line 113
    .line 114
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/wd;->tB()Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->awB:Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 119
    .line 120
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

    .line 121
    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/tB;->tB()V

    .line 125
    .line 126
    .line 127
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_5

    .line 132
    .line 133
    const-string v0, "recycleRes"

    .line 134
    .line 135
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->jFA()V

    .line 139
    .line 140
    .line 141
    sput-object v1, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->jFA:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    .line 142
    .line 143
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->jr:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    .line 144
    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->BTZ:Lcom/bytedance/sdk/openadsdk/common/awB;

    .line 146
    .line 147
    if-eqz v0, :cond_6

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/awB;->setCallback(Lcom/bytedance/sdk/openadsdk/common/awB$oJ;)V

    .line 150
    .line 151
    .line 152
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 153
    .line 154
    if-eqz v0, :cond_7

    .line 155
    .line 156
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-nez v0, :cond_7

    .line 161
    .line 162
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cMS()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_7

    .line 169
    .line 170
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/ba;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->nke:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 181
    .line 182
    .line 183
    :cond_7
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Pfn:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Pfn()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Pfn:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Xe:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->cY()V

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->RZ:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Xe()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->LpP:Lcom/bytedance/sdk/openadsdk/component/tB;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v1, 0x3

    .line 50
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/so/tB;->oJ(I)V

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->finish()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->ex()V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 v0, -0x1

    .line 26
    :goto_0
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->cFZ:I

    .line 27
    .line 28
    const-string v1, "meta_index"

    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    const-string v0, "multi_process_meta_md5"

    .line 34
    .line 35
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oq:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "ad_source"

    .line 41
    .line 42
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->tb:I

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    const-string v0, "start_show_time"

    .line 48
    .line 49
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->ba:J

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :goto_1
    const-string v1, "TTAppOpenAdActivity"

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->jr:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    .line 65
    .line 66
    sput-object v0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->jFA:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    .line 67
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->cFZ:I

    .line 5
    .line 6
    if-ltz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->cFZ:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->tB(I)V

    .line 15
    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->cFZ:I

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 21
    .line 22
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ex;->oJ(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    const-string v0, "open_ad"

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Ln:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->awB:Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/utils/wd;->Pfn()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 18
    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Tjr()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Id()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ba(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PLU()Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/wd;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->WcQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->awB:Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/utils/wd;->ba()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->awB:Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/utils/wd;->ex()J

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->eZI:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    .line 80
    .line 81
    invoke-static {v1, v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/wd;->tB()Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->awB:Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 89
    .line 90
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 91
    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    const/4 v1, 0x4

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    const/16 v1, 0x8

    .line 97
    .line 98
    :goto_1
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 102
    .line 103
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Z)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method protected tB()V
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->ex:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->eZI()V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->BTZ:Lcom/bytedance/sdk/openadsdk/common/awB;

    if-nez v0, :cond_2

    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->PiB()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    const-string v1, "initDislike error"

    const-string v2, "TTAppOpenAdActivity"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->BTZ:Lcom/bytedance/sdk/openadsdk/common/awB;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/awB;->oJ()V

    :cond_3
    return-void
.end method
