.class public Lio/bidmachine/ads/networks/gam/j;
.super Ljava/lang/Object;
.source "GAMLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam/j$b;,
        Lio/bidmachine/ads/networks/gam/j$c;
    }
.end annotation


# instance fields
.field private final a:Lfr/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Ldm/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/AdsFormat;",
            "Lio/bidmachine/ads/networks/gam/r;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final g:J

.field private final h:Lio/bidmachine/ads/networks/gam/j$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final i:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/ads/networks/gam/InternalGAMAd;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/NetworkAdUnit;",
            "Lio/bidmachine/ads/networks/gam/InternalGAMAd;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final l:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ldm/b;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ldm/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldm/b;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lio/bidmachine/AdsFormat;",
            "Lio/bidmachine/ads/networks/gam/r;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

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
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, "Loader"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Lfr/j;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/j;->a:Lfr/j;

    .line 27
    .line 28
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/j;->b:Landroid/content/Context;

    .line 29
    .line 30
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam/j;->c:Ldm/b;

    .line 31
    .line 32
    iput-object p3, p0, Lio/bidmachine/ads/networks/gam/j;->d:Ljava/lang/String;

    .line 33
    .line 34
    new-instance p1, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/j;->e:Ljava/util/Map;

    .line 40
    .line 41
    iput-object p5, p0, Lio/bidmachine/ads/networks/gam/j;->f:Ljava/lang/String;

    .line 42
    .line 43
    iput-wide p6, p0, Lio/bidmachine/ads/networks/gam/j;->g:J

    .line 44
    .line 45
    new-instance p1, Lio/bidmachine/ads/networks/gam/j$b;

    .line 46
    .line 47
    invoke-direct {p1}, Lio/bidmachine/ads/networks/gam/j$b;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/j;->h:Lio/bidmachine/ads/networks/gam/j$b;

    .line 51
    .line 52
    new-instance p1, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/j;->i:Ljava/util/List;

    .line 58
    .line 59
    new-instance p1, Ljava/util/WeakHashMap;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/j;->j:Ljava/util/Map;

    .line 65
    .line 66
    new-instance p1, Ljava/lang/Object;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/j;->k:Ljava/lang/Object;

    .line 72
    .line 73
    new-instance p1, Ljava/lang/Object;

    .line 74
    .line 75
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/j;->l:Ljava/lang/Object;

    .line 79
    .line 80
    invoke-static {}, Lio/bidmachine/AdsFormat;->values()[Lio/bidmachine/AdsFormat;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    array-length p2, p1

    .line 85
    const/4 p3, 0x0

    .line 86
    :goto_0
    if-ge p3, p2, :cond_2

    .line 87
    .line 88
    aget-object p5, p1, p3

    .line 89
    .line 90
    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p5

    .line 94
    check-cast p5, Lio/bidmachine/ads/networks/gam/r;

    .line 95
    .line 96
    if-eqz p5, :cond_1

    .line 97
    .line 98
    invoke-virtual {p5}, Lio/bidmachine/ads/networks/gam/r;->c()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object p6

    .line 102
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result p6

    .line 106
    if-eqz p6, :cond_0

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_0
    invoke-virtual {p5}, Lio/bidmachine/ads/networks/gam/r;->c()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object p6

    .line 113
    invoke-direct {p0, p6}, Lio/bidmachine/ads/networks/gam/j;->C(Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    iget-object p6, p0, Lio/bidmachine/ads/networks/gam/j;->e:Ljava/util/Map;

    .line 117
    .line 118
    invoke-virtual {p5}, Lio/bidmachine/ads/networks/gam/r;->a()Lio/bidmachine/AdsFormat;

    .line 119
    .line 120
    .line 121
    move-result-object p7

    .line 122
    invoke-interface {p6, p7, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    :cond_1
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_2
    return-void
.end method

.method private C(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/ads/networks/gam/t;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/gam/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/ads/networks/gam/g;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/ads/networks/gam/j;->t(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lio/bidmachine/ads/networks/gam/t;Lio/bidmachine/ads/networks/gam/t;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/ads/networks/gam/j;->r(Lio/bidmachine/ads/networks/gam/t;Lio/bidmachine/ads/networks/gam/t;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic c(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/ads/networks/gam/j;->p(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lio/bidmachine/ads/networks/gam/InternalGAMAd;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/ads/networks/gam/j;->s(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lio/bidmachine/ads/networks/gam/InternalGAMAd;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic e(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/ads/networks/gam/j;->q(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic f(Lio/bidmachine/ads/networks/gam/j;)Ldm/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam/j;->c:Ldm/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lio/bidmachine/ads/networks/gam/j;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam/j;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lio/bidmachine/ads/networks/gam/j;Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/gam/j;->i(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private i(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam/InternalGAMAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    :catchall_0
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/gam/j;->z(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static synthetic p(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "removeFromCaches (%s)"

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

.method private static synthetic q(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdUnit;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string p1, "reserveGAMAd (networkAdUnitId - %s, %s)"

    .line 10
    .line 11
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static synthetic r(Lio/bidmachine/ads/networks/gam/t;Lio/bidmachine/ads/networks/gam/t;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/t;->d()F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/t;->d()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    neg-int p0, p0

    .line 14
    return p0
.end method

.method private static synthetic s(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lio/bidmachine/ads/networks/gam/InternalGAMAd;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->p()F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->p()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    neg-int p0, p0

    .line 14
    return p0
.end method

.method private static synthetic t(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;
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
    const-string v0, "unReserveGAMAd (networkAdUnitId - %s)"

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

.method private w(Lio/bidmachine/ads/networks/gam/r;)I
    .locals 5
    .param p1    # Lio/bidmachine/ads/networks/gam/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/j;->k:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/j;->i:Ljava/util/List;

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
    :cond_0
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
    check-cast v3, Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    .line 22
    .line 23
    invoke-virtual {v3}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->m()Lio/bidmachine/AdsFormat;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/r;->a()Lio/bidmachine/AdsFormat;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    if-ne v3, v4, :cond_0

    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    monitor-exit v0

    .line 39
    return v2

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1
.end method

.method private z(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .locals 3
    .param p1    # Lio/bidmachine/ads/networks/gam/InternalGAMAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/j;->k:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/j;->i:Ljava/util/List;

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
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/j;->a:Lfr/j;

    .line 13
    .line 14
    new-instance v2, Lio/bidmachine/ads/networks/gam/h;

    .line 15
    .line 16
    invoke-direct {v2, p1}, Lio/bidmachine/ads/networks/gam/h;-><init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

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
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam/j;->F(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1
.end method


# virtual methods
.method A(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .locals 3
    .param p1    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam/InternalGAMAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/j;->l:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/j;->a:Lfr/j;

    .line 5
    .line 6
    new-instance v2, Lio/bidmachine/ads/networks/gam/i;

    .line 7
    .line 8
    invoke-direct {v2, p1, p2}, Lio/bidmachine/ads/networks/gam/i;-><init>(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/j;->j:Ljava/util/Map;

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

.method B(Lio/bidmachine/NetworkAdUnit;Ljava/lang/String;)Lio/bidmachine/ads/networks/gam/t;
    .locals 1
    .param p1    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/j;->k:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p2}, Lio/bidmachine/ads/networks/gam/j;->j(Ljava/lang/String;)Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/gam/j;->A(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->o()Lio/bidmachine/ads/networks/gam/t;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    monitor-exit v0

    .line 18
    return-object p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    monitor-exit v0

    .line 22
    const/4 p1, 0x0

    .line 23
    return-object p1

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p1
.end method

.method D(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .locals 2
    .param p1    # Lio/bidmachine/ads/networks/gam/InternalGAMAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/j;->k:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/j;->i:Ljava/util/List;

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
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/j;->i:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam/j;->i:Ljava/util/List;

    .line 22
    .line 23
    new-instance v1, Lio/bidmachine/ads/networks/gam/e;

    .line 24
    .line 25
    invoke-direct {v1}, Lio/bidmachine/ads/networks/gam/e;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p1
.end method

.method E(Lio/bidmachine/NetworkAdUnit;)V
    .locals 3
    .param p1    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/j;->l:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/j;->a:Lfr/j;

    .line 5
    .line 6
    new-instance v2, Lio/bidmachine/ads/networks/gam/f;

    .line 7
    .line 8
    invoke-direct {v2, p1}, Lio/bidmachine/ads/networks/gam/f;-><init>(Lio/bidmachine/NetworkAdUnit;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/j;->j:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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

.method F(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .locals 5
    .param p1    # Lio/bidmachine/ads/networks/gam/InternalGAMAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/j;->l:Ljava/lang/Object;

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
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam/j;->j:Ljava/util/Map;

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
    check-cast v4, Lio/bidmachine/ads/networks/gam/InternalGAMAd;

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
    invoke-virtual {p0, v1}, Lio/bidmachine/ads/networks/gam/j;->E(Lio/bidmachine/NetworkAdUnit;)V

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

.method j(Ljava/lang/String;)Lio/bidmachine/ads/networks/gam/InternalGAMAd;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/j;->k:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/j;->i:Ljava/util/List;

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
    check-cast v2, Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    .line 21
    .line 22
    invoke-virtual {v2}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->l()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Lio/bidmachine/ads/networks/gam/j;->o(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    monitor-exit v0

    .line 40
    return-object v2

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    monitor-exit v0

    .line 44
    const/4 p1, 0x0

    .line 45
    return-object p1

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p1
.end method

.method public k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/ads/networks/gam/j;->g:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public l()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/j;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/j;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method n(Lio/bidmachine/NetworkAdUnit;)Lio/bidmachine/ads/networks/gam/InternalGAMAd;
    .locals 2
    .param p1    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/j;->l:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/j;->j:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lio/bidmachine/ads/networks/gam/InternalGAMAd;

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

.method o(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Z
    .locals 2
    .param p1    # Lio/bidmachine/ads/networks/gam/InternalGAMAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/j;->l:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/j;->j:Ljava/util/Map;

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

.method u()V
    .locals 4

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
    :goto_0
    if-ge v2, v1, :cond_0

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-virtual {p0, v3}, Lio/bidmachine/ads/networks/gam/j;->v(Lio/bidmachine/AdsFormat;)Z

    .line 12
    .line 13
    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method v(Lio/bidmachine/AdsFormat;)Z
    .locals 5
    .param p1    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/j;->e:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/ads/networks/gam/r;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-direct {p0, v0}, Lio/bidmachine/ads/networks/gam/j;->w(Lio/bidmachine/ads/networks/gam/r;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam/r;->b()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-lt v2, v3, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/j;->h:Lio/bidmachine/ads/networks/gam/j$b;

    .line 25
    .line 26
    new-instance v2, Lio/bidmachine/ads/networks/gam/j$c;

    .line 27
    .line 28
    const/16 v3, 0x1f4

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-direct {v2, p0, v0, v3, v4}, Lio/bidmachine/ads/networks/gam/j$c;-><init>(Lio/bidmachine/ads/networks/gam/j;Lio/bidmachine/ads/networks/gam/r;ILio/bidmachine/ads/networks/gam/j$a;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v1, p1, v2}, Lio/bidmachine/ads/networks/gam/j$b;->b(Lio/bidmachine/ads/networks/gam/j$b;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/j$c;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    return p1
.end method

.method x(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Z)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam/InternalGAMAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->E()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/gam/j;->z(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam/j;->F(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method y(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam/InternalGAMAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/gam/j;->z(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
