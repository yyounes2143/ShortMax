.class public Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ$oJ;
    }
.end annotation


# instance fields
.field private BTZ:Z

.field private final Pfn:Landroid/widget/FrameLayout;

.field private volatile PiB:Z

.field private QSm:Z

.field private RZ:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ$oJ;

.field private Ry:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

.field private volatile WcQ:Z

.field private final ZYk:Landroid/content/Context;

.field private awB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ba:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private cFZ:Lcom/bytedance/sdk/openadsdk/core/UN;

.field private dLZ:Lcom/bytedance/sdk/openadsdk/BTZ/ba;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private eZI:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ex:I

.field private final jFA:Ljava/lang/String;

.field private kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

.field protected oJ:Lcom/bytedance/sdk/component/jFA/ba;

.field private si:Lcom/bytedance/sdk/openadsdk/core/widget/jFA;

.field private so:Ljava/lang/String;

.field private final tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;IZLandroid/widget/FrameLayout;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;IZLandroid/widget/FrameLayout;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;IZLandroid/widget/FrameLayout;Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->BTZ:Z

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->awB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->eZI:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->ZYk:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 8
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->ex:I

    .line 9
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BHY()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->tB(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->so:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Ljava/lang/String;)I

    move-result p1

    .line 11
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->QSm:Z

    if-eqz p6, :cond_0

    .line 12
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ZYk(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->so:Ljava/lang/String;

    .line 13
    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->PiB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->jFA:Ljava/lang/String;

    .line 14
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->Pfn:Landroid/widget/FrameLayout;

    .line 15
    invoke-direct {p0, p5}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ(Landroid/widget/FrameLayout;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ(I)V

    .line 17
    invoke-direct {p0, p4}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB(Z)V

    .line 18
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->cFZ()V

    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;)Lcom/bytedance/sdk/openadsdk/QSm/so;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    return-object p0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;)Lcom/bytedance/sdk/openadsdk/BTZ/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->dLZ:Lcom/bytedance/sdk/openadsdk/BTZ/ba;

    return-object p0
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->BTZ:Z

    return p0
.end method

.method static synthetic cFZ(Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;)Lcom/bytedance/sdk/openadsdk/core/widget/kkU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    return-object p0
.end method

