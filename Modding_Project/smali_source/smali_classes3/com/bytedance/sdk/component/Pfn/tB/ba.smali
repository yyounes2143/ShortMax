.class public Lcom/bytedance/sdk/component/Pfn/tB/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Pfn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/Pfn/tB;",
            ">;"
        }
    .end annotation
.end field

.field private final ZYk:Lcom/bytedance/sdk/component/Pfn/PiB;

.field private ba:Lcom/bytedance/sdk/component/Pfn/ex;

.field private cFZ:Lcom/bytedance/sdk/component/Pfn/BTZ;

.field private ex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/Pfn/Ry;",
            ">;"
        }
    .end annotation
.end field

.field private oJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/Pfn/tB/tB;",
            ">;>;"
        }
    .end annotation
.end field

.field private so:Ljava/util/concurrent/ExecutorService;

.field private tB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/Pfn/si;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/Pfn/PiB;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->oJ:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->tB:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->ex:Ljava/util/Map;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->Pfn:Ljava/util/Map;

    .line 31
    .line 32
    invoke-static {p2}, Lcom/bytedance/sdk/component/Pfn/tB/cFZ;->oJ(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/bytedance/sdk/component/Pfn/PiB;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->ZYk:Lcom/bytedance/sdk/component/Pfn/PiB;

    .line 39
    .line 40
    invoke-interface {p2}, Lcom/bytedance/sdk/component/Pfn/PiB;->so()Lcom/bytedance/sdk/component/Pfn/ZYk;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/Pfn/tB/oJ/oJ;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/component/Pfn/ZYk;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private Pfn(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/Ry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->ZYk:Lcom/bytedance/sdk/component/Pfn/PiB;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/PiB;->ba()Lcom/bytedance/sdk/component/Pfn/Ry;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/ZYk;->ZYk()I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk/Pfn;->oJ(I)Lcom/bytedance/sdk/component/Pfn/Ry;

    move-result-object p1

    return-object p1
.end method

.method private ba(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/tB;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->ZYk:Lcom/bytedance/sdk/component/Pfn/PiB;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/PiB;->cFZ()Lcom/bytedance/sdk/component/Pfn/tB;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/Pfn/tB/oJ/oJ/ZYk;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/ZYk;->so()Ljava/io/File;

    move-result-object v1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/ZYk;->oJ()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->cFZ()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/bytedance/sdk/component/Pfn/tB/oJ/oJ/ZYk;-><init>(Ljava/io/File;JLjava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method private dLZ()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->ZYk:Lcom/bytedance/sdk/component/Pfn/PiB;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/PiB;->ZYk()Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/Pfn/oJ/tB;->oJ()Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method private ex(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/si;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->ZYk:Lcom/bytedance/sdk/component/Pfn/PiB;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/PiB;->Pfn()Lcom/bytedance/sdk/component/Pfn/si;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk/oJ;->oJ(Lcom/bytedance/sdk/component/Pfn/si;)Lcom/bytedance/sdk/component/Pfn/si;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/ZYk;->ZYk()I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk/oJ;->oJ(I)Lcom/bytedance/sdk/component/Pfn/si;

    move-result-object p1

    return-object p1
.end method

.method private jFA()Lcom/bytedance/sdk/component/Pfn/ex;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->ZYk:Lcom/bytedance/sdk/component/Pfn/PiB;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/PiB;->ex()Lcom/bytedance/sdk/component/Pfn/ex;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/bytedance/sdk/component/Pfn/ZYk/oJ;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/bytedance/sdk/component/Pfn/ZYk/oJ;-><init>()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object v0
.end method

.method private kkU()Lcom/bytedance/sdk/component/Pfn/BTZ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->ZYk:Lcom/bytedance/sdk/component/Pfn/PiB;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/PiB;->oJ()Lcom/bytedance/sdk/component/Pfn/BTZ;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/Pfn/oJ/ZYk;->oJ()Lcom/bytedance/sdk/component/Pfn/BTZ;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method


# virtual methods
.method public Pfn()Lcom/bytedance/sdk/component/Pfn/oq;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->ZYk:Lcom/bytedance/sdk/component/Pfn/PiB;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/PiB;->jFA()Lcom/bytedance/sdk/component/Pfn/oq;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ZYk(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/Ry;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/component/Pfn/tB/oJ/oJ;->kkU()Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/ZYk;->so()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->ex:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/Pfn/Ry;

    if-nez v1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->Pfn(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/Ry;

    move-result-object v1

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->ex:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public ZYk()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/bytedance/sdk/component/Pfn/Ry;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->ex:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public ba()Lcom/bytedance/sdk/component/Pfn/BTZ;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->cFZ:Lcom/bytedance/sdk/component/Pfn/BTZ;

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->kkU()Lcom/bytedance/sdk/component/Pfn/BTZ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->cFZ:Lcom/bytedance/sdk/component/Pfn/BTZ;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->cFZ:Lcom/bytedance/sdk/component/Pfn/BTZ;

    return-object v0
.end method

.method public cFZ()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->ZYk:Lcom/bytedance/sdk/component/Pfn/PiB;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/PiB;->tB()Lcom/bytedance/sdk/component/Pfn/QSm;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/QSm;->oJ()Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->so:Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->dLZ()Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->so:Ljava/util/concurrent/ExecutorService;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->so:Ljava/util/concurrent/ExecutorService;

    .line 27
    .line 28
    return-object v0
.end method

.method public ex()Lcom/bytedance/sdk/component/Pfn/ex;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->ba:Lcom/bytedance/sdk/component/Pfn/ex;

    if-nez v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->jFA()Lcom/bytedance/sdk/component/Pfn/ex;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->ba:Lcom/bytedance/sdk/component/Pfn/ex;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->ba:Lcom/bytedance/sdk/component/Pfn/ex;

    return-object v0
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/si;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/component/Pfn/tB/oJ/oJ;->kkU()Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/ZYk;->so()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->tB:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/Pfn/si;

    if-nez v1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->ex(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/si;

    move-result-object v1

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->tB:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/tB/tB;)Lcom/bytedance/sdk/component/Pfn/tB/ZYk/oJ;
    .locals 8

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->ex()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10
    sget-object v0, Lcom/bytedance/sdk/component/Pfn/tB/ZYk/oJ;->oJ:Landroid/widget/ImageView$ScaleType;

    :cond_0
    move-object v4, v0

    .line 11
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->dLZ()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_1

    .line 12
    sget-object v0, Lcom/bytedance/sdk/component/Pfn/tB/ZYk/oJ;->ZYk:Landroid/graphics/Bitmap$Config;

    :cond_1
    move-object v5, v0

    .line 13
    new-instance v0, Lcom/bytedance/sdk/component/Pfn/tB/ZYk/oJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->ZYk()I

    move-result v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->tB()I

    move-result v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->ba()I

    move-result v6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->cFZ()I

    move-result v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/component/Pfn/tB/ZYk/oJ;-><init>(IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;II)V

    return-object v0
.end method

.method public oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/Pfn/tB;
    .locals 1

    .line 7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/Pfn/tB/oJ/oJ;->oJ(Ljava/io/File;)Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->tB(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/tB;

    move-result-object p1

    return-object p1
.end method

.method public oJ()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/bytedance/sdk/component/Pfn/si;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->tB:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public so()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/Pfn/tB/tB;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->oJ:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public tB(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/tB;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/component/Pfn/tB/oJ/oJ;->kkU()Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/ZYk;->so()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->Pfn:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/Pfn/tB;

    if-nez v1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->ba(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/tB;

    move-result-object v1

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->Pfn:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public tB()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/bytedance/sdk/component/Pfn/tB;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ba;->Pfn:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
