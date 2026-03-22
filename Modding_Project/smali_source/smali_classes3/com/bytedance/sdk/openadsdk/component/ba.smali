.class public Lcom/bytedance/sdk/openadsdk/component/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/ba$tB;,
        Lcom/bytedance/sdk/openadsdk/component/ba$oJ;,
        Lcom/bytedance/sdk/openadsdk/component/ba$ZYk;
    }
.end annotation


# static fields
.field private static ZYk:Ljava/lang/String; = "openad_image_cache"

.field private static oJ:Ljava/lang/String; = "/openad_image_cache"

.field private static volatile tB:Lcom/bytedance/sdk/openadsdk/component/ba;


# instance fields
.field private final Pfn:Lcom/bytedance/sdk/openadsdk/core/Id;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/Id<",
            "Lcom/bytedance/sdk/openadsdk/ex/oJ;",
            ">;"
        }
    .end annotation
.end field

.field private final ba:Landroid/content/Context;

.field private final cFZ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private final ex:Lcom/bytedance/sdk/openadsdk/ZYk/ZYk;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

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
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba;->cFZ:Ljava/util/Map;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba;->ba:Landroid/content/Context;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba;->ba:Landroid/content/Context;

    .line 25
    .line 26
    :goto_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/ZYk/ZYk;

    .line 27
    .line 28
    const/16 v0, 0x8

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    const/16 v2, 0xa

    .line 32
    .line 33
    invoke-direct {p1, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/ZYk/ZYk;-><init>(IIZ)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba;->ex:Lcom/bytedance/sdk/openadsdk/ZYk/ZYk;

    .line 37
    .line 38
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->tB()Lcom/bytedance/sdk/openadsdk/core/Id;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba;->Pfn:Lcom/bytedance/sdk/openadsdk/core/Id;

    .line 43
    .line 44
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->ZYk()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, "_p"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    sput-object p1, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ:Ljava/lang/String;

    .line 70
    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/ba;->ZYk:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    sput-object p1, Lcom/bytedance/sdk/openadsdk/component/ba;->ZYk:Ljava/lang/String;

    .line 89
    .line 90
    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/ba$1;

    .line 91
    .line 92
    const-string v0, "tt_openad_materialMeta_new"

    .line 93
    .line 94
    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/component/ba$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/ba;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/common/oJ;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method private ZYk(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba;->cFZ:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ba;->cFZ:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/nke;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V
    .locals 8
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/model/cY;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    move-result v2

    .line 6
    new-instance v7, Lcom/bytedance/sdk/openadsdk/component/ba$10;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/ba$10;-><init>(Lcom/bytedance/sdk/openadsdk/component/ba;ILcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/nke;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-virtual {p0, p1, p3, v7}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/nke;Lcom/bytedance/sdk/openadsdk/component/ba$oJ;)V

    return-void
.end method

.method public static oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/ba;
    .locals 2

    .line 3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/ba;->tB:Lcom/bytedance/sdk/openadsdk/component/ba;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/bytedance/sdk/openadsdk/component/ba;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/ba;->tB:Lcom/bytedance/sdk/openadsdk/component/ba;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/ba;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/ba;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/component/ba;->tB:Lcom/bytedance/sdk/openadsdk/component/ba;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    .line 8
    :cond_1
    :goto_2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/component/ba;->tB:Lcom/bytedance/sdk/openadsdk/component/ba;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/ba;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/ba;->ZYk(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/ba;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/nke;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/nke;)V

    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/nke;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V
    .locals 8
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/model/cY;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    move-result v2

    .line 50
    new-instance v7, Lcom/bytedance/sdk/openadsdk/component/ba$9;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/ba$9;-><init>(Lcom/bytedance/sdk/openadsdk/component/ba;ILcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/nke;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-virtual {p0, p1, p2, p3, v7}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/nke;Lcom/bytedance/sdk/openadsdk/component/ba$ZYk;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/component/ba$tB;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/component/ba$tB;I)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/component/ba$tB;I)V
    .locals 4

    .line 10
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->kkU()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->tB()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v1

    .line 14
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ZYk()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/Pfn/kkU;->ZYk(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v1

    .line 15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->Pfn(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/Pfn/kkU;->Pfn(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v1

    .line 16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/Pfn/kkU;->ex(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v1

    if-lez p2, :cond_1

    .line 17
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    const/4 v2, 0x2

    .line 18
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/Pfn/kkU;->tB(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/ba$5;

    invoke-direct {v3, p2}, Lcom/bytedance/sdk/openadsdk/component/ba$5;-><init>(I)V

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Lcom/bytedance/sdk/component/Pfn/so;)Lcom/bytedance/sdk/component/Pfn/kkU;

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 19
    invoke-interface {v1, p2}, Lcom/bytedance/sdk/component/Pfn/kkU;->tB(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    .line 20
    :goto_0
    new-instance p2, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/ba$6;

    invoke-direct {v2, p1}, Lcom/bytedance/sdk/openadsdk/component/ba$6;-><init>(Lcom/bytedance/sdk/openadsdk/component/ba$tB;)V

    invoke-direct {p2, p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/component/Pfn/eZI;)V

    invoke-interface {v1, p2}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Lcom/bytedance/sdk/component/Pfn/eZI;)Lcom/bytedance/sdk/component/Pfn/jFA;

    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/nke;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 36
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz p2, :cond_1

    .line 38
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Xe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/Pfn/oJ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    move-result v1

    invoke-direct {v0, v1, p2, p1}, Lcom/bytedance/sdk/openadsdk/component/Pfn/oJ;-><init>(ILcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/Pfn/oJ;)V

    .line 41
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Pfn/oJ;->ZYk()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/component/ex/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;ILcom/bytedance/sdk/openadsdk/core/model/nke;)V

    .line 42
    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/component/ba;->ZYk(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void

    .line 43
    :cond_1
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/nke;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    return-void

    .line 45
    :cond_2
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/bytedance/sdk/openadsdk/component/ba;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/nke;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    return-void

    :cond_3
    :goto_0
    const/4 p1, -0x3

    .line 46
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(I)V

    const/4 p1, 0x2

    .line 47
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->tB(I)V

    .line 48
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    return-void
.end method

.method private oJ(Ljava/lang/String;)V
    .locals 2

    .line 95
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/ba$3;

    const-string v1, "opencache"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/component/ba$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/ba;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Lcom/bytedance/sdk/component/so/so;)V

    return-void
.end method

.method private tB(Lcom/bytedance/sdk/openadsdk/AdSlot;)I
    .locals 5

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "material_expiration_time"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tt_openad"

    const-wide/16 v1, -0x1

    invoke-static {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->oJ(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic tB()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/ba;->ZYk:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public Pfn(I)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "material"

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "tt_openad_materialMeta"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->ZYk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->tB()Lcom/bytedance/sdk/openadsdk/core/Id;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Id;->oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    const-string v0, "creatives"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    return-object v1

    .line 48
    :catch_0
    move-exception p1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 51
    .line 52
    .line 53
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-object p1

    .line 55
    :goto_0
    const-string v0, "TTAppOpenAdCacheManager"

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-object v1
.end method

.method public ZYk()Ljava/lang/String;
    .locals 3

    .line 8
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getRootDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v1

    const-string v2, "/"

    if-eqz v1, :cond_0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/ba;->ZYk:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public ZYk(I)V
    .locals 2

    .line 7
    const-string v0, "image_has_cached"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "tt_openad"

    invoke-static {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public ba(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "material"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "tt_openad_materialMeta_new"

    .line 12
    .line 13
    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "tt_openad_materialMeta"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "material_expiration_time"

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "tt_openad"

    .line 40
    .line 41
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "video_has_cached"

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v0, "image_has_cached"

    .line 58
    .line 59
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public ex(I)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/ba;->Pfn(I)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "material_expiration_time"

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "tt_openad"

    .line 16
    .line 17
    const-wide/16 v3, -0x1

    .line 18
    .line 19
    invoke-static {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->oJ(Ljava/lang/String;Ljava/lang/String;J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    const-wide/16 v7, 0x3e8

    .line 28
    .line 29
    div-long/2addr v5, v7

    .line 30
    cmp-long v5, v5, v1

    .line 31
    .line 32
    if-gez v5, :cond_0

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_0
    if-nez v0, :cond_1

    .line 38
    .line 39
    cmp-long v1, v1, v3

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/ba;->ba(I)V

    .line 44
    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/ex/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    const/4 p1, 0x0

    .line 52
    return-object p1
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->dLZ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->dLZ()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->WcQ()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/Pfn;->oJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/cFZ/oJ;->oJ(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public oJ()V
    .locals 4

    .line 114
    :try_start_0
    const-string v0, "tt_openad_materialMeta"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->oJ(Ljava/lang/String;)V

    .line 115
    const-string v0, "tt_openad_materialMeta_new"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->oJ(Ljava/lang/String;)V

    .line 116
    const-string v0, "tt_openad"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->oJ(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba;->ba:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/ba$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/ba$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/ba;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 121
    :try_start_2
    invoke-static {v3}, Lcom/bytedance/sdk/component/utils/cFZ;->tB(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_2
    :cond_0
    return-void
.end method

.method public oJ(I)V
    .locals 2

    .line 93
    const-string v0, "video_has_cached"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "tt_openad"

    invoke-static {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 5

    if-eqz p1, :cond_4

    .line 21
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba;->cFZ:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_1

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 24
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/ba;->tB(Lcom/bytedance/sdk/openadsdk/AdSlot;)I

    move-result v2

    add-int/2addr v1, v2

    if-lez v1, :cond_2

    return-void

    .line 25
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 26
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ba;->cFZ:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/nke;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/nke;-><init>()V

    .line 28
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/wd;->ZYk()Lcom/bytedance/sdk/openadsdk/utils/wd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/nke;->oJ(Lcom/bytedance/sdk/openadsdk/utils/wd;)V

    .line 29
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/HL;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/model/HL;-><init>()V

    .line 30
    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/model/HL;->dLZ:Lcom/bytedance/sdk/openadsdk/core/model/nke;

    const/4 v2, 0x2

    .line 31
    iput v2, v1, Lcom/bytedance/sdk/openadsdk/core/model/HL;->ex:I

    .line 32
    iput v2, v1, Lcom/bytedance/sdk/openadsdk/core/model/HL;->jFA:I

    .line 33
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ZYk;->oJ()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_3

    .line 34
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/ba;->Pfn:Lcom/bytedance/sdk/openadsdk/core/Id;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/component/ba$7;

    invoke-direct {v4, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/ba$7;-><init>(Lcom/bytedance/sdk/openadsdk/component/ba;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/nke;)V

    invoke-interface {v2, p1, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/Id;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/QSm;)V

    return-void

    .line 35
    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/ba;->Pfn:Lcom/bytedance/sdk/openadsdk/core/Id;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/component/ba$8;

    invoke-direct {v4, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/ba$8;-><init>(Lcom/bytedance/sdk/openadsdk/component/ba;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/nke;)V

    invoke-interface {v2, p1, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/Id;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/Id$oJ;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/component/Pfn/oJ;)V
    .locals 2

    .line 94
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ZYk()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/ba$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/ba$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/ba;Lcom/bytedance/sdk/openadsdk/component/Pfn/oJ;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/nke;Lcom/bytedance/sdk/openadsdk/component/ba$ZYk;)V
    .locals 9
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/model/cY;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/wd;->ZYk()Lcom/bytedance/sdk/openadsdk/utils/wd;

    move-result-object v3

    .line 52
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    move-result v2

    .line 53
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->dLZ()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->WcQ()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/Pfn;->oJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/cFZ/oJ;->oJ(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 58
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/component/cFZ/oJ;->oJ(Ljava/io/File;)V

    .line 60
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(I)V

    .line 61
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/utils/wd;->ex()J

    move-result-wide v0

    if-eqz p3, :cond_1

    .line 62
    invoke-virtual {p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/nke;->oJ(J)V

    const/4 p2, 0x1

    .line 63
    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/openadsdk/core/model/nke;->oJ(I)V

    .line 64
    :cond_1
    invoke-interface {p4}, Lcom/bytedance/sdk/openadsdk/component/ba$ZYk;->oJ()V

    const/4 p2, 0x0

    .line 65
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/component/ba$tB;)V

    return-void

    .line 66
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->jr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/Ry;->ex(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 p1, 0x64

    .line 67
    const-string p2, "OnlyWifi"

    invoke-interface {p4, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/ba$ZYk;->oJ(ILjava/lang/String;)V

    return-void

    .line 68
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;

    move-result-object v8

    .line 69
    const-string v0, "material_meta"

    invoke-virtual {v8, v0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    const-string v0, "ad_slot"

    invoke-virtual {v8, v0, p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/ba$11;

    move-object v0, p2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/ba$11;-><init>(Lcom/bytedance/sdk/openadsdk/component/ba;ILcom/bytedance/sdk/openadsdk/utils/wd;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/nke;Lcom/bytedance/sdk/openadsdk/component/ba$ZYk;Ljava/io/File;)V

    invoke-static {v8, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/Pfn/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Lcom/bykv/vk/openvk/oJ/oJ/oJ/Pfn/oJ$oJ;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/nke;Lcom/bytedance/sdk/openadsdk/component/ba$oJ;)V
    .locals 12

    .line 72
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/wd;->ZYk()Lcom/bytedance/sdk/openadsdk/utils/wd;

    move-result-object v3

    .line 73
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    move-result v2

    .line 74
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yB()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    .line 75
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->cFZ()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->ZYk()I

    move-result v7

    .line 78
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->tB()I

    move-result v8

    .line 79
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/bytedance/sdk/component/utils/Pfn;->oJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v1

    .line 80
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p3, :cond_1

    .line 81
    invoke-interface {p3}, Lcom/bytedance/sdk/openadsdk/component/ba$oJ;->oJ()V

    :cond_1
    return-void

    .line 82
    :cond_2
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/component/cFZ/oJ;->ZYk(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 83
    invoke-virtual {p0, v4, v1}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/ba;->ZYk(I)V

    .line 85
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/utils/wd;->ex()J

    move-result-wide v0

    if-eqz p2, :cond_3

    .line 86
    invoke-virtual {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/nke;->oJ(J)V

    const/4 p1, 0x1

    .line 87
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/nke;->oJ(I)V

    :cond_3
    const/4 p1, 0x0

    .line 88
    invoke-interface {p3, p1}, Lcom/bytedance/sdk/openadsdk/component/ba$oJ;->oJ(Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;)V

    return-void

    .line 89
    :cond_4
    new-instance v10, Lcom/bytedance/sdk/openadsdk/Ry/oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->cFZ()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v4, v0}, Lcom/bytedance/sdk/openadsdk/Ry/oJ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v11, Lcom/bytedance/sdk/openadsdk/component/ba$12;

    move-object v0, v11

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/ba$12;-><init>(Lcom/bytedance/sdk/openadsdk/component/ba;ILcom/bytedance/sdk/openadsdk/utils/wd;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/nke;Lcom/bytedance/sdk/openadsdk/component/ba$oJ;)V

    .line 91
    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-static {v10, v7, v8, v11, p1}, Lcom/bytedance/sdk/openadsdk/utils/si;->oJ(Lcom/bytedance/sdk/openadsdk/Ry/oJ;IILcom/bytedance/sdk/openadsdk/utils/si$oJ;Ljava/lang/String;)V

    return-void
.end method

.method public oJ(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 103
    const-string v0, "TTAppOpenAdCacheManager"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Pfn;->oJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_5

    .line 104
    :cond_0
    :goto_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/cFZ/oJ;->ZYk(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 105
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 106
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_1
    move-exception v3

    .line 107
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v3, v4

    goto :goto_2

    :cond_1
    move v3, v1

    :goto_2
    if-nez v3, :cond_4

    .line 108
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, p2, v5}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_4

    .line 109
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->ZYk()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 110
    new-instance p1, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 111
    :cond_3
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".0"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    :goto_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move v4, v3

    :goto_4
    return v4

    .line 113
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public tB(I)Ljava/lang/String;
    .locals 9

    .line 2
    const-string v0, "tt_openad_materialMeta_new"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/common/oJ;

    move-result-object v0

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/oJ;->ZYk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    const-string v1, "material_expiration_time"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tt_openad"

    const-wide/16 v3, -0x1

    invoke-static {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->oJ(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    cmp-long v5, v5, v1

    if-gez v5, :cond_0

    return-object v0

    :cond_0
    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/ba;->ba(I)V

    .line 7
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
