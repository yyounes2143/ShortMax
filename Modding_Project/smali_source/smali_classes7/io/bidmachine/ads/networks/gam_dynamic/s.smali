.class Lio/bidmachine/ads/networks/gam_dynamic/s;
.super Ljava/lang/Object;
.source "GAMNetworkImpl.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam_dynamic/o;


# static fields
.field private static final f:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/ads/networks/gam_dynamic/g;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final a:Lfr/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lim/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final d:Lio/bidmachine/ads/networks/gam_dynamic/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final e:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/AdsFormat;",
            "Lio/bidmachine/ads/networks/gam_dynamic/j0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/ads/networks/gam_dynamic/s;->f:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/bidmachine/ads/networks/gam_dynamic/s;->g:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lhm/s;Lio/bidmachine/protobuf/Waterfall$Context;Lim/b;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lhm/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/protobuf/Waterfall$Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lim/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p2}, Lhm/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/ads/networks/gam_dynamic/s;->n(Ljava/lang/String;)Lio/bidmachine/ads/networks/gam_dynamic/g;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 2
    invoke-direct/range {v1 .. v6}, Lio/bidmachine/ads/networks/gam_dynamic/s;-><init>(Landroid/content/Context;Lhm/s;Lio/bidmachine/protobuf/Waterfall$Context;Lim/b;Lio/bidmachine/ads/networks/gam_dynamic/g;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lhm/s;Lio/bidmachine/protobuf/Waterfall$Context;Lim/b;Lio/bidmachine/ads/networks/gam_dynamic/g;)V
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lhm/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/protobuf/Waterfall$Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lim/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/bidmachine/ads/networks/gam_dynamic/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v10, p0

    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lfr/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lhm/s;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfr/j;-><init>(Ljava/lang/String;)V

    iput-object v0, v10, Lio/bidmachine/ads/networks/gam_dynamic/s;->a:Lfr/j;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v10, Lio/bidmachine/ads/networks/gam_dynamic/s;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v11, p4

    .line 6
    iput-object v11, v10, Lio/bidmachine/ads/networks/gam_dynamic/s;->c:Lim/b;

    move-object/from16 v12, p5

    .line 7
    iput-object v12, v10, Lio/bidmachine/ads/networks/gam_dynamic/s;->d:Lio/bidmachine/ads/networks/gam_dynamic/g;

    .line 8
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/bidmachine/AdsFormat;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, v10, Lio/bidmachine/ads/networks/gam_dynamic/s;->e:Ljava/util/Map;

    .line 9
    new-instance v13, Lio/bidmachine/ads/networks/gam_dynamic/k;

    invoke-virtual/range {p3 .. p3}, Lio/bidmachine/protobuf/Waterfall$Context;->getEventConfig()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    invoke-direct {v13, v0}, Lio/bidmachine/ads/networks/gam_dynamic/k;-><init>(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)V

    .line 10
    new-instance v14, Lio/bidmachine/ads/networks/gam_dynamic/a0;

    invoke-direct {v14}, Lio/bidmachine/ads/networks/gam_dynamic/a0;-><init>()V

    .line 11
    invoke-virtual/range {p3 .. p3}, Lio/bidmachine/protobuf/Waterfall$Context;->getConfigurationsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lio/bidmachine/protobuf/Waterfall$Configuration;

    .line 12
    invoke-virtual {v4}, Lio/bidmachine/protobuf/Waterfall$Configuration;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/AdsFormat;->byRemoteName(Ljava/lang/String;)Lio/bidmachine/AdsFormat;

    move-result-object v9

    if-nez v9, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object v8, v10, Lio/bidmachine/ads/networks/gam_dynamic/s;->e:Ljava/util/Map;

    new-instance v7, Lio/bidmachine/ads/networks/gam_dynamic/j0;

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v9

    move-object/from16 v5, p4

    move-object/from16 v6, p0

    move-object v10, v7

    move-object/from16 v7, p5

    move-object v11, v8

    move-object v8, v13

    move-object v12, v9

    move-object v9, v14

    invoke-direct/range {v0 .. v9}, Lio/bidmachine/ads/networks/gam_dynamic/j0;-><init>(Landroid/content/Context;Lhm/s;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration;Lim/b;Lio/bidmachine/ads/networks/gam_dynamic/o;Lio/bidmachine/ads/networks/gam_dynamic/g;Lio/bidmachine/ads/networks/gam_dynamic/j;Lhm/u;)V

    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic h(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/ads/networks/gam_dynamic/s;->l(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/ads/networks/gam_dynamic/s;->m(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/ads/networks/gam_dynamic/s;->k(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic k(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdUnit;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "Fail to load banner (Can\'t find reserved ad by network ad unit id - %s)"

    .line 10
    .line 11
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static synthetic l(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdUnit;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "Fail to load interstitial (Can\'t find reserved ad by network ad unit id - %s)"

    .line 10
    .line 11
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static synthetic m(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdUnit;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "Fail to load rewarded (Can\'t find reserved ad by network ad unit id - %s)"

    .line 10
    .line 11
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static n(Ljava/lang/String;)Lio/bidmachine/ads/networks/gam_dynamic/g;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/ads/networks/gam_dynamic/s;->f:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lio/bidmachine/ads/networks/gam_dynamic/g;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    sget-object v1, Lio/bidmachine/ads/networks/gam_dynamic/s;->g:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lio/bidmachine/ads/networks/gam_dynamic/g;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    monitor-exit v1

    .line 24
    return-object v2

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance v2, Lio/bidmachine/ads/networks/gam_dynamic/g;

    .line 28
    .line 29
    invoke-direct {v2, p0}, Lio/bidmachine/ads/networks/gam_dynamic/g;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    monitor-exit v1

    .line 36
    return-object v2

    .line 37
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    invoke-static {}, Lio/bidmachine/AdsFormat;->values()[Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v3, v1, :cond_0

    .line 9
    .line 10
    aget-object v4, v0, v3

    .line 11
    .line 12
    invoke-virtual {p0, v4, v2}, Lio/bidmachine/ads/networks/gam_dynamic/s;->d(Lio/bidmachine/AdsFormat;Z)Z

    .line 13
    .line 14
    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void
.end method

.method public b(Lio/bidmachine/NetworkAdUnit;)V
    .locals 1
    .param p1    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/s;->d:Lio/bidmachine/ads/networks/gam_dynamic/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/g;->z(Lio/bidmachine/NetworkAdUnit;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/z;)V
    .locals 2
    .param p1    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam_dynamic/z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/s;->d:Lio/bidmachine/ads/networks/gam_dynamic/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/g;->k(Lio/bidmachine/NetworkAdUnit;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/s;->a:Lfr/j;

    .line 10
    .line 11
    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/r;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lio/bidmachine/ads/networks/gam_dynamic/r;-><init>(Lio/bidmachine/NetworkAdUnit;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "Can\'t find reserved InternalAd by NetworkAdUnit"

    .line 20
    .line 21
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p2, v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/s;->o(Lio/bidmachine/ads/networks/gam_dynamic/u;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lfr/a;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    instance-of p1, v0, Lhm/r;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->H(Lhm/m;)V

    .line 35
    .line 36
    .line 37
    check-cast v0, Lhm/r;

    .line 38
    .line 39
    invoke-interface {p2, v0}, Lio/bidmachine/ads/networks/gam_dynamic/u;->a(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string p1, "InternalAd object has an incompatible ad type"

    .line 44
    .line 45
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p2, v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/s;->o(Lio/bidmachine/ads/networks/gam_dynamic/u;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lfr/a;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public d(Lio/bidmachine/AdsFormat;Z)Z
    .locals 1
    .param p1    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/s;->e:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/bidmachine/ads/networks/gam_dynamic/j0;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-virtual {p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->q(Z)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method public e(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/y;)V
    .locals 2
    .param p1    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam_dynamic/y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/s;->d:Lio/bidmachine/ads/networks/gam_dynamic/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/g;->k(Lio/bidmachine/NetworkAdUnit;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/s;->a:Lfr/j;

    .line 10
    .line 11
    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/p;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lio/bidmachine/ads/networks/gam_dynamic/p;-><init>(Lio/bidmachine/NetworkAdUnit;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "Can\'t find reserved InternalAd by NetworkAdUnit"

    .line 20
    .line 21
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p2, v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/s;->o(Lio/bidmachine/ads/networks/gam_dynamic/u;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lfr/a;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    instance-of p1, v0, Lhm/p;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->H(Lhm/m;)V

    .line 35
    .line 36
    .line 37
    check-cast v0, Lhm/p;

    .line 38
    .line 39
    invoke-interface {p2, v0}, Lio/bidmachine/ads/networks/gam_dynamic/u;->a(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string p1, "InternalAd object has an incompatible ad type"

    .line 44
    .line 45
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p2, v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/s;->o(Lio/bidmachine/ads/networks/gam_dynamic/u;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lfr/a;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public f(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/AdsFormat;)Lhm/j;
    .locals 1
    .param p1    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/s;->d:Lio/bidmachine/ads/networks/gam_dynamic/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/g;->v(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/AdsFormat;)Lhm/j;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lio/bidmachine/AdsFormat;->getParent()Lio/bidmachine/AdsFormat;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/s;->d:Lio/bidmachine/ads/networks/gam_dynamic/g;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/g;->v(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/AdsFormat;)Lhm/j;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    return-object v0
.end method

.method public g(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/w;)V
    .locals 2
    .param p1    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam_dynamic/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/s;->d:Lio/bidmachine/ads/networks/gam_dynamic/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/g;->k(Lio/bidmachine/NetworkAdUnit;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/s;->a:Lfr/j;

    .line 10
    .line 11
    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/q;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lio/bidmachine/ads/networks/gam_dynamic/q;-><init>(Lio/bidmachine/NetworkAdUnit;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "Can\'t find reserved InternalAd by NetworkAdUnit"

    .line 20
    .line 21
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p2, v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/s;->o(Lio/bidmachine/ads/networks/gam_dynamic/u;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lfr/a;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    instance-of p1, v0, Lio/bidmachine/ads/networks/gam_dynamic/v;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->H(Lhm/m;)V

    .line 35
    .line 36
    .line 37
    check-cast v0, Lio/bidmachine/ads/networks/gam_dynamic/v;

    .line 38
    .line 39
    invoke-interface {p2, v0}, Lio/bidmachine/ads/networks/gam_dynamic/u;->a(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string p1, "InternalAd object has an incompatible ad type"

    .line 44
    .line 45
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p2, v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/s;->o(Lio/bidmachine/ads/networks/gam_dynamic/u;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lfr/a;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/s;->c:Lim/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lim/b;->getVersion()Llr/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Llr/a;->toString()Ljava/lang/String;

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
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/s;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/s;->c:Lim/b;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lim/b;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    :catchall_0
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/s;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method o(Lio/bidmachine/ads/networks/gam_dynamic/u;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lfr/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam_dynamic/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ads/networks/gam_dynamic/u<",
            "*>;",
            "Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;",
            "Lfr/a;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->i()V

    .line 4
    .line 5
    .line 6
    :cond_0
    if-eqz p3, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    sget-object p3, Lfr/a;->q:Lfr/a;

    .line 10
    .line 11
    :goto_0
    invoke-interface {p1, p3}, Lio/bidmachine/ads/networks/gam_dynamic/u;->onAdLoadFailed(Lfr/a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
