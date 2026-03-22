.class public Lcom/bytedance/sdk/component/jFA/ba;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/jFA/ba$oJ;,
        Lcom/bytedance/sdk/component/jFA/ba$ZYk;,
        Lcom/bytedance/sdk/component/jFA/ba$ex;,
        Lcom/bytedance/sdk/component/jFA/ba$tB;
    }
.end annotation


# static fields
.field private static HyG:Lcom/bytedance/sdk/component/jFA/ba$tB;


# instance fields
.field private BTZ:J

.field private HL:F

.field private IUZ:F

.field private Id:Z

.field private Jc:Landroid/util/AttributeSet;

.field private Ln:I

.field private LpP:Lcom/bytedance/sdk/component/jFA/ba$ZYk;

.field private Pfn:Ljava/lang/String;

.field private PiB:Z

.field private QSm:Z

.field private RZ:Lcom/bytedance/sdk/component/jFA/ex;

.field private Rl:J

.field private Ry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private UN:Landroid/content/Context;

.field private volatile WcQ:Landroid/webkit/WebView;

.field private XAo:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Xe:Landroid/webkit/WebViewClient;

.field public ZYk:I

.field private awB:Landroid/view/View;

.field private ba:Lorg/json/JSONObject;

.field private cFZ:Z

.field private cY:Z

.field private cdg:J

.field private dLZ:J

.field private eZI:Lcom/bytedance/sdk/component/jFA/oJ$oJ;

.field private ex:Lcom/bytedance/sdk/component/jFA/ZYk/oJ;

.field private jFA:F

.field private jr:Z

.field private kkU:J

.field private mu:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private nke:Lcom/bytedance/sdk/component/utils/jr;

.field public oJ:I

.field private ofl:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private oq:Z

.field private si:Lcom/bytedance/sdk/component/jFA/oJ;

.field private so:F

.field public tB:I

.field private tb:F

