.class public Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;

.field final oJ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ:Ljava/util/Set;

    .line 10
    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/Pfn;->oJ(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private Pfn()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/utils/jFA;->ZYk()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private ZYk(I)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;

    if-eqz v0, :cond_0

    .line 26
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;->ZYk(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private ZYk(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ:Ljava/util/Set;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;->oJ(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ:Ljava/util/Set;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;->oJ(Ljava/util/Set;)V

    .line 20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method private ZYk(Landroid/webkit/WebView;)V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/so;->oJ(Landroid/webkit/WebView;)Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    .line 4
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "createWebViewSession failed : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v1, "scene"

    const-string v2, "createWebViewSession"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string v1, "message"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/Pfn;->oJ(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->cFZ()V

    return-void
.end method

.method private ZYk(Z)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;

    if-eqz v0, :cond_0

    .line 24
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;->oJ(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private ZYk(ZF)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;->oJ(ZF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private ba()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;->ZYk()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    :catchall_0
    :cond_0
    return-void
.end method

.method private cFZ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;->ex()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    :cond_0
    return-void
.end method

.method public static oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 1

    .line 8
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;-><init>()V

    return-object v0
.end method

.method private oJ(Landroid/view/View;Ljava/util/Set;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/kkU;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            ")V"
        }
    .end annotation

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;

    if-nez v0, :cond_0

    .line 20
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/so;->oJ(Landroid/view/View;Ljava/util/Set;)Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;

    .line 21
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Br()Z

    move-result p1

    if-nez p1, :cond_0

    .line 22
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ex()Ljava/lang/String;

    move-result-object p1

    const-string p2, "track_create"

    const/4 v0, 0x0

    invoke-static {p3, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    .line 23
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "createVideoSession failed : "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 25
    const-string p3, "scene"

    const-string v0, "createVideoSession"

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string p3, "message"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/Pfn;->oJ(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ba()V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk(I)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;Landroid/view/View;Ljava/util/Set;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(Landroid/view/View;Ljava/util/Set;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;Landroid/webkit/WebView;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;Z)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk(Z)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;ZF)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk(ZF)V

    return-void
.end method

.method private so()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;->tB()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->so()V

    return-void
.end method


# virtual methods
.method public ZYk()V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 9
    invoke-static {}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ZYk/oJ;->oJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ba()V

    return-void

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->Pfn()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ZYk(JZ)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;

    if-eqz v0, :cond_0

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    .line 22
    :try_start_0
    invoke-virtual {v0, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;->oJ(FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public ex()V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ZYk/oJ;->oJ()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->so()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->Pfn()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$7;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public oJ(I)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 40
    invoke-static {}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ZYk/oJ;->oJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk(I)V

    return-void

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->Pfn()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public oJ(JZ)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 34
    invoke-static {}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ZYk/oJ;->oJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk(JZ)V

    return-void

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->Pfn()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;JZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public oJ(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;

    if-eqz v0, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->ZYk()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_4

    if-nez v0, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    invoke-static {}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ZYk/oJ;->oJ()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(Landroid/view/View;Ljava/util/Set;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    return-void

    .line 18
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->Pfn()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$3;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;Landroid/view/View;Ljava/util/Set;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public oJ(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 31
    invoke-static {}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ZYk/oJ;->oJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    return-void

    .line 33
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->Pfn()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public oJ(Landroid/webkit/WebView;)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    if-eqz p1, :cond_2

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/cFZ;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ZYk/oJ;->oJ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk(Landroid/webkit/WebView;)V

    return-void

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->Pfn()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public oJ(Z)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 37
    invoke-static {}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ZYk/oJ;->oJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk(Z)V

    return-void

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->Pfn()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$10;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public oJ(ZF)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 28
    invoke-static {}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ZYk/oJ;->oJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk(ZF)V

    return-void

    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->Pfn()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;ZF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public tB()V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    invoke-static {}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ZYk/oJ;->oJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->cFZ()V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->Pfn()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
