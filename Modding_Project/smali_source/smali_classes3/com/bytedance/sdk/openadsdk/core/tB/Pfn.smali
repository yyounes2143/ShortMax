.class public Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Pfn:I

.field private ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/ba;

.field private final ba:Lcom/bytedance/sdk/openadsdk/core/tB/ba$ZYk;

.field private final cFZ:Landroid/view/View$OnAttachStateChangeListener;

.field private final ex:Ljava/lang/String;

.field private oJ:Lcom/bytedance/sdk/openadsdk/core/model/Id;

.field private final so:Lcom/bytedance/sdk/openadsdk/core/tB/ba$oJ;

.field private tB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/tB/oJ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/Id;Landroid/content/Context;II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->tB:Ljava/util/List;

    .line 10
    .line 11
    const-string v0, "BannerSwiperManager"

    .line 12
    .line 13
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ex:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->Pfn:I

    .line 17
    .line 18
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$1;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ba:Lcom/bytedance/sdk/openadsdk/core/tB/ba$ZYk;

    .line 24
    .line 25
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$2;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->cFZ:Landroid/view/View$OnAttachStateChangeListener;

    .line 31
    .line 32
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$3;

    .line 33
    .line 34
    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;)V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->so:Lcom/bytedance/sdk/openadsdk/core/tB/ba$oJ;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/Id;

    .line 40
    .line 41
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/tB/ba;

    .line 42
    .line 43
    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/tB/ba;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/ba;

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/ba;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->setSwiperWindowFocusChangedListener(Lcom/bytedance/sdk/openadsdk/core/tB/ba$ZYk;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/ba;

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->setSwiperVisibleChangeListener(Lcom/bytedance/sdk/openadsdk/core/tB/ba$oJ;)V

    .line 59
    .line 60
    .line 61
    int-to-float p1, p3

    .line 62
    int-to-float p3, p4

    .line 63
    invoke-virtual {p0, p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ(Landroid/content/Context;FF)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;)Lcom/bytedance/sdk/openadsdk/core/tB/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/ba;

    return-object p0
.end method

.method private Pfn()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/Id;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/Id;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Id;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/Id;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/Id;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Id;->oJ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vertical"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/ba;

    invoke-virtual {v1, v0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    const-string v1, "dot"

    .line 6
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->tB(Z)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/Id;

    .line 8
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Id;->ex()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ex(Z)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/Id;

    .line 9
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Id;->ZYk()I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ(Z)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/Id;

    .line 10
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Id;->jFA()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->tB(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/Id;

    .line 11
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Id;->kkU()I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Pfn(Z)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/Id;

    .line 12
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Id;->so()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ex(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/Id;

    .line 13
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Id;->tB()I

    move-result v2

    if-ne v2, v3, :cond_4

    move v1, v3

    :cond_4
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk(Z)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/Id;

    .line 14
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Id;->Pfn()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->so(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/Id;

    .line 15
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Id;->ba()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->jFA(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/Id;

    .line 16
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Id;->cFZ()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cFZ(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/ba;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->setOnPageChangeListener(Lcom/bytedance/adsdk/ugeno/ba/tB;)V

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->tB:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk(Ljava/util/List;)V

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/ba;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->tB()V

    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ex()V

    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->tB(I)V

    return-void
.end method

.method private ZYk(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/tB/oJ;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/ba;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ(Ljava/lang/Object;)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->Pfn:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->tB:Ljava/util/List;

    return-object p0
.end method

.method private ex()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/Id;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Id;->ZYk()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/ba;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Pfn()V

    .line 4
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->Pfn:I

    if-ltz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ(I)V

    .line 6
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->Pfn:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk(I)V

    :cond_1
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->Pfn:I

    return p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->tB()V

    return-void
.end method

.method private tB()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/Id;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Id;->ZYk()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/ba;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ba()V

    .line 4
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->Pfn:I

    if-ltz v0, :cond_1

    const/4 v0, -0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk(I)V

    :cond_1
    return-void
.end method

.method private tB(I)V
    .locals 2

    .line 6
    :try_start_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->Pfn:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eq v0, p1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->tB:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->ex()V

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->so()V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->tB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->Pfn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->Pfn()V

    return-void
.end method


# virtual methods
.method public ZYk()Landroid/view/View;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/ba;

    return-object v0
.end method

.method public ZYk(I)V
    .locals 2

    const/4 v0, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->tB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-eq v0, p1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->tB:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->jFA()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 6
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public oJ()V
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/ba;

    if-eqz v0, :cond_1

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->tB:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->tB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 18
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->tB:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->cFZ()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->Pfn:I

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/ba;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ex()V

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/ba;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->setSwiperWindowFocusChangedListener(Lcom/bytedance/sdk/openadsdk/core/tB/ba$ZYk;)V

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/ba;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->setSwiperVisibleChangeListener(Lcom/bytedance/sdk/openadsdk/core/tB/ba$oJ;)V

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/ba;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->cFZ:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 24
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/ba;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public oJ(I)V
    .locals 3

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->tB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->tB:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    if-eqz v1, :cond_1

    .line 13
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;II)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/oJ/oJ/ZYk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 14
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method protected oJ(Landroid/content/Context;FF)V
    .locals 0

    .line 3
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result p2

    .line 4
    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result p1

    .line 5
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/ba;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    if-nez p3, :cond_0

    .line 6
    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p3, p2, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 7
    :cond_0
    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    iput p1, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/tB/ba;

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public oJ(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/tB/oJ;",
            ">;)V"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->tB:Ljava/util/List;

    return-void
.end method
