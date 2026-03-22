.class public Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/BTZ/so;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry$oJ;
    }
.end annotation


# instance fields
.field private Pfn:Z

.field private final ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private ba:Lcom/bytedance/sdk/openadsdk/core/ZYk/cFZ;

.field private final cFZ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ex:Landroid/widget/ImageView;

.field private final jFA:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

.field private kkU:I

.field private final oJ:Landroid/app/Activity;

.field private volatile so:Z

.field private tB:Lcom/bytedance/sdk/component/jFA/ba;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->cFZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 13
    .line 14
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->oJ:Landroid/app/Activity;

    .line 21
    .line 22
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->tB()V

    return-void
.end method

.method private ex()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->Pfn()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->oJ(Lcom/bytedance/sdk/component/jFA/ba;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setDisplayZoomControls(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    .line 18
    .line 19
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry$3;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    .line 28
    .line 29
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry$4;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p0
.end method

.method private oJ(II)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ex:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->oJ:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;)I

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->oJ:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->Pfn(Landroid/content/Context;)I

    move-result v1

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    int-to-float p2, v0

    int-to-float v2, v1

    div-float v2, p2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    mul-float/2addr p2, p1

    float-to-double p1, p2

    .line 53
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int v0, p1

    goto :goto_0

    :cond_1
    div-float/2addr p2, p1

    float-to-double p1, p2

    .line 54
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int v1, p1

    .line 55
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ex:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 56
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 57
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p2, 0x11

    .line 58
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 59
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ex:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ex:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ba:Lcom/bytedance/sdk/openadsdk/core/ZYk/cFZ;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ex:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ba:Lcom/bytedance/sdk/openadsdk/core/ZYk/cFZ;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private oJ(ILjava/lang/String;)V
    .locals 2

    .line 30
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->so:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->so:Z

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_1

    .line 32
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ex()Ljava/lang/String;

    move-result-object p2

    const-string v0, "load_vast_endcard_success"

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 33
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry$2;

    const-string v1, "load_vast_endcard_fail"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/component/so/so;)V

    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/component/jFA/ba;)V
    .locals 3

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 36
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setMixedContentMode(I)V

    const/4 v1, 0x1

    .line 37
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setJavaScriptEnabled(Z)V

    .line 38
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 39
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setDomStorageEnabled(Z)V

    .line 40
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setDatabaseEnabled(Z)V

    const/4 v2, -0x1

    .line 41
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/jFA/ba;->setCacheMode(I)V

    .line 42
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setAllowFileAccess(Z)V

    .line 43
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setSupportZoom(Z)V

    .line 44
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setBuiltInZoomControls(Z)V

    .line 45
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 46
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setUseWideViewPort(Z)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->oJ(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;Ljava/lang/String;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->oJ(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private oJ(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Du()Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ba:Lcom/bytedance/sdk/openadsdk/core/ZYk/cFZ;

    if-nez v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Du()Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ba(Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ba:Lcom/bytedance/sdk/openadsdk/core/ZYk/cFZ;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/tB;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private tB()V
    .locals 2

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->oJ(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public ZYk()V
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils$AudioInfoReceiver;->ZYk(Lcom/bytedance/sdk/openadsdk/BTZ/so;)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ofl;->oJ(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method

.method public ZYk(I)V
    .locals 3

    .line 5
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->kkU:I

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Du()Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->BTZ()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->jFA(J)V

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    if-nez p1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Du()Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->BTZ()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->so(J)V

    .line 8
    :cond_1
    :goto_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->kkU:I

    return-void
.end method

.method public oJ()V
    .locals 9

    .line 4
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils$AudioInfoReceiver;->oJ(Lcom/bytedance/sdk/openadsdk/BTZ/so;)V

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->cFZ()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->kkU:I

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Du()Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry$1;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Du()Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    move-result-object v1

    const-string v2, "VAST_END_CARD"

    invoke-direct {v0, p0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ba:Lcom/bytedance/sdk/openadsdk/core/ZYk/cFZ;

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Du()Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->tB()Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->Pfn()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 11
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->Pfn:Z

    .line 12
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/eZI;->so:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ex:Landroid/widget/ImageView;

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->ZYk()I

    move-result v2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->tB()I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->oJ(II)V

    .line 14
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v2

    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->ZYk()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v2

    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->tB()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/bytedance/sdk/component/Pfn/kkU;->ZYk(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v0

    .line 17
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->Pfn(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/Pfn/kkU;->Pfn(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v0

    .line 18
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/Pfn/kkU;->ex(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v0

    .line 19
    invoke-interface {v0, v3}, Lcom/bytedance/sdk/component/Pfn/kkU;->tB(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry$oJ;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ex:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->cFZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v5, v1, p0, v6}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry$oJ;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-direct {v2, v3, v1, v4}, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/component/Pfn/eZI;)V

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Lcom/bytedance/sdk/component/Pfn/eZI;)Lcom/bytedance/sdk/component/Pfn/jFA;

    return-void

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->jFA:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    sget v2, Lcom/bytedance/sdk/openadsdk/utils/eZI;->jFA:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/jFA/ba;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    if-nez v1, :cond_1

    return-void

    .line 21
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ex()V

    .line 22
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->ex()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 23
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->Pfn:Z

    .line 24
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 25
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->a_(Ljava/lang/String;)V

    return-void

    .line 26
    :cond_2
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/Pfn;->oJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v5, v0

    goto :goto_0

    :cond_3
    move-object v5, v1

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    const-string v1, "UTF -8"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 29
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    const-string v7, "UTF-8"

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-string v6, "text/html"

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/sdk/component/jFA/ba;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ba:Lcom/bytedance/sdk/openadsdk/core/ZYk/cFZ;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/tB;)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 62
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->Pfn:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ex:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->cFZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ex:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ba:Lcom/bytedance/sdk/openadsdk/core/ZYk/cFZ;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Du()Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Du()Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->tB()Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 71
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->BTZ()J

    move-result-wide v1

    goto :goto_1

    :cond_3
    const-wide/16 v1, -0x1

    .line 72
    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->ZYk(J)V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method
