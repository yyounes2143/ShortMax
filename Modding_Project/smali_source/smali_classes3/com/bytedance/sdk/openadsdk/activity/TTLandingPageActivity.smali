.class public Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;
.super Lcom/bytedance/sdk/openadsdk/activity/TTBaseLandingPageActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$tB;,
        Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$ZYk;,
        Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$oJ;
    }
.end annotation


# instance fields
.field private BTZ:Landroid/widget/Button;

.field private HL:I

.field private IUZ:I

.field private final Id:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Jc:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

.field private final Ln:Ljava/util/concurrent/atomic/AtomicInteger;

.field private LpP:Lcom/bytedance/sdk/openadsdk/common/BTZ;

.field final Pfn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private PiB:Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;

.field private QSm:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

.field private RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private Ry:Ljava/lang/String;

.field private UN:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ba$oJ;

.field private WcQ:Ljava/lang/String;

.field private XAo:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

.field private final Xe:Ljava/util/concurrent/atomic/AtomicInteger;

.field ZYk:Lcom/bytedance/sdk/openadsdk/common/awB;

.field private awB:Ljava/lang/String;

.field private ba:Lcom/bytedance/sdk/component/jFA/ba;

.field private cFZ:Landroid/widget/ImageView;

.field private cY:Ljava/lang/String;

.field private dLZ:Lcom/bytedance/sdk/openadsdk/common/WcQ;

.field private eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

.field final ex:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private jFA:Landroid/widget/TextView;

.field private jr:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

.field private kkU:Landroid/content/Context;

.field private mu:Lcom/bytedance/sdk/openadsdk/common/ex;

.field private nke:Z

.field oJ:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

.field private ofl:Z

.field private oq:Ljava/lang/String;

.field private si:I

.field tB:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

.field private final tb:Ljava/util/concurrent/atomic/AtomicInteger;

.field private wd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseLandingPageActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->Id:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->Xe:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->tb:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->Ln:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ex:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->Pfn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    const-string v0, "\u30c0\u30a6\u30f3\u30ed\u30fc\u30c9"

    .line 49
    .line 50
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->wd:Ljava/lang/String;

    .line 51
    .line 52
    return-void
.end method

