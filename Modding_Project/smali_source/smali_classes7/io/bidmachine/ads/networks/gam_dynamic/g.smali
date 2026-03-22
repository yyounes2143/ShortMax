.class Lio/bidmachine/ads/networks/gam_dynamic/g;
.super Ljava/lang/Object;
.source "GAMAdManager.java"


# instance fields
.field private final a:Lfr/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final b:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final d:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/NetworkAdUnit;",
            "Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfr/j;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "AdManager"

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v0, p1}, Lfr/j;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->a:Lfr/j;

    .line 27
    .line 28
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->b:Ljava/util/List;

    .line 34
    .line 35
    new-instance p1, Ljava/lang/Object;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->c:Ljava/lang/Object;

    .line 41
    .line 42
    new-instance p1, Ljava/util/WeakHashMap;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->d:Ljava/util/Map;

    .line 48
    .line 49
    new-instance p1, Ljava/lang/Object;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->e:Ljava/lang/Object;

    .line 55
    .line 56
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/ads/networks/gam_dynamic/g;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/g;->q(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/ads/networks/gam_dynamic/g;->r(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lio/bidmachine/ads/networks/gam_dynamic/g;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/g;->n(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lio/bidmachine/ads/networks/gam_dynamic/g;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/g;->o(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/g;->p(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic f(Lio/bidmachine/ads/networks/gam_dynamic/g;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/g;->s(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic n(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->n()Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/g;->j(Lio/bidmachine/AdsFormat;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "Remove ad from caches (%s, size - %s)"

    .line 18
    .line 19
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method private synthetic o(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/NetworkAdUnit;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->n()Lio/bidmachine/AdsFormat;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/g;->l(Lio/bidmachine/AdsFormat;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->n()Lio/bidmachine/AdsFormat;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/g;->j(Lio/bidmachine/AdsFormat;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    filled-new-array {p1, p2, v0, v1}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "Reserve ad (networkAdUnitId - %s, %s, %s / %s)"

    .line 34
    .line 35
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method private static synthetic p(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getPrice()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getPrice()D

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    neg-int p0, p0

    .line 14
    return p0
.end method

.method private synthetic q(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->n()Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/g;->j(Lio/bidmachine/AdsFormat;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "Store ad (%s, size - %s)"

    .line 18
    .line 19
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method private static synthetic r(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Remove cheapest ad (%s)"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic s(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/NetworkAdUnit;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->n()Lio/bidmachine/AdsFormat;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/g;->l(Lio/bidmachine/AdsFormat;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->n()Lio/bidmachine/AdsFormat;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/g;->j(Lio/bidmachine/AdsFormat;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    filled-new-array {p1, p2, v0, v1}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "UnReserve ad (networkAdUnitId - %s, %s, %s / %s)"

    .line 34
    .line 35
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method


# virtual methods
.method A(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .locals 5
    .param p1    # Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->d:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 36
    .line 37
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lio/bidmachine/NetworkAdUnit;

    .line 48
    .line 49
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_2

    .line 55
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lio/bidmachine/NetworkAdUnit;

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/g;->z(Lio/bidmachine/NetworkAdUnit;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    monitor-exit v0

    .line 76
    return-void

    .line 77
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p1
.end method

.method g(Lio/bidmachine/AdsFormat;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
    .locals 4
    .param p1    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->b:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v1, :cond_2

    .line 13
    .line 14
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->b:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 21
    .line 22
    invoke-virtual {v2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->n()Lio/bidmachine/AdsFormat;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-ne v3, p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Lio/bidmachine/ads/networks/gam_dynamic/g;->m(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    monitor-exit v0

    .line 36
    return-object v2

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    monitor-exit v0

    .line 43
    const/4 p1, 0x0

    .line 44
    return-object p1

    .line 45
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p1
.end method

.method h(Lio/bidmachine/AdsFormat;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
    .locals 4
    .param p1    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->b:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 21
    .line 22
    invoke-virtual {v2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->n()Lio/bidmachine/AdsFormat;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-ne v3, p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Lio/bidmachine/ads/networks/gam_dynamic/g;->m(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    monitor-exit v0

    .line 36
    return-object v2

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    monitor-exit v0

    .line 40
    const/4 p1, 0x0

    .line 41
    return-object p1

    .line 42
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p1
.end method

.method i(Lio/bidmachine/AdsFormat;)Ljava/util/List;
    .locals 8
    .param p1    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdsFormat;",
            ")",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->b:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    const/4 p1, 0x0

    .line 14
    return-object p1

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->b:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_6

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 40
    .line 41
    invoke-virtual {v3}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->n()Lio/bidmachine/AdsFormat;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    if-eq v4, p1, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v3}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->m()Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-static {}, Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit;->newBuilder()Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v4}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getPrice()D

    .line 57
    .line 58
    .line 59
    move-result-wide v6

    .line 60
    invoke-virtual {v5, v6, v7}, Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;->setPrice(D)Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {p0, v3}, Lio/bidmachine/ads/networks/gam_dynamic/g;->m(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    invoke-virtual {v5, v6}, Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;->setFrozen(Z)Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v4}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getAdUnitId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    if-eqz v6, :cond_2

    .line 77
    .line 78
    invoke-virtual {v4}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getAdUnitId()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v5, v6}, Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;->setAdUnitId(Ljava/lang/String;)Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;

    .line 83
    .line 84
    .line 85
    :cond_2
    invoke-virtual {v4}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getServerParams()Lcom/explorestack/protobuf/StringValue;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    if-eqz v4, :cond_3

    .line 90
    .line 91
    invoke-virtual {v5, v4}, Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;->setServerParams(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-virtual {v3}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->o()Lhm/l;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    if-eqz v3, :cond_5

    .line 99
    .line 100
    invoke-virtual {v3}, Lhm/l;->b()Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    if-eqz v4, :cond_4

    .line 105
    .line 106
    invoke-virtual {v5, v4}, Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;->setEstimatedPrice(Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;)Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;

    .line 107
    .line 108
    .line 109
    :cond_4
    invoke-virtual {v3}, Lhm/l;->a()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-nez v4, :cond_5

    .line 118
    .line 119
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->newBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/StringValue$Builder;->setValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v5, v3}, Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;->setAdResponse(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;

    .line 132
    .line 133
    .line 134
    :cond_5
    invoke-virtual {v5}, Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit$Builder;->build()Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_6
    monitor-exit v0

    .line 143
    return-object v1

    .line 144
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    throw p1
.end method

.method j(Lio/bidmachine/AdsFormat;)I
    .locals 4
    .param p1    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->b:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 22
    .line 23
    invoke-virtual {v3}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->n()Lio/bidmachine/AdsFormat;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eq v3, p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    monitor-exit v0

    .line 36
    return v2

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1
.end method

.method k(Lio/bidmachine/NetworkAdUnit;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
    .locals 2
    .param p1    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->d:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p1
.end method

.method l(Lio/bidmachine/AdsFormat;)I
    .locals 4
    .param p1    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->d:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 26
    .line 27
    invoke-virtual {v3}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->n()Lio/bidmachine/AdsFormat;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eq v3, p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    monitor-exit v0

    .line 40
    return v2

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p1
.end method

.method m(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Z
    .locals 2
    .param p1    # Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->d:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    monitor-exit v0

    .line 11
    return p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

.method t(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Z
    .locals 4
    .param p1    # Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->b:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->a:Lfr/j;

    .line 13
    .line 14
    new-instance v3, Lio/bidmachine/ads/networks/gam_dynamic/c;

    .line 15
    .line 16
    invoke-direct {v3, p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/c;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/g;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v3}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/g;->A(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return v1

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1
.end method

.method u(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .locals 3
    .param p1    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->a:Lfr/j;

    .line 5
    .line 6
    new-instance v2, Lio/bidmachine/ads/networks/gam_dynamic/a;

    .line 7
    .line 8
    invoke-direct {v2, p0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/a;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/g;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->d:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method

.method v(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/AdsFormat;)Lhm/j;
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
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p2}, Lio/bidmachine/ads/networks/gam_dynamic/g;->h(Lio/bidmachine/AdsFormat;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/g;->u(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-object p2

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    monitor-exit v0

    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p1
.end method

.method w(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/ads/networks/gam_dynamic/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method x(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .locals 3
    .param p1    # Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->b:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->b:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->b:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/g;->w(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->a:Lfr/j;

    .line 27
    .line 28
    new-instance v2, Lio/bidmachine/ads/networks/gam_dynamic/e;

    .line 29
    .line 30
    invoke-direct {v2, p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/e;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/g;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p1
.end method

.method y(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;I)Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
    .locals 6
    .param p1    # Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->n()Lio/bidmachine/AdsFormat;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {p0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/g;->j(Lio/bidmachine/AdsFormat;)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-lt v2, p2, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/g;->g(Lio/bidmachine/AdsFormat;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getPrice()D

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getPrice()D

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    cmpl-double v1, v1, v4

    .line 30
    .line 31
    if-lez v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->a:Lfr/j;

    .line 35
    .line 36
    new-instance v2, Lio/bidmachine/ads/networks/gam_dynamic/d;

    .line 37
    .line 38
    invoke-direct {v2, p2}, Lio/bidmachine/ads/networks/gam_dynamic/d;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p2}, Lio/bidmachine/ads/networks/gam_dynamic/g;->t(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Z

    .line 45
    .line 46
    .line 47
    move-object v3, p2

    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    :goto_0
    monitor-exit v0

    .line 52
    return-object v3

    .line 53
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/g;->x(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 54
    .line 55
    .line 56
    monitor-exit v0

    .line 57
    return-object v3

    .line 58
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p1
.end method

.method z(Lio/bidmachine/NetworkAdUnit;)V
    .locals 4
    .param p1    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->d:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/g;->a:Lfr/j;

    .line 15
    .line 16
    new-instance v3, Lio/bidmachine/ads/networks/gam_dynamic/b;

    .line 17
    .line 18
    invoke-direct {v3, p0, p1, v1}, Lio/bidmachine/ads/networks/gam_dynamic/b;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/g;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method
