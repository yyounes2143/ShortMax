.class public Lcom/bytedance/sdk/openadsdk/core/so/Pfn;
.super Lcom/bytedance/sdk/component/jFA/ba;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/so/tB$tB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/so/Pfn$ZYk;,
        Lcom/bytedance/sdk/openadsdk/core/so/Pfn$tB;,
        Lcom/bytedance/sdk/openadsdk/core/so/Pfn$oJ;
    }
.end annotation


# instance fields
.field private BTZ:I

.field protected Pfn:Z

.field private PiB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private WcQ:Lcom/bytedance/sdk/openadsdk/core/so/Pfn$ZYk;

.field private awB:I

.field ba:Ljava/util/concurrent/atomic/AtomicBoolean;

.field cFZ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private dLZ:Ljava/lang/String;

.field private eZI:J

.field protected ex:Z

.field private jFA:Lcom/bytedance/sdk/openadsdk/core/so/Pfn$tB;

.field private kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private so:Lcom/bytedance/sdk/openadsdk/core/so/cY;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/jFA/ba;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->ex:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->Pfn:Z

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->ba:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->cFZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->BTZ:I

    .line 24
    .line 25
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/so/Pfn;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->PiB:Ljava/util/List;

    return-object p0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/core/so/Pfn;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->dLZ:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/so/Pfn;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->awB:I

    return p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/so/Pfn;)Lcom/bytedance/sdk/openadsdk/core/so/cY;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->so:Lcom/bytedance/sdk/openadsdk/core/so/cY;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/so/Pfn;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->PiB:Ljava/util/List;

    return-object p1
.end method

