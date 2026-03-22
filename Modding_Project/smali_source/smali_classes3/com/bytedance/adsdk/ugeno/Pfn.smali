.class public Lcom/bytedance/adsdk/ugeno/Pfn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile oJ:Lcom/bytedance/adsdk/ugeno/Pfn;


# instance fields
.field private Pfn:Lcom/bytedance/adsdk/ugeno/tB/oJ;

.field private ZYk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/core/ZYk;",
            ">;"
        }
    .end annotation
.end field

.field private ba:Lcom/bytedance/adsdk/ugeno/core/ZYk/ex;

.field private cFZ:Lcom/bytedance/adsdk/ugeno/core/oJ/oJ;

.field private ex:Lcom/bytedance/adsdk/ugeno/oJ;

.field private tB:Lcom/bytedance/adsdk/ugeno/core/tB;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private ba()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn;->ZYk:Ljava/util/List;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Pfn;->tB:Lcom/bytedance/adsdk/ugeno/core/tB;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v1}, Lcom/bytedance/adsdk/ugeno/core/tB;->oJ()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn;->ZYk:Ljava/util/List;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/core/ex;->oJ(Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static oJ()Lcom/bytedance/adsdk/ugeno/Pfn;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/adsdk/ugeno/Pfn;->oJ:Lcom/bytedance/adsdk/ugeno/Pfn;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/bytedance/adsdk/ugeno/Pfn;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/bytedance/adsdk/ugeno/Pfn;->oJ:Lcom/bytedance/adsdk/ugeno/Pfn;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/bytedance/adsdk/ugeno/Pfn;

    invoke-direct {v1}, Lcom/bytedance/adsdk/ugeno/Pfn;-><init>()V

    sput-object v1, Lcom/bytedance/adsdk/ugeno/Pfn;->oJ:Lcom/bytedance/adsdk/ugeno/Pfn;

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
    sget-object v0, Lcom/bytedance/adsdk/ugeno/Pfn;->oJ:Lcom/bytedance/adsdk/ugeno/Pfn;

    return-object v0
.end method


# virtual methods
.method public Pfn()Lcom/bytedance/adsdk/ugeno/core/oJ/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn;->cFZ:Lcom/bytedance/adsdk/ugeno/core/oJ/oJ;

    .line 2
    .line 3
    return-object v0
.end method

.method public ZYk()Lcom/bytedance/adsdk/ugeno/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn;->ex:Lcom/bytedance/adsdk/ugeno/oJ;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()Lcom/bytedance/adsdk/ugeno/core/ZYk/ex;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn;->ba:Lcom/bytedance/adsdk/ugeno/core/ZYk/ex;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/core/tB;Lcom/bytedance/adsdk/ugeno/oJ;)V
    .locals 0

    .line 7
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/Pfn;->tB:Lcom/bytedance/adsdk/ugeno/core/tB;

    .line 8
    iput-object p3, p0, Lcom/bytedance/adsdk/ugeno/Pfn;->ex:Lcom/bytedance/adsdk/ugeno/oJ;

    .line 9
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/Pfn;->ba()V

    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/ex/so;)V
    .locals 2

    .line 11
    new-instance v0, Lcom/bytedance/adsdk/ugeno/ex/oJ;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/ex/oJ;-><init>()V

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ex/oJ;->oJ()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_0

    .line 13
    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/ex/so;->oJ()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_0
    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/ex/kkU;->oJ(Ljava/util/List;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/ex/tB;)V
    .locals 2

    .line 15
    new-instance v0, Lcom/bytedance/adsdk/ugeno/ex/Pfn;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/ex/Pfn;-><init>()V

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ex/Pfn;->oJ()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_0

    .line 17
    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/ex/tB;->oJ()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    :cond_0
    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/ex/ex;->oJ(Ljava/util/List;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/tB/oJ;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Pfn;->Pfn:Lcom/bytedance/adsdk/ugeno/tB/oJ;

    return-void
.end method

.method public tB()Lcom/bytedance/adsdk/ugeno/tB/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Pfn;->Pfn:Lcom/bytedance/adsdk/ugeno/tB/oJ;

    .line 2
    .line 3
    return-object v0
.end method
