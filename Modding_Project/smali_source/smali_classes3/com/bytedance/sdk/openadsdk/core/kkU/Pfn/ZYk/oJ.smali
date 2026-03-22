.class public Lcom/bytedance/sdk/openadsdk/core/kkU/Pfn/ZYk/oJ;
.super Lcom/bytedance/adsdk/ugeno/ex/ex/tB;
.source "SourceFile"


# instance fields
.field private dLZ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/core/kkU/Pfn/ZYk/oJ;)Lcom/bytedance/adsdk/ugeno/ex/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->tB:Lcom/bytedance/adsdk/ugeno/ex/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/kkU/Pfn/ZYk/oJ;)Lcom/bytedance/adsdk/ugeno/ex/dLZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ:Lcom/bytedance/adsdk/ugeno/ex/dLZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/core/kkU/Pfn/ZYk/oJ;)Lcom/bytedance/adsdk/ugeno/ex/dLZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ:Lcom/bytedance/adsdk/ugeno/ex/dLZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic cFZ(Lcom/bytedance/sdk/openadsdk/core/kkU/Pfn/ZYk/oJ;)Lcom/bytedance/adsdk/ugeno/ex/dLZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ:Lcom/bytedance/adsdk/ugeno/ex/dLZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic dLZ(Lcom/bytedance/sdk/openadsdk/core/kkU/Pfn/ZYk/oJ;)Lcom/bytedance/adsdk/ugeno/ex/dLZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ:Lcom/bytedance/adsdk/ugeno/ex/dLZ;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/core/kkU/Pfn/ZYk/oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ba:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic jFA(Lcom/bytedance/sdk/openadsdk/core/kkU/Pfn/ZYk/oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ba:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic kkU(Lcom/bytedance/sdk/openadsdk/core/kkU/Pfn/ZYk/oJ;)Lcom/bytedance/adsdk/ugeno/ex/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->tB:Lcom/bytedance/adsdk/ugeno/ex/ba;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/kkU/Pfn/ZYk/oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/Pfn/ZYk/oJ;->dLZ:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic so(Lcom/bytedance/sdk/openadsdk/core/kkU/Pfn/ZYk/oJ;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/kkU/Pfn/ZYk/oJ;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public varargs oJ([Ljava/lang/Object;)Z
    .locals 3

    .line 2
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->Pfn:Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->Pfn:Ljava/util/Map;

    const-string v1, "id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->Pfn:Ljava/util/Map;

    const-string v2, "state"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/Pfn/ZYk/oJ;->dLZ:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-virtual {v1, v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ZYk(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    .line 7
    :cond_2
    invoke-virtual {v1, p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ex(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object p1

    .line 8
    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/oJ/oJ;

    if-eqz v1, :cond_3

    .line 9
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/oJ/oJ;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/kkU/Pfn/ZYk/oJ$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/Pfn/ZYk/oJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/kkU/Pfn/ZYk/oJ;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/oJ/oJ;->oJ(Landroid/animation/AnimatorListenerAdapter;)V

    :cond_3
    :goto_0
    return v0
.end method