.method private cFZ()V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    new-instance v8, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ$5;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/UN;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ$5;-><init>(Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/UN;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ex/BTZ;Z)V

    invoke-virtual {v0, v8}, Lcom/bytedance/sdk/component/jFA/ba;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ$6;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ$6;-><init>(Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;Lcom/bytedance/sdk/openadsdk/core/UN;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->ZYk:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->oJ(Z)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->ZYk(Z)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->oJ(Landroid/webkit/WebView;)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    const/16 v3, 0x1d50

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/RZ;->oJ(Landroid/webkit/WebView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/jFA/ba;->setUserAgentString(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setMixedContentMode(I)V

    return-void
.end method

.method static synthetic dLZ(Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->jFA:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->so:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic jFA(Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;)Lcom/bytedance/sdk/openadsdk/core/widget/jFA;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->si:Lcom/bytedance/sdk/openadsdk/core/widget/jFA;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic kkU(Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->awB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/UN;

    return-object p0
.end method

.method private oJ(I)V
    .locals 5

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x3

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "click_scence"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/UN;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->ZYk:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/UN;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 23
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ZiK()Ljava/lang/String;

    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/UN;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Lcom/bytedance/sdk/component/jFA/ba;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 25
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 26
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 27
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/UN;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 28
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/UN;->ex(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v3

    .line 29
    invoke-virtual {v3, p1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(I)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object p1

    .line 30
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/UN;->Pfn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 31
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/component/jFA/ba;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->so:Ljava/lang/String;

    .line 32
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object p1

    .line 33
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/Ry;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->so:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/Ry;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 34
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;)Lcom/bytedance/sdk/openadsdk/core/UN;

    return-void
.end method

.method private oJ(Landroid/widget/FrameLayout;)V
    .locals 6

    .line 3
    new-instance v0, Lcom/bytedance/sdk/component/jFA/ba;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->ZYk:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->Pfn()V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/jFA/ba;->setLayerType(ILandroid/graphics/Paint;)V

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setBackgroundColor(I)V

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->so:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/jFA/ba;->setTag(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->hW()Lcom/bytedance/sdk/component/jFA/ZYk/oJ;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/jFA/ba;->setMaterialMeta(Lcom/bytedance/sdk/component/jFA/ZYk/oJ;)V

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setLandingPage(Z)V

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/jFA;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->ZYk:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/jFA;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->si:Lcom/bytedance/sdk/openadsdk/core/widget/jFA;

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->so:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->Ry:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->QSm:Z

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/widget/jFA;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;Z)V

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->si:Lcom/bytedance/sdk/openadsdk/core/widget/jFA;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->bbM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->ZYk:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/kkU;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    .line 18
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/cFZ;->ZYk()V

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->BTZ:Z

    return p1
.end method

.method static synthetic so(Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->PiB:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p0
.end method

.method private tB(Z)V
    .locals 5

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "cid"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "log_extra"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :catchall_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/jFA;->si()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/QSm/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/QSm/cFZ$oJ;)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ$2;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ$2;-><init>(Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;)V

    new-instance v4, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ$3;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ$3;-><init>(Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;)V

    invoke-static {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(Landroid/content/Context;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/QSm/tB;Lcom/bytedance/sdk/openadsdk/QSm/oJ;)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->jFA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/QSm/so;->cFZ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object v1

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/common/ZYk;->oJ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/QSm/so;->Pfn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object v1

    .line 10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/ZYk;->Pfn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/QSm/so;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object v1

    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/ZYk;->oJ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object v1

    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/ZYk;->ex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/QSm/so;->ex(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/QSm/so;->tB(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 14
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->dLZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object v0

    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->ex(Z)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(Z)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/QSm/so;->tB(Z)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 18
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->RZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(J)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 19
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->RZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->ZYk(J)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    const-string v0, "sdkEdition"

    .line 20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/ZYk;->tB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 21
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ba(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/QSm/so;->Pfn(Z)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->so:Ljava/lang/String;

    .line 22
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/QSm/so;->ba(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 23
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->ZYk:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/QSm/Pfn;->ZYk(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(F)Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 24
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->dLZ()Ljava/util/Set;

    move-result-object p1

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 26
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 27
    const-string v2, "subscribe_app_ad"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "adInfo"

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "webview_time_track"

    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "download_app_ad"

    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 31
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk()Lcom/bytedance/sdk/component/oJ/si;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 32
    new-instance v3, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ$4;

    invoke-direct {v3, p0, v0}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ$4;-><init>(Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v2, v1, v3}, Lcom/bytedance/sdk/component/oJ/si;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/component/oJ/Pfn;)Lcom/bytedance/sdk/component/oJ/si;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public Pfn()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->PiB:Z

    return v0
.end method

.method public ZYk()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->awB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "PlayableManager"

    const-string v1, "onResume() called"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->tB(Z)Lcom/bytedance/sdk/openadsdk/QSm/so;

    :cond_0
    return-void
.end method

.method public ZYk(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->Pfn(Z)Lcom/bytedance/sdk/openadsdk/QSm/so;

    :cond_0
    return-void
.end method

.method public ba()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/UN;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->ba()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ex()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/QSm/so;->XAo()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->eZI()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/UN;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->BTZ()V

    :cond_2
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    return-void
.end method

.method public oJ()V
    .locals 7

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->awB:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->Pfn:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "showPlayable() called with: hasLoading = [false], loadingViewIsHide = ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->WcQ:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PlayableManager"

    invoke-static {v3, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->WcQ:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    if-eqz v0, :cond_3

    .line 47
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->ex:I

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/kkU;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/QSm/so;->LpP()V

    :cond_2
    move v0, v1

    goto :goto_0

    .line 50
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->tB(Z)Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/UN;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->WcQ()Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->WcQ()Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->cFZ()V

    :cond_4
    move v0, v2

    .line 53
    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-eqz v3, :cond_5

    .line 54
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 55
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 56
    const-string v5, "webview_state"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/QSm/so;->HyG()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    const-string v5, "has_loading"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 58
    const-string v0, "is_new_playable"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    const-string v0, "pag_json_data"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v0, "playable_event"

    const-string v1, "start_show_plb"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :catchall_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->so:Ljava/lang/String;

    const-string v4, "playable_track"

    invoke-static {v0, v1, v4, v3}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->ba(Z)V

    .line 63
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/jFA/ba;->setVisibility(I)V

    return-void
.end method

.method public oJ(II)V
    .locals 3

    .line 64
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->WcQ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->WcQ:Z

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onHidePlayableLoading() called with: hideReason = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], errorDetail = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlayableManager"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 67
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->PiB:Z

    .line 68
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 69
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->PiB:Z

    .line 70
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(I)V

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 71
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->PiB:Z

    .line 72
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(I)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    .line 73
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(I)V

    .line 74
    :cond_4
    :goto_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->PiB:Z

    if-eqz v1, :cond_5

    .line 75
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->RZ:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ$oJ;

    if-eqz v1, :cond_5

    .line 76
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ$oJ;->oJ()V

    .line 77
    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->awB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 78
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-eqz v1, :cond_6

    .line 79
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/QSm/so;->tB(Z)Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 80
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/UN;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->WcQ()Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->WcQ()Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->cFZ()V

    .line 82
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    if-eqz v0, :cond_8

    .line 83
    new-instance v1, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ$7;-><init>(Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ$oJ;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->RZ:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ$oJ;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/UN;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;)V
    .locals 1

    .line 86
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->Ry:Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/cFZ;->getDownloadButton()Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/cFZ;->getDownloadButton()Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    move-result-object v0

    .line 89
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->si:Lcom/bytedance/sdk/openadsdk/core/widget/jFA;

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/jFA;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;)V

    :cond_1
    return-void
.end method

.method public oJ(Z)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(Z)Lcom/bytedance/sdk/openadsdk/QSm/so;

    :cond_0
    return-void
.end method

.method public oJ(ZLcom/bytedance/sdk/openadsdk/BTZ/ba;)V
    .locals 1

    .line 35
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->dLZ:Lcom/bytedance/sdk/openadsdk/BTZ/ba;

    .line 36
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->ZYk(Z)Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 37
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 38
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->jFA:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/jFA/ba;->a_(Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-eqz p1, :cond_0

    .line 40
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/QSm/so;->ba(Z)V

    .line 41
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->jFA:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/QSm/so;->so(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public tB()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->awB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "PlayableManager"

    const-string v1, "onPause() called"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/so;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->tB(Z)Lcom/bytedance/sdk/openadsdk/QSm/so;

    :cond_0
    return-void
.end method
