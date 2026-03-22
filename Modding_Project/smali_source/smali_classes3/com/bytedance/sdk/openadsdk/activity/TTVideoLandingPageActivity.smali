.class public abstract Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;
.super Lcom/bytedance/sdk/openadsdk/activity/TTBaseLandingPageActivity;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/kkU/ex;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$oJ;
    }
.end annotation


# instance fields
.field protected BTZ:I

.field protected HL:Landroid/widget/Button;

.field protected HyG:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected IUZ:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

.field protected Id:Landroid/widget/TextView;

.field protected Jc:Z

.field protected Jm:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ba$oJ;

.field private LS:I

.field protected Ln:Z

.field protected LpP:Ljava/lang/String;

.field private final NO:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$ZYk;

.field protected Pfn:Landroid/content/Context;

.field protected PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

.field protected QSm:Ljava/lang/String;

.field Qu:I

.field protected RZ:I

.field protected Rl:Ljava/lang/String;

.field protected Ry:I

.field protected UN:Z

.field protected WcQ:J

.field protected XAo:I

.field protected Xe:Landroid/widget/TextView;

.field private final Yg:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected ZYk:Landroid/widget/ImageView;

.field protected awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field protected ba:Ljava/lang/String;

.field private bgF:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

.field protected cFZ:Ljava/lang/String;

.field protected cY:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

.field protected cdg:Lorg/json/JSONArray;

.field protected dLZ:Landroid/widget/FrameLayout;

.field protected eZI:I

.field protected ex:Landroid/widget/TextView;

.field private final jB:Lcom/bytedance/sdk/component/utils/HL$oJ;

.field protected jFA:Lcom/bytedance/sdk/openadsdk/core/UN;

.field protected jr:Landroid/widget/TextView;

.field protected kkU:I

.field private final lY:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mu:Ljava/lang/String;

.field private final mwH:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected nQI:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

.field protected nke:Z

.field protected oJ:Lcom/bytedance/sdk/component/jFA/ba;

.field private oTd:I

.field protected ofl:Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;

.field protected oq:Landroid/widget/RelativeLayout;

.field protected si:I

.field protected tB:Landroid/widget/ImageView;

.field protected tb:Lcom/bytedance/sdk/openadsdk/common/WcQ;

.field protected wd:Lcom/bytedance/sdk/openadsdk/ex/BTZ;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseLandingPageActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->BTZ:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->eZI:I

    .line 9
    .line 10
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->si:I

    .line 11
    .line 12
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Ry:I

    .line 13
    .line 14
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->RZ:I

    .line 15
    .line 16
    const-string v2, "\u30c0\u30a6\u30f3\u30ed\u30fc\u30c9"

    .line 17
    .line 18
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->QSm:Ljava/lang/String;

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Ln:Z

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->nke:Z

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Jc:Z

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->UN:Z

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->mu:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 35
    .line 36
    .line 37
    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->HyG:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->cdg:Lorg/json/JSONArray;

    .line 40
    .line 41
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    .line 43
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Yg:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    .line 48
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    .line 50
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->lY:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    .line 55
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    .line 57
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->mwH:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    .line 62
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Qu:I

    .line 63
    .line 64
    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->nQI:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 65
    .line 66
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$11;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$11;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->NO:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$ZYk;

    .line 72
    .line 73
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$2;

    .line 74
    .line 75
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->jB:Lcom/bytedance/sdk/component/utils/HL$oJ;

    .line 79
    .line 80
    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->bgF:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    return-object p0
.end method

.method private QSm()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->mu:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->mu:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "__luban_sdk"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method private RZ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->PiB()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 24
    return v0
.end method

