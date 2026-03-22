.class public Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Pfn:[B

.field private static ba:I = 0xa

.field private static volatile jFA:Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn; = null

.field private static so:I = 0xa


# instance fields
.field private ZYk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/jFA/ba;",
            ">;"
        }
    .end annotation
.end field

.field private final cFZ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/component/adexpress/Pfn/ex;",
            ">;"
        }
    .end annotation
.end field

.field private oJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/jFA/ba;",
            ">;"
        }
    .end annotation
.end field

.field private tB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/component/adexpress/Pfn/tB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    sput-object v0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->Pfn:[B

    .line 5
    .line 6
    return-void
.end method

.method private constructor <init>()V
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
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->cFZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ:Ljava/util/List;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ZYk:Ljava/util/List;

    .line 25
    .line 26
    new-instance v0, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->tB:Ljava/util/Map;

    .line 32
    .line 33
    new-instance v0, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ex:Ljava/util/Map;

    .line 39
    .line 40
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->oJ()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->tB()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/tB;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/tB;->kkU()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    sput v1, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ba:I

    .line 55
    .line 56
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/tB;->dLZ()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    sput v0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->so:I

    .line 61
    .line 62
    :cond_0
    return-void
.end method

.method private cFZ(Lcom/bytedance/sdk/component/jFA/ba;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->removeAllViews()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->cFZ()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setJavaScriptEnabled(Z)V

    .line 19
    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setCacheMode(I)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setSupportZoom(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setUseWideViewPort(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setDomStorageEnabled(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setBuiltInZoomControls(Z)V

    .line 39
    .line 40
    .line 41
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setLoadWithOverviewMode(Z)V

    .line 47
    .line 48
    .line 49
    const-string v0, "UTF-8"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/16 v0, 0x10

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setDefaultFontSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    :catchall_0
    return-void
.end method

.method public static oJ()Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->jFA:Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->jFA:Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->jFA:Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    .line 6
    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->jFA:Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;

    return-object v0
.end method


# virtual methods
.method public Pfn(Lcom/bytedance/sdk/component/jFA/ba;)Z
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Landroid/content/MutableContextWrapper;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    check-cast v1, Landroid/content/MutableContextWrapper;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1, v0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->eZI()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    :goto_2
    const/4 p1, 0x1

    .line 34
    return p1
.end method

.method public ZYk(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/component/jFA/ba;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->tB()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 6
    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/component/adexpress/ex/Pfn;->oJ(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->tB()I

    move-result p2

    const/4 v0, 0x1

    if-gt p2, v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->tB()I

    return-object v1

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/component/jFA/ba;

    if-nez p2, :cond_2

    return-object v1

    .line 9
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 10
    instance-of v3, v2, Landroid/content/MutableContextWrapper;

    if-eqz v3, :cond_3

    .line 11
    check-cast v2, Landroid/content/MutableContextWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setRecycler(Z)V

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->tB()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-object p2

    .line 14
    :catchall_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->tB()I

    return-object v1
.end method

.method public ZYk()V
    .locals 4

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v1, :cond_0

    .line 16
    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 17
    instance-of v3, v2, Landroid/content/MutableContextWrapper;

    if-eqz v3, :cond_1

    .line 18
    move-object v3, v2

    check-cast v3, Landroid/content/MutableContextWrapper;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 19
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/jFA/ba;->eZI()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 20
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_0

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ZYk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz v1, :cond_3

    .line 23
    :try_start_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 24
    instance-of v3, v2, Landroid/content/MutableContextWrapper;

    if-eqz v3, :cond_4

    .line 25
    move-object v3, v2

    check-cast v3, Landroid/content/MutableContextWrapper;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_5

    .line 26
    :cond_4
    :goto_4
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/jFA/ba;->eZI()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 27
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_3

    .line 28
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ZYk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public ZYk(I)V
    .locals 1

    .line 29
    sget-object v0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->Pfn:[B

    monitor-enter v0

    .line 30
    :try_start_0
    sput p1, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->so:I

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public ZYk(Lcom/bytedance/sdk/component/jFA/ba;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->cFZ(Lcom/bytedance/sdk/component/jFA/ba;)V

    .line 2
    const-string v0, "SDK_INJECT_GLOBAL"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->b_(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ba(Lcom/bytedance/sdk/component/jFA/ba;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ(Lcom/bytedance/sdk/component/jFA/ba;)V

    return-void
.end method

.method public ba(Lcom/bytedance/sdk/component/jFA/ba;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->tB:Ljava/util/Map;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/bytedance/sdk/component/adexpress/Pfn/tB;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/Pfn/tB;->oJ(Lcom/bytedance/sdk/component/adexpress/Pfn/ZYk;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    const-string v0, "SDK_INJECT_GLOBAL"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->b_(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public ex()I
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ZYk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public ex(Lcom/bytedance/sdk/component/jFA/ba;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ba:I

    if-lt v0, v1, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/content/MutableContextWrapper;

    if-eqz v1, :cond_1

    .line 4
    move-object v1, v0

    check-cast v1, Landroid/content/MutableContextWrapper;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->eZI()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 6
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 9
    instance-of v1, v0, Landroid/content/MutableContextWrapper;

    if-eqz v1, :cond_3

    .line 10
    move-object v1, v0

    check-cast v1, Landroid/content/MutableContextWrapper;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setRecycler(Z)V

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->tB()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    return-void

    .line 14
    :goto_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->tB()I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public oJ(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/component/jFA/ba;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ex()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 8
    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/component/adexpress/ex/Pfn;->oJ(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ex()I

    move-result p2

    const/4 v0, 0x1

    if-gt p2, v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ex()I

    return-object v1

    .line 10
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ZYk:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/component/jFA/ba;

    if-nez p2, :cond_2

    return-object v1

    .line 11
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 12
    instance-of v3, v2, Landroid/content/MutableContextWrapper;

    if-eqz v3, :cond_3

    .line 13
    check-cast v2, Landroid/content/MutableContextWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 14
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setRecycler(Z)V

    .line 15
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ex()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-object p2

    .line 16
    :catchall_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ex()I

    return-object v1
.end method

.method public oJ(I)V
    .locals 1

    .line 46
    sget-object v0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->Pfn:[B

    monitor-enter v0

    .line 47
    :try_start_0
    sput p1, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ba:I

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public oJ(Landroid/webkit/WebView;Lcom/bytedance/sdk/component/oJ/Xe;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 36
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ex:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/Pfn/ex;

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/component/adexpress/Pfn/ex;->oJ(Lcom/bytedance/sdk/component/oJ/Xe;)V

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/Pfn/ex;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/component/adexpress/Pfn/ex;-><init>(Lcom/bytedance/sdk/component/oJ/Xe;)V

    .line 40
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ex:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :goto_0
    invoke-virtual {p1, v0, p3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public oJ(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 42
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ex:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/Pfn/ex;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/Pfn/ex;->oJ(Lcom/bytedance/sdk/component/oJ/Xe;)V

    .line 45
    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/jFA/ba;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ZYk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->so:I

    if-lt v0, v1, :cond_2

    .line 18
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 19
    instance-of v1, v0, Landroid/content/MutableContextWrapper;

    if-eqz v1, :cond_1

    .line 20
    move-object v1, v0

    check-cast v1, Landroid/content/MutableContextWrapper;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->eZI()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 22
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ZYk:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 24
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 25
    instance-of v1, v0, Landroid/content/MutableContextWrapper;

    if-eqz v1, :cond_3

    .line 26
    move-object v1, v0

    check-cast v1, Landroid/content/MutableContextWrapper;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 27
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setRecycler(Z)V

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ZYk:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ex()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    return-void

    .line 30
    :goto_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ex()I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/jFA/ba;Lcom/bytedance/sdk/component/adexpress/Pfn/ZYk;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->tB:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/Pfn/tB;

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/component/adexpress/Pfn/tB;->oJ(Lcom/bytedance/sdk/component/adexpress/Pfn/ZYk;)V

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/Pfn/tB;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/component/adexpress/Pfn/tB;-><init>(Lcom/bytedance/sdk/component/adexpress/Pfn/ZYk;)V

    .line 34
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->tB:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :goto_0
    const-string p2, "SDK_INJECT_GLOBAL"

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/component/jFA/ba;->oJ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public tB()I
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public tB(Lcom/bytedance/sdk/component/jFA/ba;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->cFZ(Lcom/bytedance/sdk/component/jFA/ba;)V

    .line 2
    const-string v0, "SDK_INJECT_GLOBAL"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->b_(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ba(Lcom/bytedance/sdk/component/jFA/ba;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ex(Lcom/bytedance/sdk/component/jFA/ba;)V

    return-void
.end method
