.class public Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;
.super Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/kkU/ex;


# instance fields
.field private Dex:J

.field private LS:Landroid/view/View;

.field private MoK:Z

.field private NO:Landroid/view/View;

.field private TA:Lcom/bytedance/sdk/openadsdk/common/eZI;

.field private UK:Landroid/widget/LinearLayout;

.field private VSB:Lcom/bytedance/sdk/openadsdk/common/ex;

.field Yg:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

.field bgF:Lcom/bytedance/sdk/openadsdk/common/awB;

.field private jB:Z

.field private jXJ:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

.field final lY:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mwH:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private oIC:Z

.field private oTd:Lcom/bytedance/sdk/openadsdk/common/BTZ;

.field private sH:Landroid/widget/TextView;

.field private uvK:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

.field private yz:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->oIC:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->lY:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->mwH:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    return-void
.end method

.method static synthetic BTZ(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)Lcom/bytedance/sdk/openadsdk/common/ex;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->VSB:Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->Dex:J

    return-wide v0
.end method

.method static synthetic PiB(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->awB()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private RZ()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->Yg:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->getDislikeSendTip()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->show(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method

.method private Ry()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->bgF:Lcom/bytedance/sdk/openadsdk/common/awB;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/common/awB;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Pfn:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/common/awB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->bgF:Lcom/bytedance/sdk/openadsdk/common/awB;

    .line 15
    .line 16
    const-string v1, "landing_page"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/awB;->setDislikeSource(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->bgF:Lcom/bytedance/sdk/openadsdk/common/awB;

    .line 22
    .line 23
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$6;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$6;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/awB;->setCallback(Lcom/bytedance/sdk/openadsdk/common/awB$oJ;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    const v0, 0x1020002

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/FrameLayout;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->bgF:Lcom/bytedance/sdk/openadsdk/common/awB;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->Yg:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Pfn:Landroid/content/Context;

    .line 55
    .line 56
    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->Yg:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void

    .line 65
    :goto_1
    const-string v1, "initDislike error"

    .line 66
    .line 67
    const-string v2, "TTVideoLandingPageLink2Activity"

    .line 68
    .line 69
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method static synthetic WcQ(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->yz:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->jB:Z

    return p0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->jB:Z

    return p1
.end method

.method private awB()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const-string v1, "click_video"

    const/4 v2, 0x0

    const-string v3, "landingpage_split_screen"

    invoke-static {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic awB(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->RZ()V

    return-void
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->MoK:Z

    return p0
.end method

.method static synthetic cFZ(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)Lcom/bytedance/sdk/openadsdk/common/eZI;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->TA:Lcom/bytedance/sdk/openadsdk/common/eZI;

    return-object p0
.end method

.method static synthetic dLZ(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->oIC:Z

    return p0
.end method

.method private eZI()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->oTd:Lcom/bytedance/sdk/openadsdk/common/BTZ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/BTZ;->ZYk()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->eZI()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic jFA(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->NO:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic kkU(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->jXJ:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->Dex:J

    return-wide p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)Landroid/view/View;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->LS:Landroid/view/View;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->oIC:Z

    return p1
.end method

.method private si()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->Yg:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->getDislikeTip()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->show(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method static synthetic so(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)Lcom/bytedance/sdk/openadsdk/common/BTZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->oTd:Lcom/bytedance/sdk/openadsdk/common/BTZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->UK:Landroid/widget/LinearLayout;

    return-object p0
.end method


# virtual methods
.method protected Pfn()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Pfn()V

    const v0, 0x1f000011

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_reward_feedback"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$12;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$12;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x1f000012

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->yz:Landroid/widget/TextView;

    .line 7
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Yg:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/common/BTZ;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->oTd:Lcom/bytedance/sdk/openadsdk/common/BTZ;

    .line 8
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->bgF:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->LS:Landroid/view/View;

    .line 9
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->XAo:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->NO:Landroid/view/View;

    .line 10
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->mwH:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 11
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->oTd:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 12
    sget v2, Lcom/bytedance/sdk/openadsdk/utils/eZI;->lY:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/widget/si;

    .line 13
    sget v3, Lcom/bytedance/sdk/openadsdk/utils/eZI;->LS:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->sH:Landroid/widget/TextView;

    .line 14
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v3, v4, v2, v5}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/Ry;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 16
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Amz()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->NO:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 19
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$13;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$13;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    if-eqz v1, :cond_2

    .line 21
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->initData(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/component/jFA/ba;)V

    .line 24
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->RZ()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->MoK:Z

    if-eqz v0, :cond_4

    .line 25
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->yz:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/common/WcQ;

    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/WcQ;->setVisibility(I)V

    .line 27
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->UF:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->UK:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    new-instance v0, Lcom/bytedance/sdk/openadsdk/common/eZI;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->UK:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const-string v7, "landingpage_split_screen"

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/common/eZI;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/bytedance/sdk/component/jFA/ba;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->TA:Lcom/bytedance/sdk/openadsdk/common/eZI;

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$14;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$14;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 32
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 34
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->oTd:Lcom/bytedance/sdk/openadsdk/common/BTZ;

    if-eqz v0, :cond_6

    .line 35
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/BTZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    :cond_6
    return-void
.end method

.method protected WcQ()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->mwH:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->si()V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->bgF:Lcom/bytedance/sdk/openadsdk/common/awB;

    if-nez v0, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->Ry()V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->bgF:Lcom/bytedance/sdk/openadsdk/common/awB;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/awB;->oJ()V

    :cond_3
    return-void
.end method

.method protected ba()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->cFZ()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->ba()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(Z)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->ba(Z)V

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->dLZ:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->dLZ:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;)V

    return-void

    .line 11
    :cond_1
    :try_start_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yB()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v2, v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/Ry;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 15
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->dLZ:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->dLZ:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 17
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->dLZ:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method protected cFZ()Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->BTZ:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public dLZ()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->dLZ()V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kkU(Z)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->sH:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->ex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->sH:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->sH:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->nQI:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->sH:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->nQI:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->oTd:Lcom/bytedance/sdk/openadsdk/common/BTZ;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/BTZ;->oJ()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->Pfn()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_5

    .line 9
    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 11
    .line 12
    if-eqz p1, :cond_5

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Pfn:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->LpP:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/component/jFA/ba;Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->VSB:Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const-string v0, "landingpage_split_screen"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/common/ex;->oJ(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->RZ()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->MoK:Z

    .line 46
    .line 47
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$1;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$7;

    .line 70
    .line 71
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Pfn:Landroid/content/Context;

    .line 72
    .line 73
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->jFA:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 74
    .line 75
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->ba:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->VSB:Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 78
    .line 79
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->wd:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 80
    .line 81
    const/4 v8, 0x1

    .line 82
    move-object v1, p1

    .line 83
    move-object v2, p0

    .line 84
    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$7;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/UN;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/common/ex;Lcom/bytedance/sdk/openadsdk/ex/BTZ;Z)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->uvK:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 95
    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->uvK:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 102
    .line 103
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$8;

    .line 104
    .line 105
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->jFA:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 106
    .line 107
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->wd:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 108
    .line 109
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->VSB:Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 110
    .line 111
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$8;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/ex/BTZ;Lcom/bytedance/sdk/openadsdk/common/ex;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 115
    .line 116
    .line 117
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Tvw:I

    .line 118
    .line 119
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Landroid/widget/TextView;

    .line 124
    .line 125
    if-eqz p1, :cond_3

    .line 126
    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->RZ()Lcom/bytedance/sdk/openadsdk/core/model/oq;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-eqz v0, :cond_3

    .line 134
    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->RZ()Lcom/bytedance/sdk/openadsdk/core/model/oq;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oq;->Pfn()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 149
    .line 150
    if-eqz p1, :cond_4

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->RZ()Lcom/bytedance/sdk/openadsdk/core/model/oq;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-eqz p1, :cond_4

    .line 157
    .line 158
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->RZ()Lcom/bytedance/sdk/openadsdk/core/model/oq;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oq;->oJ()J

    .line 165
    .line 166
    .line 167
    move-result-wide v0

    .line 168
    const-wide/16 v2, 0x3e8

    .line 169
    .line 170
    mul-long/2addr v0, v2

    .line 171
    goto :goto_0

    .line 172
    :cond_4
    const-wide/16 v0, 0x2710

    .line 173
    .line 174
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->tB()Landroid/os/Handler;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$9;

    .line 179
    .line 180
    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$9;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 188
    .line 189
    .line 190
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->eZI()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->jB:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->wd:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->oTd:Lcom/bytedance/sdk/openadsdk/common/BTZ;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/16 v1, 0x8

    .line 23
    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->wd:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->oJ(Lcom/bytedance/sdk/component/jFA/ba;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->onDestroy()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method protected tB()Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    .line 2
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;-><init>(Landroid/content/Context;)V

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x23

    const/4 v4, 0x1

    if-lt v2, v3, :cond_0

    .line 4
    invoke-virtual {v1, v4}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 5
    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, -0x1

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x435c0000    # 220.0f

    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    invoke-direct {v5, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;-><init>(Landroid/content/Context;)V

    .line 10
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/eZI;->ofl:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    .line 11
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    invoke-direct {v5, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    .line 13
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v7, 0x41a00000    # 20.0f

    .line 14
    invoke-static {v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v5, v6, v7, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 15
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v2, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v9, 0x3f800000    # 1.0f

    .line 18
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 19
    invoke-virtual {v5, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/widget/awB;

    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/awB;-><init>(Landroid/content/Context;)V

    const v7, 0x1f000011

    .line 21
    invoke-virtual {v3, v7}, Landroid/view/View;->setId(I)V

    const/16 v7, 0x11

    .line 22
    invoke-virtual {v3, v7}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;->setGravity(I)V

    .line 23
    const-string v9, "tt_reward_feedback"

    invoke-static {v0, v9}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v9, 0x2

    const/high16 v10, 0x41600000    # 14.0f

    .line 25
    invoke-virtual {v3, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 26
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x41e00000    # 28.0f

    invoke-static {v0, v12}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v13

    invoke-direct {v11, v8, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v13, 0x41800000    # 16.0f

    .line 27
    invoke-static {v0, v13}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v14

    iput v14, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v14, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 28
    invoke-virtual {v5, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/widget/WcQ;

    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/WcQ;-><init>(Landroid/content/Context;)V

    .line 30
    sget v11, Lcom/bytedance/sdk/openadsdk/utils/eZI;->wd:I

    invoke-virtual {v3, v11}, Landroid/view/View;->setId(I)V

    const/high16 v11, 0x40e00000    # 7.0f

    .line 31
    invoke-static {v0, v11}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v14

    invoke-static {v0, v11}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v15

    invoke-static {v0, v11}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v0, v11}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v3, v14, v15, v13, v11}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;->setPadding(IIII)V

    .line 32
    const-string v11, "tt_video_close_drawable"

    invoke-static {v0, v11}, Lcom/bytedance/sdk/component/utils/cY;->ex(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0, v12}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v0, v12}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v11, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v12, 0x41400000    # 12.0f

    .line 34
    invoke-static {v0, v12}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v13

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 35
    invoke-virtual {v5, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/Pfn/cFZ;

    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/cFZ;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x8

    .line 37
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 38
    sget v11, Lcom/bytedance/sdk/openadsdk/utils/eZI;->HyG:I

    invoke-virtual {v3, v11}, Landroid/view/View;->setId(I)V

    .line 39
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v13, 0x41200000    # 10.0f

    .line 40
    invoke-static {v0, v13}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v13

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 41
    invoke-virtual {v1, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    new-instance v11, Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    invoke-direct {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ;-><init>(Landroid/content/Context;)V

    .line 43
    sget v13, Lcom/bytedance/sdk/openadsdk/utils/eZI;->cdg:I

    invoke-virtual {v11, v13}, Landroid/view/View;->setId(I)V

    .line 44
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 45
    invoke-virtual {v11, v5}, Landroid/view/View;->setVisibility(I)V

    .line 46
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v14, 0x42300000    # 44.0f

    invoke-static {v0, v14}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v15

    invoke-static {v0, v14}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v13, v15, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x9

    .line 47
    invoke-virtual {v13, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v15, 0x40a00000    # 5.0f

    .line 48
    invoke-static {v0, v15}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v5

    iput v5, v13, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 49
    invoke-virtual {v3, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    invoke-direct {v5, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    .line 51
    sget v11, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Rl:I

    invoke-virtual {v5, v11}, Landroid/view/View;->setId(I)V

    .line 52
    const-string v13, "tt_circle_solid_mian"

    invoke-static {v0, v13}, Lcom/bytedance/sdk/openadsdk/utils/dLZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 54
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v13, 0x41980000    # 19.0f

    .line 55
    invoke-virtual {v5, v9, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 56
    sget-object v13, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 57
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v14}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v0, v14}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v13, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    invoke-virtual {v13, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 59
    invoke-static {v0, v15}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v2

    iput v2, v13, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 60
    invoke-virtual {v3, v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    .line 62
    sget v5, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Jm:I

    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    .line 63
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 64
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 65
    const-string v6, "#e5000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    invoke-virtual {v2, v9, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 67
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xf

    .line 68
    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    invoke-static {v0, v15}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v13

    iput v13, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/high16 v13, 0x42a00000    # 80.0f

    .line 70
    invoke-static {v0, v13}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v14

    iput v14, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 71
    invoke-virtual {v6, v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 72
    invoke-virtual {v3, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    .line 74
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Qu:I

    invoke-virtual {v2, v6}, Landroid/view/View;->setId(I)V

    .line 75
    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 76
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 77
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 78
    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 79
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 80
    const-string v5, "tt_video_mobile_go_detail"

    invoke-static {v0, v5}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, -0x1

    .line 81
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41600000    # 14.0f

    .line 82
    invoke-virtual {v2, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v6, 0x40000000    # 2.0f

    .line 83
    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v14

    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v2, v9, v11, v14, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 84
    const-string v9, "tt_ad_cover_btn_begin_bg"

    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/dLZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 85
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v11, 0x42b40000    # 90.0f

    invoke-static {v0, v11}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v11

    const/high16 v12, 0x42100000    # 36.0f

    invoke-static {v0, v12}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v9, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0xb

    .line 86
    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 87
    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 88
    invoke-static {v0, v15}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v10

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 89
    invoke-virtual {v3, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance v3, Lcom/bytedance/sdk/component/jFA/ba;

    invoke-direct {v3, v0}, Lcom/bytedance/sdk/component/jFA/ba;-><init>(Landroid/content/Context;)V

    .line 93
    sget v10, Lcom/bytedance/sdk/openadsdk/utils/eZI;->nQI:I

    invoke-virtual {v3, v10}, Landroid/view/View;->setId(I)V

    .line 94
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 95
    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v6

    iput v6, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 96
    invoke-virtual {v2, v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/Pfn/cFZ;

    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/cFZ;-><init>(Landroid/content/Context;)V

    .line 98
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/eZI;->bgF:I

    invoke-virtual {v3, v6}, Landroid/view/View;->setId(I)V

    .line 99
    const-string v6, "#F8F8F8"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 100
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v6, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-instance v6, Lcom/bytedance/sdk/openadsdk/common/BTZ;

    invoke-direct {v6, v0}, Lcom/bytedance/sdk/openadsdk/common/BTZ;-><init>(Landroid/content/Context;)V

    .line 102
    sget v10, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Yg:I

    invoke-virtual {v6, v10}, Landroid/view/View;->setId(I)V

    .line 103
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    invoke-direct {v6, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;-><init>(Landroid/content/Context;)V

    .line 105
    sget v10, Lcom/bytedance/sdk/openadsdk/utils/eZI;->XAo:I

    invoke-virtual {v6, v10}, Landroid/view/View;->setId(I)V

    .line 106
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x8

    .line 107
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 108
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xd

    .line 109
    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 110
    invoke-virtual {v3, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/widget/si;

    invoke-direct {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/si;-><init>(Landroid/content/Context;)V

    .line 112
    sget v9, Lcom/bytedance/sdk/openadsdk/utils/eZI;->lY:I

    invoke-virtual {v4, v9}, Landroid/view/View;->setId(I)V

    .line 113
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0, v13}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v0, v13}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 114
    iput v7, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 115
    invoke-virtual {v6, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    invoke-direct {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    .line 117
    sget v9, Lcom/bytedance/sdk/openadsdk/utils/eZI;->mwH:I

    invoke-virtual {v4, v9}, Landroid/view/View;->setId(I)V

    .line 118
    const-string v9, "#161823"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x41c00000    # 24.0f

    .line 119
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v4, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 120
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 121
    iput v7, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v10, 0x41400000    # 12.0f

    .line 122
    invoke-static {v0, v10}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v10

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 123
    invoke-virtual {v6, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    invoke-direct {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    .line 125
    sget v9, Lcom/bytedance/sdk/openadsdk/utils/eZI;->oTd:I

    invoke-virtual {v4, v9}, Landroid/view/View;->setId(I)V

    .line 126
    const-string v9, "#80161823"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x41800000    # 16.0f

    .line 127
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v4, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v9, 0x4

    .line 128
    invoke-virtual {v4, v9}, Landroid/view/View;->setTextAlignment(I)V

    .line 129
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 130
    iput v7, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v10, 0x42700000    # 60.0f

    .line 131
    invoke-static {v0, v10}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v10

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/high16 v10, 0x41000000    # 8.0f

    .line 132
    invoke-static {v0, v10}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v10

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 133
    invoke-virtual {v6, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    invoke-direct {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    .line 135
    sget v9, Lcom/bytedance/sdk/openadsdk/utils/eZI;->LS:I

    invoke-virtual {v4, v9}, Landroid/view/View;->setId(I)V

    .line 136
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v9, -0x1

    .line 137
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    invoke-static {v0, v5}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const-string v5, "tt_reward_video_download_btn_bg"

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/dLZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 140
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x437f0000    # 255.0f

    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x42300000    # 44.0f

    invoke-static {v0, v10}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v5, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 141
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v7, 0x42000000    # 32.0f

    .line 142
    invoke-static {v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 143
    invoke-virtual {v6, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    invoke-direct {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->jXJ:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 145
    sget v5, Lcom/bytedance/sdk/openadsdk/utils/eZI;->NO:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 146
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->jXJ:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 147
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xc

    .line 148
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v5, 0x41900000    # 18.0f

    .line 149
    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/high16 v5, 0x42740000    # 61.0f

    .line 150
    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 151
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;->jXJ:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    invoke-virtual {v3, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    new-instance v3, Lcom/bytedance/sdk/openadsdk/common/WcQ;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$10;

    invoke-direct {v4, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$10;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)V

    invoke-direct {v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/common/WcQ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/common/WcQ$oJ;)V

    .line 153
    sget v4, Lcom/bytedance/sdk/openadsdk/utils/eZI;->jB:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 154
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, -0x1

    invoke-direct {v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x51

    .line 155
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 156
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v3, Lcom/bytedance/sdk/openadsdk/common/WcQ;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$11;

    invoke-direct {v4, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity$11;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;)V

    invoke-direct {v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/common/WcQ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/common/WcQ$oJ;)V

    .line 158
    sget v4, Lcom/bytedance/sdk/openadsdk/utils/eZI;->yz:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 159
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v5, 0x42300000    # 44.0f

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, -0x1

    invoke-direct {v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x50

    .line 160
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 161
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method