.method private oq()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->PiB:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->dLZ:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "dsp_html_success_url"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn$3;

    .line 17
    .line 18
    const-string v1, "dsp_html_error_url"

    .line 19
    .line 20
    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/so/Pfn$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/Pfn;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/component/so/so;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/so/Pfn;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public QSm()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->ba:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->OP()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/Pfn;->oJ(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    move-object v6, v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v6, v2

    .line 33
    :goto_0
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->BTZ:I

    .line 34
    .line 35
    const-string v8, "UTF-8"

    .line 36
    .line 37
    const/4 v9, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    const-string v7, "text/html"

    .line 40
    .line 41
    move-object v4, p0

    .line 42
    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/sdk/component/jFA/ba;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->eZI:J

    .line 50
    .line 51
    return-void
.end method

.method public RZ()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->WcQ:Lcom/bytedance/sdk/openadsdk/core/so/Pfn$ZYk;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/so/Pfn$ZYk;->k_()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    const-string v1, "render_duration"

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->eZI:J

    .line 20
    .line 21
    sub-long/2addr v2, v4

    .line 22
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    :catchall_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->dLZ:Ljava/lang/String;

    .line 28
    .line 29
    const-string v3, "render_html_success"

    .line 30
    .line 31
    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public ZYk(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->PiB:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->PiB:Ljava/util/List;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->PiB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public eZI()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->jFA:Lcom/bytedance/sdk/openadsdk/core/so/Pfn$tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/Pfn$tB;->ZYk()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/bytedance/sdk/component/jFA/ba;->eZI()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public oJ()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->ba:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->ex:Z

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->jFA:Lcom/bytedance/sdk/openadsdk/core/so/Pfn$tB;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/so/Pfn$tB;->oJ(Landroid/webkit/WebView;)V

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->jFA:Lcom/bytedance/sdk/openadsdk/core/so/Pfn$tB;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->Pfn:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/so/Pfn$tB;->oJ(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->RZ()V

    .line 53
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->oq()V

    :cond_0
    return-void
.end method

.method public oJ(II)V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->WcQ:Lcom/bytedance/sdk/openadsdk/core/so/Pfn$ZYk;

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/so/Pfn$ZYk;->oJ(II)V

    .line 43
    :cond_0
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->BTZ:I

    .line 44
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 45
    :try_start_0
    const-string v0, "error_code"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    const-string p2, "render_duration"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->eZI:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :catchall_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->dLZ:Ljava/lang/String;

    const-string v1, "render_html_fail"

    invoke-static {p2, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public oJ(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->jFA:Lcom/bytedance/sdk/openadsdk/core/so/Pfn$tB;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/so/Pfn$tB;->oJ(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/so/Pfn$ZYk;Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->WcQ:Lcom/bytedance/sdk/openadsdk/core/so/Pfn$ZYk;

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->dLZ:Ljava/lang/String;

    .line 7
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/so/Pfn$tB;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/so/Pfn$tB;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->jFA:Lcom/bytedance/sdk/openadsdk/core/so/Pfn$tB;

    .line 8
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/so/cY;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/so/cY;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->so:Lcom/bytedance/sdk/openadsdk/core/so/cY;

    .line 9
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/so/Pfn$oJ;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/so/Pfn$oJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/tB$tB;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/jFA/ba;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 10
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/so/Pfn$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/so/Pfn$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/Pfn;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/jFA/ba;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 11
    invoke-static {}, Lcom/bytedance/sdk/component/utils/jFA;->ZYk()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/so/Pfn$2;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/so/Pfn$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/Pfn;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    .line 13
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 14
    :cond_0
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->so:Lcom/bytedance/sdk/openadsdk/core/so/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/so/cY;->ZYk()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 15
    :cond_1
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->dLZ:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Ljava/lang/String;)I

    move-result v1

    .line 16
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/utils/Ry;->oJ(Ljava/lang/String;)Z

    move-result v2

    const/4 v10, 0x0

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TNk()Lcom/bytedance/sdk/openadsdk/core/model/PiB;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TNk()Lcom/bytedance/sdk/openadsdk/core/model/PiB;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/PiB;->oJ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-object/from16 v3, p1

    goto :goto_1

    .line 17
    :cond_3
    :goto_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/model/PiB;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/model/PiB;-><init>()V

    move-object/from16 v3, p1

    .line 18
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/PiB;->oJ(Ljava/lang/String;)V

    .line 19
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/PiB;)V

    move-object v8, v10

    goto :goto_2

    :goto_1
    move-object v8, v3

    .line 20
    :goto_2
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(Z)V

    .line 21
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TNk()Lcom/bytedance/sdk/openadsdk/core/model/PiB;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TNk()Lcom/bytedance/sdk/openadsdk/core/model/PiB;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/PiB;->oJ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->dLZ:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v4, v1

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/XAo;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;ILjava/lang/String;ZLjava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 23
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TNk()Lcom/bytedance/sdk/openadsdk/core/model/PiB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/PiB;->ZYk()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 24
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TNk()Lcom/bytedance/sdk/openadsdk/core/model/PiB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/PiB;->ZYk()Ljava/lang/String;

    move-result-object v3

    .line 25
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->dLZ:Ljava/lang/String;

    const-string v6, "open_fallback_url"

    invoke-static {v4, v5, v6, v10}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object v9, v3

    goto :goto_4

    :cond_4
    :goto_3
    move-object v9, v8

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :goto_4
    if-nez v2, :cond_7

    .line 26
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->dLZ:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, v1

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/core/XAo;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/core/tB/oJ;Ljava/lang/String;ZLjava/lang/String;)Z

    goto :goto_5

    :cond_6
    return-void

    .line 28
    :cond_7
    :goto_5
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->so:Lcom/bytedance/sdk/openadsdk/core/so/cY;

    if-eqz v1, :cond_a

    .line 29
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->WcQ:Lcom/bytedance/sdk/openadsdk/core/so/Pfn$ZYk;

    const/4 v2, 0x2

    if-eqz v1, :cond_8

    .line 30
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/so/Pfn$ZYk;->oJ()Landroid/view/View;

    move-result-object v10

    .line 31
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->WcQ:Lcom/bytedance/sdk/openadsdk/core/so/Pfn$ZYk;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/so/Pfn$ZYk;->ZYk()Landroid/view/View;

    move-result-object v1

    .line 32
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->WcQ:Lcom/bytedance/sdk/openadsdk/core/so/Pfn$ZYk;

    invoke-interface {v3, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/so/Pfn$ZYk;->oJ(Landroid/view/View;I)V

    move-object/from16 v19, v10

    move-object v10, v1

    move-object/from16 v1, v19

    goto :goto_6

    :cond_8
    move-object v1, v10

    .line 33
    :goto_6
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->so:Lcom/bytedance/sdk/openadsdk/core/so/cY;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v10, v1}, Lcom/bytedance/sdk/openadsdk/core/so/cY;->oJ(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/model/BTZ;

    move-result-object v14

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 35
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "click_scence"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v15, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->dLZ:Ljava/lang/String;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->so:Lcom/bytedance/sdk/openadsdk/core/so/cY;

    .line 37
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/so/cY;->ZYk()Z

    move-result v3

    if-eqz v3, :cond_9

    move/from16 v18, v11

    goto :goto_7

    :cond_9
    move/from16 v18, v2

    .line 38
    :goto_7
    const-string v12, "click"

    const/16 v16, 0x1

    move-object/from16 v17, v1

    invoke-static/range {v12 .. v18}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/BTZ;Ljava/lang/String;ZLjava/util/Map;I)V

    .line 39
    :cond_a
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->so:Lcom/bytedance/sdk/openadsdk/core/so/cY;

    if-eqz v1, :cond_b

    .line 40
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/so/cY;->oJ()V

    :cond_b
    :goto_8
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/component/jFA/ba;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->ex:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->jFA:Lcom/bytedance/sdk/openadsdk/core/so/Pfn$tB;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/so/Pfn$tB;->oJ(Landroid/webkit/WebView;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->jFA:Lcom/bytedance/sdk/openadsdk/core/so/Pfn$tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/Pfn$tB;->oJ()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/bytedance/sdk/component/jFA/ba;->onDetachedFromWindow()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    const-string v1, "rate"

    .line 15
    .line 16
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->awB:I

    .line 17
    .line 18
    int-to-float v2, v2

    .line 19
    const/high16 v3, 0x42c80000    # 100.0f

    .line 20
    .line 21
    div-float/2addr v2, v3

    .line 22
    float-to-double v2, v2

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :catchall_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->dLZ:Ljava/lang/String;

    .line 29
    .line 30
    const-string v3, "load_rate"

    .line 31
    .line 32
    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->Pfn:Z

    .line 10
    .line 11
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/Pfn;->jFA:Lcom/bytedance/sdk/openadsdk/core/so/Pfn$tB;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/so/Pfn$tB;->oJ(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
