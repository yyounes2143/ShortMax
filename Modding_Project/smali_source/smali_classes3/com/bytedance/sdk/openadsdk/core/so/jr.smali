.class public Lcom/bytedance/sdk/openadsdk/core/so/jr;
.super Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;
.source "SourceFile"


# instance fields
.field private BTZ:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

.field private final Id:Ljava/lang/Runnable;

.field private PiB:Ljava/lang/String;

.field private QSm:Lcom/bytedance/sdk/openadsdk/core/so/kkU;

.field private volatile RZ:I

.field private Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;

.field private WcQ:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

.field private final awB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;",
            ">;"
        }
    .end annotation
.end field

.field cFZ:Lcom/bytedance/sdk/openadsdk/utils/oJ;

.field private dLZ:Lorg/json/JSONObject;

.field private eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

.field private jFA:Ljava/lang/String;

.field private kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private final oq:Lcom/bytedance/sdk/component/so/so;

.field private si:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

.field private so:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->awB:Ljava/util/Map;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->RZ:I

    .line 17
    .line 18
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/jr$1;

    .line 19
    .line 20
    const-string v1, "webviewrender_template"

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/so/jr$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/jr;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->oq:Lcom/bytedance/sdk/component/so/so;

    .line 26
    .line 27
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/jr$2;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/so/jr$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/jr;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->Id:Ljava/lang/Runnable;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->so:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->ex()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->jFA:Ljava/lang/String;

    .line 46
    .line 47
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 48
    .line 49
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->BTZ:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    .line 50
    .line 51
    invoke-virtual {p3, p0}, Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;->oJ(Lcom/bytedance/sdk/component/adexpress/theme/oJ;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->si()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/core/so/jr;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->Id:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method private Ry()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 2
    .line 3
    if-eqz v0, :cond_2

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
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->RZ:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->PiB:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/jFA/ba;->setDisplayZoomControls(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->PiB:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/XAo;->oJ(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->PiB()V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->so:Landroid/content/Context;

    .line 47
    .line 48
    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/UN;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/UN;->ex(Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->WcQ()V

    .line 58
    .line 59
    .line 60
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->RZ:I

    .line 61
    .line 62
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/so/jr;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->dLZ:Lorg/json/JSONObject;

    return-object p0
.end method

.method private ZYk(Z)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    const-string v1, "adVisible"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    const-string v1, "expressAdShow"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static ZYk(Ljava/lang/String;)Z
    .locals 1

    .line 11
    const-string v0, "banner_call"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "banner_ad"

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "slide_banner_ad"

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "banner_ad_landingpage"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/core/so/jr;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ba:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic cFZ(Lcom/bytedance/sdk/openadsdk/core/so/jr;)Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->si:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

    return-object p0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/core/so/jr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->si()V

    return-void
.end method

.method static synthetic jFA(Lcom/bytedance/sdk/openadsdk/core/so/jr;)Lcom/bytedance/sdk/component/jFA/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    return-object p0
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->XQY()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    const-string p0, "v3"

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/so/jr;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ba:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/so/jr;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->dLZ:Lorg/json/JSONObject;

    return-object p1
.end method

.method private oJ(Lcom/bytedance/sdk/component/jFA/ba;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->so:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->oJ(Z)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->oJ(Landroid/webkit/WebView;)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 12
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->oJ(Lcom/bytedance/sdk/component/jFA/ba;)V

    .line 13
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->WcQ()V

    .line 14
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/16 v2, 0x1d50

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/RZ;->oJ(Landroid/webkit/WebView;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setUserAgentString(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setMixedContentMode(I)V

    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setJavaScriptEnabled(Z)V

    .line 17
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 18
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setDomStorageEnabled(Z)V

    .line 19
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setDatabaseEnabled(Z)V

    .line 20
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setAllowFileAccess(Z)V

    .line 21
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setSupportZoom(Z)V

    .line 22
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setBuiltInZoomControls(Z)V

    .line 23
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 24
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setUseWideViewPort(Z)V

    const/4 v0, -0x1

    .line 25
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setCacheMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 26
    const-string v0, "TTAD.WebViewRender"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/so/jr;Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;)V

    return-void
.end method

.method private si()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->ba()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->Ry()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->RZ:I

    .line 21
    .line 22
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/jr$3;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/so/jr$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/jr;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so/WcQ;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ZYk:Z

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so/WcQ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method static synthetic so(Lcom/bytedance/sdk/openadsdk/core/so/jr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->Ry()V

    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/so/jr;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->RZ:I

    return p0
.end method


# virtual methods
.method public BTZ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

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
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Lcom/bytedance/sdk/component/jFA/ba;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ex(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->jFA:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(I)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ZiK()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->Pfn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/dLZ;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->dLZ:Lorg/json/JSONObject;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/component/jFA/ba;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->BTZ:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_0
    return-void
.end method

.method public PiB()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PdF()Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PdF()Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public WcQ()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 2
    .line 3
    if-eqz v0, :cond_2

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
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setBackgroundColor(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 19
    .line 20
    const v2, 0x106000d

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 27
    .line 28
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->oJ(Lcom/bytedance/sdk/component/jFA/ba;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->oJ()Lcom/bytedance/sdk/component/jFA/ba;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->oJ()Lcom/bytedance/sdk/component/jFA/ba;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-direct {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/webkit/WebView;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->ZYk(Z)Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->WcQ:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 57
    .line 58
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->WcQ:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->BTZ:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/kkU;

    .line 66
    .line 67
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->so:Landroid/content/Context;

    .line 68
    .line 69
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 70
    .line 71
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 72
    .line 73
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->WcQ:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->dLZ()Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    move-object v2, v0

    .line 80
    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/so/kkU;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/ex/BTZ;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->QSm:Lcom/bytedance/sdk/openadsdk/core/so/kkU;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 91
    .line 92
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ex;

    .line 93
    .line 94
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 95
    .line 96
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->WcQ:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 97
    .line 98
    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ex;-><init>(Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/ex/BTZ;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ()Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    .line 109
    .line 110
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 111
    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ(Lcom/bytedance/sdk/component/jFA/ba;Lcom/bytedance/sdk/component/adexpress/Pfn/ZYk;)V

    .line 113
    .line 114
    .line 115
    :cond_2
    :goto_0
    return-void
.end method

.method public ZYk(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    const-string v1, "zoom_type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    const-string v1, "expressAdViewWillZoom"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    const-string v0, "TTAD.WebViewRender"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public awB()Lcom/bytedance/sdk/openadsdk/core/so/kkU;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->QSm:Lcom/bytedance/sdk/openadsdk/core/so/kkU;

    .line 2
    .line 3
    return-object v0
.end method

.method public ba()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->oJ()Lcom/bytedance/sdk/component/jFA/ba;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->oJ()Lcom/bytedance/sdk/component/jFA/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public cFZ()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    const-string v1, "expressWebviewRecycle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public eZI()Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ba:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->tB()V

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->BTZ()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->WcQ:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->ex(Z)V

    .line 10
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->tB()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->Id:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->awB:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected jFA()V
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->jFA()V

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/awB;->oJ()Lcom/bytedance/sdk/openadsdk/core/awB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/awB;->Pfn()Lcom/bytedance/sdk/openadsdk/utils/oJ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->cFZ:Lcom/bytedance/sdk/openadsdk/utils/oJ;

    .line 4
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/oJ;->oJ(Lcom/bytedance/sdk/component/adexpress/oJ;)V

    return-void
.end method

.method protected kkU()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->kkU()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->cFZ:Lcom/bytedance/sdk/openadsdk/utils/oJ;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/oJ;->ZYk(Lcom/bytedance/sdk/component/adexpress/oJ;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public oJ()Lcom/bytedance/sdk/component/jFA/ba;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->ex:Lcom/bytedance/sdk/component/jFA/ba;

    return-object v0
.end method

.method public oJ(I)V
    .locals 1

    .line 28
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->Pfn:I

    if-ne p1, v0, :cond_0

    return-void

    .line 29
    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->Pfn:I

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->ZYk(Z)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V
    .locals 3

    .line 31
    invoke-super {p0, p1}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V

    .line 32
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->tB:Z

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/jFA;->ZYk()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/jr$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/so/jr$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/jr;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->si:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->oq:Lcom/bytedance/sdk/component/so/so;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->ZYk(Lcom/bytedance/sdk/component/so/so;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V

    :cond_0
    return-void
.end method

.method public onThemeChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    const-string v1, "status"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 17
    .line 18
    const-string v1, "themeChange"

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public so()V
    .locals 3

    .line 2
    const-string v0, "expressShow"

    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->so()V

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 6
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->eZI:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public tB()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/jr;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uvK()I

    move-result v0

    return v0
.end method
