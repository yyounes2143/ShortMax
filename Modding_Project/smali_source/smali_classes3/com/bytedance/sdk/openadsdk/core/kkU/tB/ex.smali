.class public Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/ZYk/dLZ;
.implements Lcom/bytedance/sdk/openadsdk/core/kkU/tB/tB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/adexpress/ZYk/dLZ;",
        "Lcom/bytedance/sdk/openadsdk/core/kkU/tB/tB<",
        "Lcom/bytedance/sdk/component/jFA/ba;",
        ">;"
    }
.end annotation


# instance fields
.field private Pfn:Ljava/lang/String;

.field private ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private ba:Lcom/bytedance/sdk/openadsdk/core/kkU/tB/oJ;

.field private cFZ:I

.field private ex:Lcom/bytedance/sdk/openadsdk/core/UN;

.field private oJ:Landroid/content/Context;

.field private tB:Lcom/bytedance/sdk/component/jFA/ba;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->cFZ:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->oJ:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Tt()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->cFZ:I

    .line 16
    .line 17
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/si;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/model/si$oJ;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->cFZ:I

    .line 24
    .line 25
    if-ne p2, v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/si$oJ;->oJ(Z)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->Pfn:Ljava/lang/String;

    .line 34
    .line 35
    return-void
.end method

.method private cFZ()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setBackgroundColor(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    .line 8
    .line 9
    const v1, 0x106000d

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->oJ(Lcom/bytedance/sdk/component/jFA/ba;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    .line 32
    .line 33
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->oJ:Landroid/content/Context;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->ex:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    move-object v1, v7

    .line 48
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/UN;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ex/BTZ;Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/component/jFA/ba;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ()Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->ex:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ(Lcom/bytedance/sdk/component/jFA/ba;Lcom/bytedance/sdk/component/adexpress/Pfn/ZYk;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    .line 66
    .line 67
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ex;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->ex:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 70
    .line 71
    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ex;-><init>(Lcom/bytedance/sdk/openadsdk/core/UN;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/component/jFA/ba;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->oJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->oJ(Z)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->oJ(Landroid/webkit/WebView;)V

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/tB;->oJ(Lcom/bytedance/sdk/component/jFA/ba;)V

    .line 12
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->WcQ()V

    .line 13
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/16 v2, 0x1d50

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/RZ;->oJ(Landroid/webkit/WebView;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setUserAgentString(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setMixedContentMode(I)V

    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setJavaScriptEnabled(Z)V

    .line 16
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 17
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setDomStorageEnabled(Z)V

    .line 18
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setDatabaseEnabled(Z)V

    .line 19
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setAllowFileAccess(Z)V

    .line 20
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setSupportZoom(Z)V

    .line 21
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setBuiltInZoomControls(Z)V

    .line 22
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 23
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setUseWideViewPort(Z)V

    const/4 v0, -0x1

    .line 24
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setCacheMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private so()V
    .locals 7

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->oJ:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->ex:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Lcom/bytedance/sdk/component/jFA/ba;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ex(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ZiK()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->Pfn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v1, 0x0

    .line 57
    const/4 v2, 0x0

    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->oJ(FFZLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/tB;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/dLZ;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/component/jFA/ba;)Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 74
    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public Pfn()Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->ex:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 2
    .line 3
    return-object v0
.end method

.method public ZYk()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->Pfn:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->Pfn:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->a_(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public ba()Lcom/bytedance/sdk/component/jFA/ba;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    .line 2
    .line 3
    return-object v0
.end method

.method public synthetic ex()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->ba()Lcom/bytedance/sdk/component/jFA/ba;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public oJ()V
    .locals 8

    .line 3
    new-instance v0, Lcom/bytedance/sdk/component/jFA/ba;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->oJ:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->cFZ()V

    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->so()V

    .line 6
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TxP()I

    move-result v4

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex$1;

    invoke-direct {v6, p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;)V

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/utils/Rl;->oJ(Landroid/view/ViewGroup;ZIZLcom/bytedance/sdk/openadsdk/utils/Rl$ZYk;Ljava/util/List;)V

    return-void
.end method

.method public oJ(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/tB;)V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V
    .locals 0

    .line 2
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/kkU/tB/oJ;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->ba:Lcom/bytedance/sdk/openadsdk/core/kkU/tB/oJ;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/so/awB;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->ex:Lcom/bytedance/sdk/openadsdk/core/UN;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/awB;)Lcom/bytedance/sdk/openadsdk/core/UN;

    :cond_0
    return-void
.end method

.method public oJ(Z)V
    .locals 2

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    :try_start_0
    const-string v1, "visibleState"

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->ex:Lcom/bytedance/sdk/openadsdk/core/UN;

    const-string v1, "visibleStateChange"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public tB()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->ex:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->tB()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->ex:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/view/ViewGroup;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/tB/ex;->tB:Lcom/bytedance/sdk/component/jFA/ba;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->eZI()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    :catchall_0
    :cond_2
    return-void
.end method
