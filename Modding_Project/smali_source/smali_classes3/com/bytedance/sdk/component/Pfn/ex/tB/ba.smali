.class public Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;
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

.field private cFZ:Ljava/util/concurrent/ExecutorService;

.field private volatile ex:Lcom/bytedance/sdk/component/Pfn/Ry;

.field private jFA:Landroid/content/Context;

.field private oJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;",
            ">;>;"
        }
    .end annotation
.end field

.field private so:Ljava/util/concurrent/ExecutorService;

.field private volatile tB:Lcom/bytedance/sdk/component/Pfn/si;


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
    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->oJ:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->Pfn:Ljava/util/Map;

    .line 17
    .line 18
    invoke-static {p2}, Lcom/bytedance/sdk/component/Pfn/ex/tB/cFZ;->oJ(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/bytedance/sdk/component/Pfn/PiB;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->ZYk:Lcom/bytedance/sdk/component/Pfn/PiB;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->jFA:Landroid/content/Context;

    .line 27
    .line 28
    invoke-interface {p2}, Lcom/bytedance/sdk/component/Pfn/PiB;->so()Lcom/bytedance/sdk/component/Pfn/ZYk;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/component/Pfn/ZYk;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private dLZ()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->ZYk:Lcom/bytedance/sdk/component/Pfn/PiB;

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
    invoke-static {}, Lcom/bytedance/sdk/component/Pfn/ex/oJ/ZYk;->oJ()Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method private ex(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/tB;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->ZYk:Lcom/bytedance/sdk/component/Pfn/PiB;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/PiB;->cFZ()Lcom/bytedance/sdk/component/Pfn/tB;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/oJ/ZYk;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/ZYk;->so()Ljava/io/File;

    move-result-object v1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/ZYk;->oJ()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/oJ/ZYk;-><init>(Ljava/io/File;J)V

    return-object v0
.end method

.method private kkU()Lcom/bytedance/sdk/component/Pfn/ex;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->ZYk:Lcom/bytedance/sdk/component/Pfn/PiB;

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


# virtual methods
.method public Pfn()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->ZYk:Lcom/bytedance/sdk/component/Pfn/PiB;

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
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->cFZ:Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->dLZ()Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->cFZ:Ljava/util/concurrent/ExecutorService;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->cFZ:Ljava/util/concurrent/ExecutorService;

    .line 27
    .line 28
    return-object v0
.end method

.method public ZYk()Lcom/bytedance/sdk/component/Pfn/Ry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->ex:Lcom/bytedance/sdk/component/Pfn/Ry;

    return-object v0
.end method

.method public ZYk(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/Ry;
    .locals 3

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk;->kkU()Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->ex:Lcom/bytedance/sdk/component/Pfn/Ry;

    if-nez v0, :cond_2

    .line 4
    const-class v0, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk/ZYk;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->ex:Lcom/bytedance/sdk/component/Pfn/Ry;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk/ZYk;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/ZYk;->ZYk()I

    move-result v2

    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/ZYk;->ex()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk/ZYk;-><init>(II)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->ex:Lcom/bytedance/sdk/component/Pfn/Ry;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p1

    .line 8
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->ex:Lcom/bytedance/sdk/component/Pfn/Ry;

    return-object p1
.end method

.method public ba()Lcom/bytedance/sdk/component/Pfn/oq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->ZYk:Lcom/bytedance/sdk/component/Pfn/PiB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/PiB;->jFA()Lcom/bytedance/sdk/component/Pfn/oq;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public cFZ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->ZYk:Lcom/bytedance/sdk/component/Pfn/PiB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/PiB;->kkU()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public ex()Lcom/bytedance/sdk/component/Pfn/ex;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->ba:Lcom/bytedance/sdk/component/Pfn/ex;

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->kkU()Lcom/bytedance/sdk/component/Pfn/ex;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->ba:Lcom/bytedance/sdk/component/Pfn/ex;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->ba:Lcom/bytedance/sdk/component/Pfn/ex;

    return-object v0
.end method

.method public jFA()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->oJ:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->jFA:Landroid/content/Context;

    return-object v0
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;)Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/ZYk;
    .locals 8

    .line 11
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->ex()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12
    sget-object v0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/ZYk;->oJ:Landroid/widget/ImageView$ScaleType;

    :cond_0
    move-object v4, v0

    .line 13
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->dLZ()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_1

    .line 14
    sget-object v0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/ZYk;->ZYk:Landroid/graphics/Bitmap$Config;

    :cond_1
    move-object v5, v0

    .line 15
    new-instance v0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/ZYk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->ZYk()I

    move-result v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->tB()I

    move-result v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->ba()I

    move-result v6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->cFZ()I

    move-result v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/ZYk;-><init>(IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;II)V

    return-object v0
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/si;
    .locals 4

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk;->kkU()Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->tB:Lcom/bytedance/sdk/component/Pfn/si;

    if-nez v0, :cond_2

    .line 4
    const-class v0, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk/tB;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->tB:Lcom/bytedance/sdk/component/Pfn/si;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk/tB;

    new-instance v2, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk/oJ;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/ZYk;->ZYk()I

    move-result v3

    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/ZYk;->tB()I

    move-result p1

    invoke-direct {v2, v3, p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk/oJ;-><init>(II)V

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk/tB;-><init>(Lcom/bytedance/sdk/component/Pfn/si;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->tB:Lcom/bytedance/sdk/component/Pfn/si;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p1

    .line 8
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->tB:Lcom/bytedance/sdk/component/Pfn/si;

    return-object p1
.end method

.method public oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/Pfn/tB;
    .locals 1

    .line 9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk;->oJ(Ljava/io/File;)Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->tB(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/tB;

    move-result-object p1

    return-object p1
.end method

.method public so()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->ZYk:Lcom/bytedance/sdk/component/Pfn/PiB;

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
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/QSm;->ZYk()Ljava/util/concurrent/ExecutorService;

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
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->so:Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lcom/bytedance/sdk/component/Pfn/ex/oJ/ZYk;->oJ()Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->so:Ljava/util/concurrent/ExecutorService;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->so:Ljava/util/concurrent/ExecutorService;

    .line 27
    .line 28
    return-object v0
.end method

.method public tB(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/tB;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk;->kkU()Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/ZYk;->so()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->Pfn:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/Pfn/tB;

    if-nez v1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->ex(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/tB;

    move-result-object v1

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->Pfn:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->Pfn:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