.field private wd:Lcom/bytedance/sdk/component/jFA/ba$ex;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/bytedance/sdk/component/jFA/ba;->oJ(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 2
    invoke-static {p1}, Lcom/bytedance/sdk/component/jFA/ba;->oJ(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->so:F

    .line 4
    iput v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->jFA:F

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->kkU:J

    .line 6
    iput-wide v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->dLZ:J

    .line 7
    iput-wide v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->BTZ:J

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->PiB:Z

    const/high16 v1, 0x41a00000    # 20.0f

    .line 9
    iput v1, p0, Lcom/bytedance/sdk/component/jFA/ba;->tb:F

    const/high16 v1, 0x42480000    # 50.0f

    .line 10
    iput v1, p0, Lcom/bytedance/sdk/component/jFA/ba;->IUZ:F

    .line 11
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/component/jFA/ba;->mu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/component/jFA/ba;->XAo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/component/jFA/ba;->ofl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    iput-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->UN:Landroid/content/Context;

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 15
    :try_start_0
    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/component/jFA/ba;->oJ(Landroid/util/AttributeSet;I)Landroid/webkit/WebView;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/jFA/ba;->ba()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :catchall_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/jFA/ba;->oJ(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/jFA/ba;->ZYk(Landroid/content/Context;)V

    return-void
.end method

.method private QSm()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :catchall_0
    :cond_0
    return-void
.end method

.method private RZ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 7
    .line 8
    const-string v1, "searchBoxJavaBridge_"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 14
    .line 15
    const-string v1, "accessibility"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 21
    .line 22
    const-string v1, "accessibilityTraversal"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    :catchall_0
    return-void
.end method

.method private ZYk(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/bytedance/sdk/component/jFA/ba;->tB(Landroid/content/Context;)V

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/component/jFA/ba;->QSm()V

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/component/jFA/ba;->RZ()V

    return-void
.end method

.method private static ZYk(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.support.v4.view.ViewPager"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    return v0

    .line 7
    :catchall_0
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "androidx.viewpager.widget.ViewPager"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    return v0

    :catchall_1
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static oJ(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 1
    return-object p0
.end method

.method private oJ(Landroid/util/AttributeSet;I)Landroid/webkit/WebView;
    .locals 2

    .line 18
    sget-object v0, Lcom/bytedance/sdk/component/jFA/ba;->HyG:Lcom/bytedance/sdk/component/jFA/ba$tB;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/bytedance/sdk/component/jFA/ba$tB;->createWebView(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/webkit/WebView;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 20
    new-instance p1, Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/bytedance/sdk/component/jFA/ba;->UN:Landroid/content/Context;

    .line 21
    invoke-static {p2}, Lcom/bytedance/sdk/component/jFA/ba;->oJ(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_1
    new-instance p2, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->UN:Landroid/content/Context;

    .line 22
    invoke-static {v0}, Lcom/bytedance/sdk/component/jFA/ba;->oJ(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p2
.end method

.method private oJ(Landroid/view/MotionEvent;)V
    .locals 9

    .line 35
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->cFZ:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->ex:Lcom/bytedance/sdk/component/jFA/ZYk/oJ;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->Pfn:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->ba:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    :cond_0
    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 36
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->ba:Lorg/json/JSONObject;

    const-string v1, "start_x"

    iget v2, p0, Lcom/bytedance/sdk/component/jFA/ba;->so:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->ba:Lorg/json/JSONObject;

    const-string v1, "start_y"

    iget v2, p0, Lcom/bytedance/sdk/component/jFA/ba;->jFA:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->ba:Lorg/json/JSONObject;

    const-string v1, "offset_x"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/bytedance/sdk/component/jFA/ba;->so:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->ba:Lorg/json/JSONObject;

    const-string v1, "offset_y"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v2, p0, Lcom/bytedance/sdk/component/jFA/ba;->jFA:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    iget-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->ba:Lorg/json/JSONObject;

    const-string v0, "url"

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/jFA/ba;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    iget-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->ba:Lorg/json/JSONObject;

    const-string v0, "tag"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->dLZ:J

    .line 44
    iget-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    if-eqz p1, :cond_3

    .line 45
    iget-wide v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->dLZ:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->Rl:J

    .line 46
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->ba:Lorg/json/JSONObject;

    const-string v0, "down_time"

    iget-wide v1, p0, Lcom/bytedance/sdk/component/jFA/ba;->kkU:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 47
    iget-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->ba:Lorg/json/JSONObject;

    const-string v0, "up_time"

    iget-wide v1, p0, Lcom/bytedance/sdk/component/jFA/ba;->dLZ:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 48
    invoke-static {}, Lcom/bytedance/sdk/component/jFA/oJ/oJ;->oJ()Lcom/bytedance/sdk/component/jFA/oJ/oJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/oJ/oJ;->ZYk()Lcom/bytedance/sdk/component/jFA/oJ/ZYk;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-wide v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->BTZ:J

    iget-wide v2, p0, Lcom/bytedance/sdk/component/jFA/ba;->kkU:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_5

    .line 49
    iput-wide v2, p0, Lcom/bytedance/sdk/component/jFA/ba;->BTZ:J

    .line 50
    invoke-static {}, Lcom/bytedance/sdk/component/jFA/oJ/oJ;->oJ()Lcom/bytedance/sdk/component/jFA/oJ/oJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/oJ/oJ;->ZYk()Lcom/bytedance/sdk/component/jFA/oJ/ZYk;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/jFA/ba;->ex:Lcom/bytedance/sdk/component/jFA/ZYk/oJ;

    iget-object v2, p0, Lcom/bytedance/sdk/component/jFA/ba;->Pfn:Ljava/lang/String;

    const-string v3, "in_web_click"

    iget-object v4, p0, Lcom/bytedance/sdk/component/jFA/ba;->ba:Lorg/json/JSONObject;

    iget-wide v5, p0, Lcom/bytedance/sdk/component/jFA/ba;->dLZ:J

    iget-wide v7, p0, Lcom/bytedance/sdk/component/jFA/ba;->kkU:J

    sub-long/2addr v5, v7

    invoke-interface/range {v0 .. v6}, Lcom/bytedance/sdk/component/jFA/oJ/ZYk;->oJ(Lcom/bytedance/sdk/component/jFA/ZYk/oJ;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V

    goto :goto_0

    .line 51
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->so:F

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->jFA:F

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->kkU:J

    .line 54
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->ba:Lorg/json/JSONObject;

    .line 55
    iget-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    if-eqz p1, :cond_5

    .line 56
    iget-wide v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->kkU:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->cdg:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    :goto_0
    return-void
.end method

.method private oq()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->nke:Lcom/bytedance/sdk/component/utils/jr;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->ofl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/bytedance/sdk/component/utils/jr;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/utils/jr;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->nke:Lcom/bytedance/sdk/component/utils/jr;

    .line 21
    .line 22
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/jFA/ba$1;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/jFA/ba$1;-><init>(Lcom/bytedance/sdk/component/jFA/ba;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->ofl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static setDataDirectorySuffix(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/webkit/internal/r;->a(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private setJavaScriptEnabled(Ljava/lang/String;)V
    .locals 2

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v1, "file"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 6
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static setWebViewProvider(Lcom/bytedance/sdk/component/jFA/ba$tB;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/bytedance/sdk/component/jFA/ba;->HyG:Lcom/bytedance/sdk/component/jFA/ba$tB;

    .line 2
    .line 3
    return-void
.end method

.method private static tB(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method private static tB(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.support.v4.view.ScrollingView"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    return v0

    .line 5
    :catchall_0
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "androidx.core.view.ScrollingView"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    return v0

    :catchall_1
    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public BTZ()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method

.method public Pfn()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->Jc:Landroid/util/AttributeSet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->oJ(Landroid/util/AttributeSet;I)Landroid/webkit/WebView;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/jFA/ba;->ba()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->UN:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/bytedance/sdk/component/jFA/ba;->oJ(Landroid/content/Context;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/jFA/ba;->ZYk(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public PiB()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public Ry()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method

.method public WcQ()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method

.method public ZYk()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->oq:Z

    return v0
.end method

.method public a_(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/jFA/ba;->setJavaScriptEnabled(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    :catchall_0
    return-void
.end method

.method public awB()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :catchall_0
    return-void
.end method

.method public b_(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method

.method public ba()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/jFA/ba;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 13
    .line 14
    const v1, 0x1f000008

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    :catchall_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 21
    .line 22
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 23
    .line 24
    const/4 v2, -0x1

    .line 25
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public cFZ()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method

.method public computeScroll()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/webkit/WebView;->computeScroll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :catchall_0
    return-void
.end method

.method public dLZ()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    return v0

    .line 14
    :catchall_0
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public eZI()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :catchall_0
    return-void
.end method

.method public ex()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->cY:Z

    .line 2
    .line 3
    return v0
.end method

.method public getArbitrageLoadingView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->awB:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    return v0

    .line 14
    :catchall_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public getLandingPageClickBegin()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->cdg:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLandingPageClickEnd()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->Rl:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMaterialMeta()Lcom/bytedance/sdk/component/jFA/ZYk/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->ex:Lcom/bytedance/sdk/component/jFA/ZYk/oJ;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-string v2, "data:text/html"

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const-string v3, "file://"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    move-object v0, v2

    .line 40
    :cond_1
    return-object v0

    .line 41
    :catchall_0
    return-object v1
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    return v0

    .line 14
    :catchall_0
    const/16 v0, 0x64

    .line 15
    .line 16
    return v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/jFA/ba;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->Pfn:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    return-object v0

    .line 14
    :catchall_0
    return-object v1
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    return-object v0

    .line 19
    :catchall_0
    return-object v1
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->Xe:Landroid/webkit/WebViewClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public jFA()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    return v0

    .line 14
    :catchall_0
    return v1
.end method

.method public kkU()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method

.method public l_()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->QSm:Z

    .line 2
    .line 3
    return v0
.end method

.method protected oJ(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 2

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 29
    instance-of v0, p1, Landroid/widget/AbsListView;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/widget/ScrollView;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 31
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    .line 32
    invoke-static {v0}, Lcom/bytedance/sdk/component/jFA/ba;->ZYk(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/bytedance/sdk/component/jFA/ba;->tB(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/jFA/ba;->oJ(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public oJ(IJ)V
    .locals 8

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    instance-of v0, v0, Lcom/bytedance/sdk/component/jFA/Pfn;

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Lcom/bytedance/sdk/component/jFA/ex;

    iget-object v2, p0, Lcom/bytedance/sdk/component/jFA/ba;->UN:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/component/jFA/ba;->si:Lcom/bytedance/sdk/component/jFA/oJ;

    move-object v1, v0

    move v4, p1

    move-wide v5, p2

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/component/jFA/ex;-><init>(Landroid/content/Context;Landroid/view/View$OnTouchListener;IJLcom/bytedance/sdk/component/jFA/ba;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->RZ:Lcom/bytedance/sdk/component/jFA/ex;

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->Pfn:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->RZ:Lcom/bytedance/sdk/component/jFA/ex;

    iget-object p2, p0, Lcom/bytedance/sdk/component/jFA/ba;->Pfn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/jFA/ex;->oJ(Ljava/lang/String;)V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    check-cast p1, Lcom/bytedance/sdk/component/jFA/Pfn;

    iget-object p2, p0, Lcom/bytedance/sdk/component/jFA/ba;->RZ:Lcom/bytedance/sdk/component/jFA/ex;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/jFA/Pfn;->setTouchListenerProxy(Lcom/bytedance/sdk/component/jFA/tB;)V

    :cond_1
    return-void
.end method

.method public oJ(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 25
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/jFA/ba;->setJavaScriptEnabled(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public oJ(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/jFA/ba;->setJavaScriptEnabled(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public oJ(Z)V
    .locals 1

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->clearCache(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public oJ(ZIILjava/util/List;ILjava/util/List;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    instance-of p1, p1, Lcom/bytedance/sdk/component/jFA/Pfn;

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Lcom/bytedance/sdk/component/jFA/oJ;

    iget-object v1, p0, Lcom/bytedance/sdk/component/jFA/ba;->UN:Landroid/content/Context;

    move-object v0, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/jFA/oJ;-><init>(Landroid/content/Context;IILjava/util/List;I)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->si:Lcom/bytedance/sdk/component/jFA/oJ;

    .line 4
    iput-object p6, p0, Lcom/bytedance/sdk/component/jFA/ba;->Ry:Ljava/util/List;

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->Pfn:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->si:Lcom/bytedance/sdk/component/jFA/oJ;

    iget-object p2, p0, Lcom/bytedance/sdk/component/jFA/ba;->Pfn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/jFA/oJ;->oJ(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    check-cast p1, Lcom/bytedance/sdk/component/jFA/Pfn;

    iget-object p2, p0, Lcom/bytedance/sdk/component/jFA/ba;->si:Lcom/bytedance/sdk/component/jFA/oJ;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/jFA/Pfn;->setTouchListenerProxy(Lcom/bytedance/sdk/component/jFA/tB;)V

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->si:Lcom/bytedance/sdk/component/jFA/oJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/oJ;->oJ()Lcom/bytedance/sdk/component/jFA/oJ$oJ;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->eZI:Lcom/bytedance/sdk/component/jFA/oJ$oJ;

    :cond_1
    return-void
.end method

.method public oJ(ZLandroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 14
    iput-object p2, p0, Lcom/bytedance/sdk/component/jFA/ba;->awB:Landroid/view/View;

    const/16 p1, 0x8

    .line 15
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->awB:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 17
    iget-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->awB:Landroid/view/View;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->mu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->XAo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->ofl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/bytedance/sdk/component/jFA/ba;->oq()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->mu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/jFA/ba;->oJ(Landroid/view/MotionEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/jFA/ba;->PiB:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, p0}, Lcom/bytedance/sdk/component/jFA/ba;->oJ(Landroid/view/View;)Landroid/view/ViewParent;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :cond_1
    return v0

    .line 36
    :catchall_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method

.method public setAllowFileAccess(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    :catchall_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    return-void
.end method

.method public setCacheMode(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    return-void
.end method

.method public setCalculationMethod(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->Ln:I

    .line 2
    .line 3
    return-void
.end method

.method public setDatabaseEnabled(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    return-void
.end method

.method public setDeepShakeValue(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->HL:F

    .line 2
    .line 3
    return-void
.end method

.method public setDefaultFontSize(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    return-void
.end method

.method public setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    return-void
.end method

.method public setDisplayZoomControls(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    return-void
.end method

.method public setDomStorageEnabled(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method

.method public setIsPreventTouchEvent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->PiB:Z

    .line 2
    .line 3
    return-void
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setLandingPage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->cFZ:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLandingPageClickBegin(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->cdg:J

    .line 2
    .line 3
    return-void
.end method

.method public setLandingPageClickEnd(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->Rl:J

    .line 2
    .line 3
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method

.method public setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    return-void
.end method

.method public setLpPreRender(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->QSm:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMaterialMeta(Lcom/bytedance/sdk/component/jFA/ZYk/oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->ex:Lcom/bytedance/sdk/component/jFA/ZYk/oJ;

    .line 2
    .line 3
    return-void
.end method

.method public setMixedContentMode(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method

.method public setOnShakeListener(Lcom/bytedance/sdk/component/jFA/ba$ZYk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->LpP:Lcom/bytedance/sdk/component/jFA/ba$ZYk;

    .line 2
    .line 3
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    :catchall_0
    return-void
.end method

.method public setPreError(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->jr:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPreFinish(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->Id:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPreProgressHundred(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->cY:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPreStart(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->oq:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRecycler(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 6
    .line 7
    instance-of v0, v0, Lcom/bytedance/sdk/component/jFA/Pfn;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 12
    .line 13
    check-cast v0, Lcom/bytedance/sdk/component/jFA/Pfn;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/jFA/Pfn;->setRecycler(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setShakeValue(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->tb:F

    .line 2
    .line 3
    return-void
.end method

.method public setSupportZoom(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->Pfn:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->si:Lcom/bytedance/sdk/component/jFA/oJ;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/jFA/oJ;->oJ(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->RZ:Lcom/bytedance/sdk/component/jFA/ex;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/jFA/ex;->oJ(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public setTouchStateListener(Lcom/bytedance/sdk/component/jFA/ba$ex;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->wd:Lcom/bytedance/sdk/component/jFA/ba$ex;

    .line 2
    .line 3
    return-void
.end method

.method public setUseWideViewPort(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    :catchall_0
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 4

    .line 1
    :try_start_0
    instance-of v0, p1, Lcom/bytedance/sdk/component/jFA/ba$ex;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/bytedance/sdk/component/jFA/ba$ex;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setTouchStateListener(Lcom/bytedance/sdk/component/jFA/ba$ex;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setTouchStateListener(Lcom/bytedance/sdk/component/jFA/ba$ex;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    new-instance p1, Lcom/bytedance/sdk/component/jFA/ba$oJ;

    .line 19
    .line 20
    invoke-direct {p1}, Lcom/bytedance/sdk/component/jFA/ba$oJ;-><init>()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->Xe:Landroid/webkit/WebViewClient;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 26
    .line 27
    new-instance v1, Lcom/bytedance/sdk/component/jFA/cFZ;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/bytedance/sdk/component/jFA/ba;->eZI:Lcom/bytedance/sdk/component/jFA/oJ$oJ;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/bytedance/sdk/component/jFA/ba;->Ry:Ljava/util/List;

    .line 32
    .line 33
    invoke-direct {v1, v2, p1, v3}, Lcom/bytedance/sdk/component/jFA/cFZ;-><init>(Lcom/bytedance/sdk/component/jFA/oJ$oJ;Landroid/webkit/WebViewClient;Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :catchall_0
    return-void
.end method

.method public setWriggleValue(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/component/jFA/ba;->IUZ:F

    .line 2
    .line 3
    return-void
.end method

.method public si()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method

.method public so()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->WcQ:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method

.method public tB()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/jFA/ba;->Id:Z

    return v0
.end method
