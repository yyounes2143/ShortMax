.class public Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;
.super Lcom/bytedance/sdk/openadsdk/activity/TTBaseLandingPageActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$oJ;
    }
.end annotation


# instance fields
.field private Pfn:Ljava/lang/String;

.field private ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private ba:I

.field private cFZ:Ljava/lang/String;

.field private dLZ:Lcom/bytedance/sdk/component/jFA/ba;

.field private ex:Ljava/lang/String;

.field private jFA:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

.field private kkU:Lcom/bytedance/sdk/openadsdk/common/ex;

.field oJ:Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$oJ;

.field private tB:Lcom/bytedance/sdk/openadsdk/core/UN;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseLandingPageActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;)Lcom/bytedance/sdk/openadsdk/ex/BTZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->jFA:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p0
.end method

.method private oJ(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/bytedance/sdk/component/jFA/ba;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/component/jFA/ba;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->dLZ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->dLZ:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/ba;->ZYk(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    move-result-object v0

    .line 6
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v2, 0x800035

    .line 7
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v2, 0x41900000    # 18.0f

    .line 8
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 9
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 10
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oq()Lcom/bytedance/sdk/openadsdk/core/model/RZ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->cFZ()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    .line 12
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    invoke-direct {v3, p1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-static {p1, v5}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p1, v5}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v5, 0x800033

    .line 14
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 15
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 16
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v2

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/high16 v2, 0x40a00000    # 5.0f

    .line 17
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v2

    .line 18
    invoke-virtual {v3, v2, v2, v2, v2}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;->setPadding(IIII)V

    .line 19
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/ex;->oJ()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 21
    const-string v2, "tt_white_lefterbackicon_titlebar"

    invoke-static {p1, v2}, Lcom/bytedance/sdk/component/utils/cY;->tB(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    invoke-virtual {p2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 23
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->dLZ:Lcom/bytedance/sdk/component/jFA/ba;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->cFZ:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/oq;->oJ(Lcom/bytedance/sdk/component/jFA/ba;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->dLZ:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    .line 25
    new-instance p2, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    new-instance p2, Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 v2, 0x1

    invoke-direct {p2, v0, p1, v2}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/webkit/WebView;Z)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->jFA:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 27
    const-string v0, "landingpage_split_ceiling"

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->oJ(Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->jFA:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ba$oJ;

    if-eqz v3, :cond_1

    .line 29
    new-instance v4, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$2;

    invoke-direct {v4, p0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;ILandroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ba$oJ;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->dLZ:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-static {p2, v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/component/jFA/ba;Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/common/ex;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->kkU:Lcom/bytedance/sdk/openadsdk/common/ex;

    if-eqz p2, :cond_2

    .line 31
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/common/ex;->oJ(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->kkU:Lcom/bytedance/sdk/openadsdk/common/ex;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/common/ex;->oJ()V

    .line 33
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->dLZ:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-static {p2, v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/component/jFA/ba;Z)V

    .line 34
    new-instance p2, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$3;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$oJ;

    .line 35
    new-instance p2, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$4;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->tB:Lcom/bytedance/sdk/openadsdk/core/UN;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->ex:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->kkU:Lcom/bytedance/sdk/openadsdk/common/ex;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->jFA:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$oJ;

    const/4 v7, 0x1

    move-object v0, p2

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/UN;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/common/ex;Lcom/bytedance/sdk/openadsdk/ex/BTZ;ZZLcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$oJ;)V

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 37
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$5;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->tB:Lcom/bytedance/sdk/openadsdk/core/UN;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->jFA:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->kkU:Lcom/bytedance/sdk/openadsdk/common/ex;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/ex/BTZ;Lcom/bytedance/sdk/openadsdk/common/ex;)V

    .line 38
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->dLZ:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v1, :cond_3

    .line 39
    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/component/jFA/ba;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 40
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->dLZ:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 41
    new-instance p2, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$6;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$6;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 42
    new-instance p2, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$7;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$7;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_4
    return-void
.end method

.method private tB()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/UN;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->tB:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->dLZ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Lcom/bytedance/sdk/component/jFA/ba;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->ex:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->Pfn:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ex(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->ba:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(I)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

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
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ZiK()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->Pfn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->dLZ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/component/jFA/ba;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "landingpage_split_ceiling"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 67
    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->Pfn()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "source"

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->ba:I

    .line 26
    .line 27
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(Landroid/content/Intent;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(I)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->so()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->cFZ:Ljava/lang/String;

    .line 52
    .line 53
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->ex:Ljava/lang/String;

    .line 60
    .line 61
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->Pfn:Ljava/lang/String;

    .line 68
    .line 69
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BHY()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    const/4 v0, 0x7

    .line 80
    if-ne p1, v0, :cond_2

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    const/4 v0, 0x5

    .line 84
    :goto_0
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->ba:I

    .line 85
    .line 86
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    .line 87
    .line 88
    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->oJ(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->tB()V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->jFA:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

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