.method private Ry()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->RZ()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->WcQ()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private WcQ()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sQ()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->tb:Lcom/bytedance/sdk/openadsdk/common/WcQ;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/WcQ;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->YQ:I

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/Button;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->HL:Landroid/widget/Button;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->ex()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->HL:Landroid/widget/Button;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->nQI:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->HL:Landroid/widget/Button;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->nQI:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->mwH:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private awB()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/UN;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->jFA:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Lcom/bytedance/sdk/component/jFA/ba;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->ba:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->cFZ:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ex(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->kkU:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(I)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oG()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(I)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/component/jFA/ba;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "landingpage_split_screen"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ZiK()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->Pfn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->QSm()Z

    move-result p0

    return p0
.end method

.method private eZI()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Ln:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-interface {v0, v2, v2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/oJ;->Pfn(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Ln:Z

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->QSm()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->HyG:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oq()V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ(I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Yg:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oTd:I

    return p0
.end method

.method private oJ(I)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->tB:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->QSm()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;I)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;)V
    .locals 6

    .line 6
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->nke:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->PiB()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->nke:Z

    .line 7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "sp_multi_native_video_data"

    const-string v2, "key_video_is_update_flag"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/ex/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 8
    const-string v2, "key_video_isfromvideodetailpage"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/ex/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 9
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->nke:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "key_native_video_complete"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/ex/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 10
    invoke-interface {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->ba()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "key_video_current_play_position"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/ex/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 11
    invoke-interface {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->jFA()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->cFZ()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "key_video_total_play_duration"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/ex/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 12
    invoke-interface {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->jFA()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "key_video_duration"

    invoke-static {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/ex/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method private oJ(Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->HL:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 5
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$7;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private oq()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "isBackIntercept"

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->jFA:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 13
    .line 14
    const-string v2, "temai_back_event"

    .line 15
    .line 16
    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    return-void
.end method

.method private si()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->RZ()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->WcQ()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->lY:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method protected BTZ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->jB:Lcom/bytedance/sdk/component/utils/HL$oJ;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Pfn:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/HL;->oJ(Lcom/bytedance/sdk/component/utils/HL$oJ;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected Pfn()V
    .locals 2

    .line 2
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->jB:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/common/WcQ;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->tb:Lcom/bytedance/sdk/openadsdk/common/WcQ;

    .line 3
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->nQI:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/jFA/ba;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    const v0, 0x1f000018

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->ZYk:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$8;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$8;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    if-eqz v0, :cond_1

    .line 7
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->UN:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->setIsAutoPlay(Z)V

    .line 8
    :cond_1
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->wd:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->tB:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 9
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$9;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$9;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_2
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->SWT:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->ex:Landroid/widget/TextView;

    .line 11
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->ofl:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->dLZ:Landroid/widget/FrameLayout;

    .line 12
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->HyG:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oq:Landroid/widget/RelativeLayout;

    .line 13
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Rl:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Id:Landroid/widget/TextView;

    .line 14
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Jm:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->jr:Landroid/widget/TextView;

    .line 15
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Qu:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Xe:Landroid/widget/TextView;

    .line 16
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->cdg:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->cY:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    .line 17
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->kkU()V

    return-void
.end method

.method protected PiB()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->jB:Lcom/bytedance/sdk/component/utils/HL$oJ;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/HL;->oJ(Lcom/bytedance/sdk/component/utils/HL$oJ;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    return-void
.end method

.method protected ZYk()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->eZI()V

    return-void
.end method

.method protected ba()V
    .locals 7

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->cFZ()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 3
    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Pfn:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;ZLcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 4
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(Z)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_2

    .line 6
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->nke:Z

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->dLZ:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->dLZ:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->dLZ:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk(Z)V

    goto/16 :goto_1

    .line 11
    :cond_1
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->UN:Z

    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->WcQ:J

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->ofl:Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->ofl:Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;

    iget-wide v2, v2, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->cFZ:J

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB(J)V

    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->ofl:Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;

    iget-wide v2, v2, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->Pfn:J

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ex(J)V

    .line 16
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    move-result v1

    .line 17
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->ZYk(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "landingPageInit"

    invoke-virtual {v2, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(ZLjava/lang/String;)V

    .line 18
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->WcQ:J

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Jc:Z

    iget-boolean v6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->nke:Z

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(JZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->dLZ:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->dLZ:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 21
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->dLZ:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 22
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(Z)V

    .line 24
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->NO:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$ZYk;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$ZYk;)V

    .line 25
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yB()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->oJ()Lcom/bytedance/sdk/component/Pfn/awB;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/bytedance/sdk/component/Pfn/awB;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 27
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yB()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->ZYk()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 28
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yB()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->tB()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/Pfn/kkU;->ZYk(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v2

    .line 29
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->Pfn(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/Pfn/kkU;->Pfn(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v2

    .line 30
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/Pfn/kkU;->ex(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v2

    const/4 v3, 0x2

    .line 31
    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/Pfn/kkU;->tB(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    new-instance v6, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$10;

    invoke-direct {v6, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$10;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)V

    invoke-direct {v3, v4, v1, v6}, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/component/Pfn/eZI;)V

    const/4 v1, 0x4

    invoke-interface {v2, v3, v1}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Lcom/bytedance/sdk/component/Pfn/eZI;I)Lcom/bytedance/sdk/component/Pfn/jFA;

    .line 32
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    const v2, 0x1f00001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 33
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 34
    :goto_2
    const-string v2, "TTVideoLandingPage"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    if-nez v2, :cond_6

    .line 36
    const-string v2, "mNativeVideoTsView is null"

    const-string v3, "FUNCTION EXCEPTION"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    :cond_6
    :goto_3
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->XAo:I

    if-nez v1, :cond_7

    .line 38
    :try_start_1
    const-string v1, "tt_no_network"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_7
    return-void
.end method

.method protected abstract cFZ()Z
.end method

.method public dLZ()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->LpP:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/cFZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->IUZ:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    .line 13
    .line 14
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->LpP:Ljava/lang/String;

    .line 19
    .line 20
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->kkU:I

    .line 21
    .line 22
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->nQI:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->nQI:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->tB(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Xe:Landroid/widget/TextView;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->nQI:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Xe:Landroid/widget/TextView;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->nQI:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->nQI:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->IUZ:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method protected ex()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ypD()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ypD()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->QSm:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->QSm:Ljava/lang/String;

    return-object v0
.end method

.method protected jFA()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->kkU()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method protected kkU()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sQ()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oq:Landroid/widget/RelativeLayout;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->UUI()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->UUI()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Amz()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Amz()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qzd()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qzd()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const-string v0, ""

    .line 78
    .line 79
    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    if-eqz v3, :cond_4

    .line 86
    .line 87
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    if-eqz v3, :cond_4

    .line 98
    .line 99
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->cY:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    .line 100
    .line 101
    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 102
    .line 103
    .line 104
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Id:Landroid/widget/TextView;

    .line 105
    .line 106
    invoke-static {v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->cY:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    .line 120
    .line 121
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 122
    .line 123
    invoke-virtual {v1, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/Ry;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-nez v3, :cond_5

    .line 132
    .line 133
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->cY:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    .line 134
    .line 135
    invoke-static {v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Id:Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Id:Landroid/widget/TextView;

    .line 144
    .line 145
    const/4 v3, 0x1

    .line 146
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 154
    .line 155
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ypD()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-nez v1, :cond_6

    .line 164
    .line 165
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Xe:Landroid/widget/TextView;

    .line 166
    .line 167
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 168
    .line 169
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ypD()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_7

    .line 181
    .line 182
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->jr:Landroid/widget/TextView;

    .line 183
    .line 184
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->jr:Landroid/widget/TextView;

    .line 188
    .line 189
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Xe:Landroid/widget/TextView;

    .line 193
    .line 194
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 195
    .line 196
    .line 197
    :cond_8
    :goto_2
    return-void
.end method

.method public oJ(ZLorg/json/JSONArray;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 15
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 16
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->cdg:Lorg/json/JSONArray;

    :cond_0
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
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->eZI()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->WcQ()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->Pfn()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v8

    .line 22
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/high16 v2, 0x1000000

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :catchall_0
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/si;->ZYk(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    .line 33
    .line 34
    :catchall_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/Ry;->tB(Landroid/content/Context;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iput v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->XAo:I

    .line 43
    .line 44
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->tB()Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v7, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 49
    .line 50
    .line 51
    iput-object v7, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Pfn:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "video_is_auto_play"

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    iput-boolean v2, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->UN:Z

    .line 65
    .line 66
    const-wide/16 v4, 0x0

    .line 67
    .line 68
    const-string v2, "video_play_position"

    .line 69
    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v10

    .line 76
    cmp-long v6, v10, v4

    .line 77
    .line 78
    if-lez v6, :cond_1

    .line 79
    .line 80
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 81
    .line 82
    .line 83
    move-result-wide v10

    .line 84
    iput-wide v10, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->WcQ:J

    .line 85
    .line 86
    :cond_1
    const-string v6, "multi_process_data"

    .line 87
    .line 88
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    const/4 v11, -0x1

    .line 97
    if-eqz v10, :cond_4

    .line 98
    .line 99
    const-string v10, "multi_process_materialmeta"

    .line 100
    .line 101
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    if-eqz v10, :cond_2

    .line 106
    .line 107
    :try_start_3
    new-instance v12, Lorg/json/JSONObject;

    .line 108
    .line 109
    invoke-direct {v12, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v12}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    iput-object v10, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 117
    .line 118
    :catch_0
    :cond_2
    iget-object v10, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 119
    .line 120
    if-eqz v10, :cond_3

    .line 121
    .line 122
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Dc()I

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    iput v10, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->BTZ:I

    .line 127
    .line 128
    :cond_3
    const-string v10, "adid"

    .line 129
    .line 130
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v10

    .line 134
    iput-object v10, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->ba:Ljava/lang/String;

    .line 135
    .line 136
    const-string v10, "log_extra"

    .line 137
    .line 138
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    iput-object v10, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->cFZ:Ljava/lang/String;

    .line 143
    .line 144
    const-string v10, "web_title"

    .line 145
    .line 146
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    const-string v12, "gecko_id"

    .line 151
    .line 152
    invoke-virtual {v1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v12

    .line 156
    iput-object v12, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Rl:Ljava/lang/String;

    .line 157
    .line 158
    const-string v12, "event_tag"

    .line 159
    .line 160
    invoke-virtual {v1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    iput-object v12, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->LpP:Ljava/lang/String;

    .line 165
    .line 166
    const-string v12, "source"

    .line 167
    .line 168
    invoke-virtual {v1, v12, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 169
    .line 170
    .line 171
    move-result v12

    .line 172
    iput v12, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->kkU:I

    .line 173
    .line 174
    const-string v12, "url"

    .line 175
    .line 176
    invoke-virtual {v1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    iput-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->mu:Ljava/lang/String;

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(Landroid/content/Intent;)I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    invoke-virtual {v10, v1}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(I)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    iput-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 196
    .line 197
    if-eqz v1, :cond_5

    .line 198
    .line 199
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Dc()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    iput v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->BTZ:I

    .line 204
    .line 205
    iget-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 206
    .line 207
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    iput-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->ba:Ljava/lang/String;

    .line 212
    .line 213
    iget-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 214
    .line 215
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    iput-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->cFZ:Ljava/lang/String;

    .line 220
    .line 221
    iget-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 222
    .line 223
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->UUI()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v10

    .line 227
    iget-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 228
    .line 229
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PQw()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    iput-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Rl:Ljava/lang/String;

    .line 234
    .line 235
    iget-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 236
    .line 237
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->so()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    iput-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->mu:Ljava/lang/String;

    .line 242
    .line 243
    iget-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 244
    .line 245
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kkU()I

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    iput v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->kkU:I

    .line 250
    .line 251
    iget-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 252
    .line 253
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jFA()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    iput-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->LpP:Ljava/lang/String;

    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_5
    const/4 v10, 0x0

    .line 261
    :goto_0
    iget-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 262
    .line 263
    if-nez v1, :cond_6

    .line 264
    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :cond_6
    iget-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Rl:Ljava/lang/String;

    .line 270
    .line 271
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    const/4 v12, 0x0

    .line 276
    if-nez v1, :cond_8

    .line 277
    .line 278
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;->ZYk()Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    iput-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->bgF:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    .line 287
    .line 288
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    iget-object v13, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->bgF:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    .line 293
    .line 294
    iget-object v14, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Rl:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v1, v13, v14}, Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;->oJ(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    iput v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oTd:I

    .line 301
    .line 302
    if-lez v1, :cond_7

    .line 303
    .line 304
    const/4 v1, 0x2

    .line 305
    goto :goto_1

    .line 306
    :cond_7
    move v1, v12

    .line 307
    :goto_1
    iput v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->LS:I

    .line 308
    .line 309
    :cond_8
    if-eqz v6, :cond_9

    .line 310
    .line 311
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    .line 312
    .line 313
    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    iput-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->ofl:Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 321
    .line 322
    :catch_1
    iget-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->ofl:Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;

    .line 323
    .line 324
    if-eqz v1, :cond_9

    .line 325
    .line 326
    iget-wide v13, v1, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->cFZ:J

    .line 327
    .line 328
    iput-wide v13, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->WcQ:J

    .line 329
    .line 330
    :cond_9
    if-eqz v0, :cond_a

    .line 331
    .line 332
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    const-string v6, "meta_index"

    .line 337
    .line 338
    invoke-virtual {v0, v6, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 339
    .line 340
    .line 341
    move-result v6

    .line 342
    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(I)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    iput-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 347
    .line 348
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 349
    .line 350
    .line 351
    move-result-wide v0

    .line 352
    cmp-long v2, v0, v4

    .line 353
    .line 354
    if-lez v2, :cond_a

    .line 355
    .line 356
    iput-wide v0, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->WcQ:J

    .line 357
    .line 358
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Pfn()V

    .line 359
    .line 360
    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->dLZ()V

    .line 362
    .line 363
    .line 364
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB()V

    .line 365
    .line 366
    .line 367
    const/4 v0, 0x4

    .line 368
    invoke-direct {v7, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ(I)V

    .line 369
    .line 370
    .line 371
    iget-object v0, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 372
    .line 373
    const-string v11, "landingpage_split_screen"

    .line 374
    .line 375
    if-eqz v0, :cond_b

    .line 376
    .line 377
    iget-object v0, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Pfn:Landroid/content/Context;

    .line 378
    .line 379
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->oJ(Z)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-virtual {v0, v12}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->ZYk(Z)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    iget-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 392
    .line 393
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->oJ(Landroid/webkit/WebView;)V

    .line 398
    .line 399
    .line 400
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 401
    .line 402
    iget-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 403
    .line 404
    iget-object v2, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 405
    .line 406
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    new-instance v4, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$1;

    .line 411
    .line 412
    invoke-direct {v4, v7}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)V

    .line 413
    .line 414
    .line 415
    iget v5, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->LS:I

    .line 416
    .line 417
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/ex/dLZ;I)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->ZYk(Z)Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    iput-object v0, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->wd:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 425
    .line 426
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ba$oJ;

    .line 427
    .line 428
    iput-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Jm:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ba$oJ;

    .line 429
    .line 430
    invoke-virtual {v0, v11}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->oJ(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    :cond_b
    iget-object v0, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 434
    .line 435
    if-eqz v0, :cond_c

    .line 436
    .line 437
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/jFA/ba;->setLandingPage(Z)V

    .line 438
    .line 439
    .line 440
    iget-object v0, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 441
    .line 442
    invoke-virtual {v0, v11}, Lcom/bytedance/sdk/component/jFA/ba;->setTag(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    iget-object v0, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 446
    .line 447
    iget-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 448
    .line 449
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->hW()Lcom/bytedance/sdk/component/jFA/ZYk/oJ;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setMaterialMeta(Lcom/bytedance/sdk/component/jFA/ZYk/oJ;)V

    .line 454
    .line 455
    .line 456
    iget-object v13, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 457
    .line 458
    new-instance v14, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$4;

    .line 459
    .line 460
    iget-object v2, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Pfn:Landroid/content/Context;

    .line 461
    .line 462
    iget-object v3, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->jFA:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 463
    .line 464
    iget-object v4, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->ba:Ljava/lang/String;

    .line 465
    .line 466
    iget-object v5, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->wd:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 467
    .line 468
    const/4 v6, 0x1

    .line 469
    move-object v0, v14

    .line 470
    move-object/from16 v1, p0

    .line 471
    .line 472
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/UN;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ex/BTZ;Z)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v13, v14}, Lcom/bytedance/sdk/component/jFA/ba;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 476
    .line 477
    .line 478
    iget-object v0, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 479
    .line 480
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    const/16 v2, 0x1d50

    .line 485
    .line 486
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/RZ;->oJ(Landroid/webkit/WebView;I)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setUserAgentString(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    :cond_c
    iget-object v0, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 494
    .line 495
    if-eqz v0, :cond_d

    .line 496
    .line 497
    invoke-virtual {v0, v12}, Lcom/bytedance/sdk/component/jFA/ba;->setMixedContentMode(I)V

    .line 498
    .line 499
    .line 500
    :cond_d
    iget-object v0, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 501
    .line 502
    iget v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->LS:I

    .line 503
    .line 504
    invoke-static {v0, v11, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    .line 505
    .line 506
    .line 507
    iget-object v0, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 508
    .line 509
    iget-object v1, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->mu:Ljava/lang/String;

    .line 510
    .line 511
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/oq;->oJ(Lcom/bytedance/sdk/component/jFA/ba;Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    iget-object v0, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 515
    .line 516
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;

    .line 517
    .line 518
    iget-object v2, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->jFA:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 519
    .line 520
    iget-object v3, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->wd:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 521
    .line 522
    invoke-direct {v1, v7, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/ex/BTZ;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 526
    .line 527
    .line 528
    iget-object v0, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 529
    .line 530
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$6;

    .line 531
    .line 532
    invoke-direct {v1, v7}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$6;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 536
    .line 537
    .line 538
    iget-object v0, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->ex:Landroid/widget/TextView;

    .line 539
    .line 540
    if-eqz v0, :cond_f

    .line 541
    .line 542
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 543
    .line 544
    .line 545
    move-result v1

    .line 546
    if-eqz v1, :cond_e

    .line 547
    .line 548
    const-string v1, "tt_web_title_default"

    .line 549
    .line 550
    invoke-static {v7, v1}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v10

    .line 554
    :cond_e
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    .line 556
    .line 557
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->BTZ()V

    .line 558
    .line 559
    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->ba()V

    .line 561
    .line 562
    .line 563
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->WcQ()V

    .line 564
    .line 565
    .line 566
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 567
    .line 568
    .line 569
    move-result-wide v0

    .line 570
    sub-long v10, v0, v8

    .line 571
    .line 572
    iget-object v12, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 573
    .line 574
    iget-object v14, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->bgF:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    .line 575
    .line 576
    iget-object v15, v7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Rl:Ljava/lang/String;

    .line 577
    .line 578
    const-string v13, "landingpage_split_screen"

    .line 579
    .line 580
    invoke-static/range {v10 .. v15}, Lcom/bytedance/sdk/openadsdk/ex/tB$oJ;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    return-void

    .line 584
    :catchall_2
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 585
    .line 586
    .line 587
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseLandingPageActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB()V

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/view/ViewGroup;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kkU(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :catchall_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ofl;->oJ(Landroid/webkit/WebView;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->jFA:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->BTZ()V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Pfn()V

    .line 70
    .line 71
    .line 72
    :cond_3
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->wd:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    const/4 v1, 0x1

    .line 81
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->ex(Z)V

    .line 82
    .line 83
    .line 84
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Rl:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_5

    .line 91
    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->lY:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Yg:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 105
    .line 106
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/tB$oJ;->oJ(IILcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->bgF:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;->oJ(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseLandingPageActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Ry()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;)V

    .line 24
    .line 25
    .line 26
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
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Jc:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->si()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Jc:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->jFA:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->dLZ()V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->wd:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->cFZ()V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

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
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

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
    :cond_1
    const/4 v0, -0x1

    .line 24
    :goto_0
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Qu:I

    .line 25
    .line 26
    const-string v1, "meta_index"

    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->WcQ:J

    .line 32
    .line 33
    const-string v2, "video_play_position"

    .line 34
    .line 35
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 36
    .line 37
    .line 38
    const-string v0, "is_complete"

    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->nke:Z

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->WcQ:J

    .line 46
    .line 47
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 48
    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba()J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    :cond_2
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 68
    .line 69
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Qu:I

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
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Qu:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->tB(I)V

    .line 15
    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->Qu:I

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->awB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 21
    .line 22
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ex;->oJ(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->wd:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

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

.method protected so()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    :goto_0
    return-wide v0
.end method

.method protected abstract tB()Landroid/view/View;
.end method