.method static synthetic BTZ(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->BTZ:Landroid/widget/Button;

    return-object p0
.end method

.method private BTZ()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/common/awB;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/common/awB;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->kkU:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/common/awB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/common/awB;

    .line 4
    const-string v1, "landing_page"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/awB;->setDislikeSource(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/common/awB;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/awB;->setCallback(Lcom/bytedance/sdk/openadsdk/common/awB$oJ;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const v0, 0x1020002

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/common/awB;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->tB:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    if-nez v1, :cond_1

    .line 9
    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->kkU:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->tB:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    .line 11
    :goto_1
    const-string v1, "initDislike error"

    const-string v2, "LandingPageActivity"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->jr:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    return-object p0
.end method

.method private Pfn()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sQ()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->dLZ:Lcom/bytedance/sdk/openadsdk/common/WcQ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/WcQ;->setVisibility(I)V

    .line 5
    :cond_0
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->YQ:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->BTZ:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->oJ(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->QSm:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->Ry:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->si:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ZYk(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->Ry:Ljava/lang/String;

    .line 9
    :goto_0
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/cFZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->QSm:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    .line 10
    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->Ry:Ljava/lang/String;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->si:I

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ(Z)V

    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->BTZ:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->BTZ:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->tB(Z)V

    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->QSm:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;)V

    :cond_3
    return-void
.end method

.method static synthetic PiB(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)Lcom/bytedance/sdk/component/jFA/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    return-object p0
.end method

.method private PiB()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->tB:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->getDislikeTip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->show(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic WcQ(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ba$oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->UN:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ba$oJ;

    return-object p0
.end method

.method private WcQ()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->tB:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->getDislikeSendTip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->show(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)Lcom/bytedance/sdk/openadsdk/common/BTZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->LpP:Lcom/bytedance/sdk/openadsdk/common/BTZ;

    return-object p0
.end method

.method private ZYk(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->cFZ:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->kkU()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;I)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic awB(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->kkU()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private ba()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ypD()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ypD()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->wd:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->wd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->Ln:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic cFZ(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->tb:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private cFZ()V
    .locals 3

    .line 2
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->nQI:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/jFA/ba;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/component/jFA/ba;)V

    .line 4
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->jB:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/common/WcQ;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->dLZ:Lcom/bytedance/sdk/openadsdk/common/WcQ;

    .line 5
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->sH:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/common/WcQ;

    const v1, 0x1f000019

    .line 6
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/common/BTZ;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->LpP:Lcom/bytedance/sdk/openadsdk/common/BTZ;

    if-eqz v1, :cond_0

    .line 7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/common/BTZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->LpP:Lcom/bytedance/sdk/openadsdk/common/BTZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/common/BTZ;->oJ()V

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/WcQ;->setVisibility(I)V

    :cond_1
    const v0, 0x1f000018

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 11
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$11;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$11;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v0, 0x1f000014

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->cFZ:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 13
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$12;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$12;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_3
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->SWT:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->jFA:Landroid/widget/TextView;

    .line 15
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->MoK:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_4
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->BHY:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 18
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method static synthetic dLZ(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->cFZ:Landroid/widget/ImageView;

    return-object p0
.end method

.method private dLZ()V
    .locals 3

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    const-string v1, "isBackIntercept"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    const-string v2, "temai_back_event"

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic eZI(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->WcQ()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private ex()Landroid/view/View;
    .locals 7

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;-><init>(Landroid/content/Context;)V

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 5
    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 7
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    new-instance v2, Lcom/bytedance/sdk/openadsdk/common/WcQ;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$8;

    invoke-direct {v5, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$8;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)V

    invoke-direct {v2, p0, v5}, Lcom/bytedance/sdk/openadsdk/common/WcQ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/common/WcQ$oJ;)V

    .line 9
    sget v5, Lcom/bytedance/sdk/openadsdk/utils/eZI;->sH:I

    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    .line 10
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42300000    # 44.0f

    invoke-static {p0, v6}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 13
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 14
    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    new-instance v1, Lcom/bytedance/sdk/component/jFA/ba;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/jFA/ba;-><init>(Landroid/content/Context;)V

    .line 16
    sget v5, Lcom/bytedance/sdk/openadsdk/utils/eZI;->nQI:I

    invoke-virtual {v1, v5}, Landroid/view/View;->setId(I)V

    .line 17
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/WcQ;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$9;

    invoke-direct {v5, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$9;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)V

    invoke-direct {v1, p0, v5}, Lcom/bytedance/sdk/openadsdk/common/WcQ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/common/WcQ$oJ;)V

    .line 19
    sget v5, Lcom/bytedance/sdk/openadsdk/utils/eZI;->jB:I

    invoke-virtual {v1, v5}, Landroid/view/View;->setId(I)V

    .line 20
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x51

    .line 21
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 22
    invoke-virtual {v2, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;

    const/4 v5, 0x0

    const v6, 0x103001f

    invoke-direct {v1, p0, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    sget v5, Lcom/bytedance/sdk/openadsdk/utils/eZI;->MoK:I

    invoke-virtual {v1, v5}, Landroid/view/View;->setId(I)V

    .line 25
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;->setProgress(I)V

    const/16 v3, 0x8

    .line 26
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 27
    const-string v3, "tt_browser_progress_style"

    invoke-static {p0, v3}, Lcom/bytedance/sdk/openadsdk/utils/dLZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {p0, v5}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x31

    .line 29
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 30
    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/BTZ;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/common/BTZ;-><init>(Landroid/content/Context;)V

    .line 32
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ofl:Z

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/common/BTZ;->setOnlyLoading(Z)V

    const v2, 0x1f000019

    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 34
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->Xe:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic jFA(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->QSm:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    return-object p0
.end method

.method private jFA()V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->kkU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->Id:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->dLZ()V

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ZYk(I)V

    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 7
    const-string v1, "onBackPressed: "

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "TTAD.LandingPageAct"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic kkU(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p0
.end method

.method private kkU()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->oq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->oq:Ljava/lang/String;

    const-string v1, "__luban_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/Pfn/ba;

    return-object p0
.end method

.method private oJ(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    return-void
.end method

.method private oJ(Ljava/lang/String;)V
    .locals 2

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->BTZ:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 8
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$10;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$10;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method static synthetic so(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->jFA:Landroid/widget/TextView;

    return-object p0
.end method

.method private so()V
    .locals 2

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/UN;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Lcom/bytedance/sdk/component/jFA/ba;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->WcQ:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->awB:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ex(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->si:I

    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(I)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 8
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oG()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(I)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 9
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ZiK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->Pfn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 10
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/component/jFA/ba;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v0

    const-string v1, "landingpage"

    .line 11
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->cY:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected ZYk()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->jFA()V

    return-void
.end method

.method protected oJ()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->jFA()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    :catchall_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->Pfn()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->oJ(I)V

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->Pfn()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/si;->ZYk(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    :catchall_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    const-string v2, "only_loading"

    .line 37
    .line 38
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ofl:Z

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(Landroid/content/Intent;)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(I)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 58
    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->dLZ()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ofl:Z

    .line 66
    .line 67
    :cond_2
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ex()Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    .line 73
    .line 74
    const-string v2, ""

    .line 75
    .line 76
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->oq:Ljava/lang/String;

    .line 77
    .line 78
    const/4 v2, 0x4

    .line 79
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ZYk(I)V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_4

    .line 87
    .line 88
    const-string v2, "multi_process_materialmeta"

    .line 89
    .line 90
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    .line 97
    .line 98
    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :catch_0
    move-exception v2

    .line 109
    const-string v4, "TTAD.LandingPageAct"

    .line 110
    .line 111
    const-string v5, "TTLandingPageActivity - onCreate MultiGlobalInfo : "

    .line 112
    .line 113
    invoke-static {v4, v5, v2}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    :goto_1
    const-string v2, "url"

    .line 117
    .line 118
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->oq:Ljava/lang/String;

    .line 123
    .line 124
    const-string v2, "event_tag"

    .line 125
    .line 126
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->Ry:Ljava/lang/String;

    .line 131
    .line 132
    const-string v2, "source"

    .line 133
    .line 134
    const/4 v4, -0x1

    .line 135
    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->si:I

    .line 140
    .line 141
    const-string v2, "adid"

    .line 142
    .line 143
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->WcQ:Ljava/lang/String;

    .line 148
    .line 149
    const-string v2, "log_extra"

    .line 150
    .line 151
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->awB:Ljava/lang/String;

    .line 156
    .line 157
    const-string v2, "gecko_id"

    .line 158
    .line 159
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->cY:Ljava/lang/String;

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 167
    .line 168
    if-eqz p1, :cond_5

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->WcQ:Ljava/lang/String;

    .line 175
    .line 176
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->awB:Ljava/lang/String;

    .line 183
    .line 184
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PQw()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->cY:Ljava/lang/String;

    .line 191
    .line 192
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->so()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->oq:Ljava/lang/String;

    .line 199
    .line 200
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kkU()I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->si:I

    .line 207
    .line 208
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 209
    .line 210
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jFA()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->Ry:Ljava/lang/String;

    .line 215
    .line 216
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 217
    .line 218
    if-nez p1, :cond_6

    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->cFZ()V

    .line 225
    .line 226
    .line 227
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->cY:Ljava/lang/String;

    .line 228
    .line 229
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    if-nez p1, :cond_8

    .line 234
    .line 235
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;->ZYk()Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->jr:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    .line 244
    .line 245
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->jr:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    .line 250
    .line 251
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->cY:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {p1, v2, v4}, Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;->oJ(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->HL:I

    .line 258
    .line 259
    if-lez p1, :cond_7

    .line 260
    .line 261
    const/4 p1, 0x2

    .line 262
    goto :goto_3

    .line 263
    :cond_7
    move p1, v3

    .line 264
    :goto_3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->IUZ:I

    .line 265
    .line 266
    :cond_8
    iput-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->kkU:Landroid/content/Context;

    .line 267
    .line 268
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 269
    .line 270
    if-eqz p1, :cond_9

    .line 271
    .line 272
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->oJ(Z)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->ZYk(Z)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 285
    .line 286
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->oJ(Landroid/webkit/WebView;)V

    .line 291
    .line 292
    .line 293
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 294
    .line 295
    const/4 v2, 0x1

    .line 296
    const-string v4, "landingpage"

    .line 297
    .line 298
    if-eqz p1, :cond_a

    .line 299
    .line 300
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    if-eqz p1, :cond_a

    .line 305
    .line 306
    new-instance p1, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$oJ;

    .line 307
    .line 308
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->HL:I

    .line 309
    .line 310
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 311
    .line 312
    invoke-direct {p1, v5, v6, v4, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$oJ;-><init>(ILcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)V

    .line 313
    .line 314
    .line 315
    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 316
    .line 317
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 318
    .line 319
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 320
    .line 321
    invoke-virtual {v7}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    iget v8, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->IUZ:I

    .line 326
    .line 327
    invoke-direct {v5, v6, v7, p1, v8}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/ex/dLZ;I)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v5, v2}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->ZYk(Z)Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->oJ:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 335
    .line 336
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ba$oJ;

    .line 337
    .line 338
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->UN:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ba$oJ;

    .line 339
    .line 340
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 341
    .line 342
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 343
    .line 344
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->kkU:Landroid/content/Context;

    .line 345
    .line 346
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->Ry:Ljava/lang/String;

    .line 347
    .line 348
    invoke-static {p1, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/component/jFA/ba;Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->mu:Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 353
    .line 354
    :cond_a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->so()V

    .line 355
    .line 356
    .line 357
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 358
    .line 359
    if-eqz p1, :cond_b

    .line 360
    .line 361
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/jFA/ba;->setLandingPage(Z)V

    .line 362
    .line 363
    .line 364
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 365
    .line 366
    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/component/jFA/ba;->setTag(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 370
    .line 371
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 372
    .line 373
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->hW()Lcom/bytedance/sdk/component/jFA/ZYk/oJ;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/jFA/ba;->setMaterialMeta(Lcom/bytedance/sdk/component/jFA/ZYk/oJ;)V

    .line 378
    .line 379
    .line 380
    :cond_b
    new-instance p1, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$1;

    .line 381
    .line 382
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->kkU:Landroid/content/Context;

    .line 383
    .line 384
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 385
    .line 386
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->WcQ:Ljava/lang/String;

    .line 387
    .line 388
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->mu:Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 389
    .line 390
    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->oJ:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 391
    .line 392
    const/4 v12, 0x1

    .line 393
    move-object v5, p1

    .line 394
    move-object v6, p0

    .line 395
    invoke-direct/range {v5 .. v12}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/UN;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/common/ex;Lcom/bytedance/sdk/openadsdk/ex/BTZ;Z)V

    .line 396
    .line 397
    .line 398
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->XAo:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

    .line 399
    .line 400
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 401
    .line 402
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 403
    .line 404
    .line 405
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->XAo:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

    .line 406
    .line 407
    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;->oJ(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 411
    .line 412
    if-eqz p1, :cond_d

    .line 413
    .line 414
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->XAo:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

    .line 415
    .line 416
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/jFA/ba;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 417
    .line 418
    .line 419
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 420
    .line 421
    if-eqz p1, :cond_c

    .line 422
    .line 423
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    const/16 v5, 0x1d50

    .line 428
    .line 429
    invoke-static {v2, v5}, Lcom/bytedance/sdk/openadsdk/utils/RZ;->oJ(Landroid/webkit/WebView;I)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/jFA/ba;->setUserAgentString(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    :cond_c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 437
    .line 438
    if-eqz p1, :cond_d

    .line 439
    .line 440
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/component/jFA/ba;->setMixedContentMode(I)V

    .line 441
    .line 442
    .line 443
    :cond_d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 444
    .line 445
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->IUZ:I

    .line 446
    .line 447
    invoke-static {p1, v4, v2}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    .line 448
    .line 449
    .line 450
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 451
    .line 452
    if-eqz p1, :cond_f

    .line 453
    .line 454
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->oq:Ljava/lang/String;

    .line 455
    .line 456
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/oq;->oJ(Lcom/bytedance/sdk/component/jFA/ba;Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 460
    .line 461
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$5;

    .line 462
    .line 463
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 464
    .line 465
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->oJ:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 466
    .line 467
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->mu:Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 468
    .line 469
    invoke-direct {v2, p0, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/ex/BTZ;Lcom/bytedance/sdk/openadsdk/common/ex;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/jFA/ba;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 473
    .line 474
    .line 475
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 476
    .line 477
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    .line 478
    .line 479
    .line 480
    move-result-object p1

    .line 481
    if-eqz p1, :cond_e

    .line 482
    .line 483
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 484
    .line 485
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    .line 486
    .line 487
    .line 488
    move-result-object p1

    .line 489
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$ZYk;

    .line 490
    .line 491
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->oJ:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 492
    .line 493
    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$ZYk;-><init>(Lcom/bytedance/sdk/openadsdk/ex/BTZ;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 497
    .line 498
    .line 499
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 500
    .line 501
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$tB;

    .line 506
    .line 507
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->oJ:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 508
    .line 509
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->mu:Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 510
    .line 511
    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$tB;-><init>(Lcom/bytedance/sdk/openadsdk/ex/BTZ;Lcom/bytedance/sdk/openadsdk/common/ex;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 515
    .line 516
    .line 517
    :cond_e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 518
    .line 519
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$6;

    .line 520
    .line 521
    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$6;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/jFA/ba;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 525
    .line 526
    .line 527
    :cond_f
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->Pfn()V

    .line 528
    .line 529
    .line 530
    new-instance p1, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$7;

    .line 531
    .line 532
    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$7;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)V

    .line 533
    .line 534
    .line 535
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/jFA;->oJ(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/utils/jFA$oJ;)Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    .line 536
    .line 537
    .line 538
    move-result-object p1

    .line 539
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->Jc:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    .line 540
    .line 541
    const-wide/16 v2, 0x0

    .line 542
    .line 543
    invoke-interface {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->oJ(J)V

    .line 544
    .line 545
    .line 546
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 547
    .line 548
    .line 549
    move-result-wide v2

    .line 550
    sub-long v4, v2, v0

    .line 551
    .line 552
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 553
    .line 554
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->jr:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    .line 555
    .line 556
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->cY:Ljava/lang/String;

    .line 557
    .line 558
    const-string v7, "landingpage"

    .line 559
    .line 560
    invoke-static/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/ex/tB$oJ;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    return-void

    .line 564
    :catchall_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 565
    .line 566
    .line 567
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseLandingPageActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->oJ:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->oJ(Lcom/bytedance/sdk/component/jFA/ba;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/view/ViewGroup;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    :catchall_0
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ofl;->oJ(Landroid/webkit/WebView;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ba:Lcom/bytedance/sdk/component/jFA/ba;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->BTZ()V

    .line 53
    .line 54
    .line 55
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->oJ:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->ex(Z)V

    .line 61
    .line 62
    .line 63
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->cY:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_5

    .line 70
    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->Ln:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->Xe:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 84
    .line 85
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/tB$oJ;->oJ(IILcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 86
    .line 87
    .line 88
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->jr:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;->oJ(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->Jc:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    .line 98
    .line 99
    if-eqz v0, :cond_6

    .line 100
    .line 101
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->tB()V

    .line 102
    .line 103
    .line 104
    :cond_6
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseLandingPageActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->Jc:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->ZYk()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseLandingPageActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->dLZ()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->oJ:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->cFZ()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->nke:Z

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->nke:Z

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->oJ(I)V

    .line 27
    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->Jc:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->oJ()V

    .line 34
    .line 35
    .line 36
    :cond_3
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->RZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ex;->oJ(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->oJ:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->so()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected tB()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->Pfn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->PiB()V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/common/awB;

    if-nez v0, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->BTZ()V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/common/awB;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/awB;->oJ()V

    :cond_3
    return-void
.end method
