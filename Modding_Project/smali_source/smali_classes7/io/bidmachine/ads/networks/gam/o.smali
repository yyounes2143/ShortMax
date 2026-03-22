.class Lio/bidmachine/ads/networks/gam/o;
.super Ljava/lang/Object;
.source "GAMNetwork.java"


# instance fields
.field private final a:Lfr/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Ldm/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lio/bidmachine/ads/networks/gam/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ldm/b;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;JZ)V
    .locals 11
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
            "JZ)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    new-instance v1, Lfr/j;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    move-object v6, p3

    .line 13
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v3, "Network"

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v1, v2}, Lfr/j;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Lio/bidmachine/ads/networks/gam/o;->a:Lfr/j;

    .line 29
    .line 30
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 34
    .line 35
    .line 36
    iput-object v1, v0, Lio/bidmachine/ads/networks/gam/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    .line 38
    move-object v1, p2

    .line 39
    iput-object v1, v0, Lio/bidmachine/ads/networks/gam/o;->c:Ldm/b;

    .line 40
    .line 41
    new-instance v2, Lio/bidmachine/ads/networks/gam/j;

    .line 42
    .line 43
    move-object v3, v2

    .line 44
    move-object v4, p1

    .line 45
    move-object v5, p2

    .line 46
    move-object v7, p4

    .line 47
    move-object/from16 v8, p5

    .line 48
    .line 49
    move-wide/from16 v9, p6

    .line 50
    .line 51
    invoke-direct/range {v3 .. v10}, Lio/bidmachine/ads/networks/gam/j;-><init>(Landroid/content/Context;Ldm/b;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V

    .line 52
    .line 53
    .line 54
    iput-object v2, v0, Lio/bidmachine/ads/networks/gam/o;->d:Lio/bidmachine/ads/networks/gam/j;

    .line 55
    .line 56
    move/from16 v1, p8

    .line 57
    .line 58
    iput-boolean v1, v0, Lio/bidmachine/ads/networks/gam/o;->e:Z

    .line 59
    .line 60
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/ads/networks/gam/o;->j(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/ads/networks/gam/o;->k(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/ads/networks/gam/o;->l(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic j(Lio/bidmachine/NetworkAdUnit;)Ljava/lang/String;
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
    const-string v0, "Fail to load banner (Can\'t find reserved GAMAd by network ad unit id - %s)"

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
    const-string v0, "Fail to load interstitial (Can\'t find reserved GAMAd by network ad unit id - %s)"

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
    const-string v0, "Fail to load rewarded (Can\'t find reserved GAMAd by network ad unit id - %s)"

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

.method private p(Lio/bidmachine/ads/networks/gam/c0;Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lfr/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam/c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam/InternalGAMAd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ads/networks/gam/c0<",
            "*>;",
            "Lio/bidmachine/ads/networks/gam/InternalGAMAd;",
            "Lfr/a;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p2}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
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
    invoke-interface {p1, p3}, Lio/bidmachine/ads/networks/gam/c0;->onAdLoadFailed(Lfr/a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/o;->d:Lio/bidmachine/ads/networks/gam/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam/j;->u()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method e(Lio/bidmachine/AdsFormat;)V
    .locals 1
    .param p1    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/o;->d:Lio/bidmachine/ads/networks/gam/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam/j;->v(Lio/bidmachine/AdsFormat;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lio/bidmachine/AdsFormat;->getParent()Lio/bidmachine/AdsFormat;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/o;->d:Lio/bidmachine/ads/networks/gam/j;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam/j;->v(Lio/bidmachine/AdsFormat;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/o;->c:Ldm/b;

    .line 2
    .line 3
    invoke-interface {v0}, Ldm/b;->getVersion()Llr/a;

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

.method g(Landroid/content/Context;)V
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
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/o;->c:Ldm/b;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ldm/b;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    :catchall_0
    return-void
.end method

.method h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/ads/networks/gam/o;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method m(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam/f0;)V
    .locals 2
    .param p1    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam/f0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/o;->d:Lio/bidmachine/ads/networks/gam/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam/j;->n(Lio/bidmachine/NetworkAdUnit;)Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/o;->a:Lfr/j;

    .line 10
    .line 11
    new-instance v1, Lio/bidmachine/ads/networks/gam/n;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lio/bidmachine/ads/networks/gam/n;-><init>(Lio/bidmachine/NetworkAdUnit;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "Can\'t find reserved GAMAd by NetworkAdUnit"

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
    invoke-direct {p0, p2, v0, p1}, Lio/bidmachine/ads/networks/gam/o;->p(Lio/bidmachine/ads/networks/gam/c0;Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lfr/a;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    instance-of p1, v0, Lio/bidmachine/ads/networks/gam/e0;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, p2}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->F(Lio/bidmachine/ads/networks/gam/d0;)V

    .line 35
    .line 36
    .line 37
    check-cast v0, Lio/bidmachine/ads/networks/gam/e0;

    .line 38
    .line 39
    invoke-interface {p2, v0}, Lio/bidmachine/ads/networks/gam/c0;->a(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string p1, "InternalGAM object has an incompatible ad type"

    .line 44
    .line 45
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p2, v0, p1}, Lio/bidmachine/ads/networks/gam/o;->p(Lio/bidmachine/ads/networks/gam/c0;Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lfr/a;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method n(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam/k0;)V
    .locals 2
    .param p1    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam/k0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/o;->d:Lio/bidmachine/ads/networks/gam/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam/j;->n(Lio/bidmachine/NetworkAdUnit;)Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/o;->a:Lfr/j;

    .line 10
    .line 11
    new-instance v1, Lio/bidmachine/ads/networks/gam/m;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lio/bidmachine/ads/networks/gam/m;-><init>(Lio/bidmachine/NetworkAdUnit;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "Can\'t find reserved GAMAd by NetworkAdUnit"

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
    invoke-direct {p0, p2, v0, p1}, Lio/bidmachine/ads/networks/gam/o;->p(Lio/bidmachine/ads/networks/gam/c0;Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lfr/a;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    instance-of p1, v0, Lio/bidmachine/ads/networks/gam/j0;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, p2}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->F(Lio/bidmachine/ads/networks/gam/d0;)V

    .line 35
    .line 36
    .line 37
    check-cast v0, Lio/bidmachine/ads/networks/gam/j0;

    .line 38
    .line 39
    invoke-interface {p2, v0}, Lio/bidmachine/ads/networks/gam/c0;->a(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string p1, "InternalGAM object has an incompatible ad type"

    .line 44
    .line 45
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p2, v0, p1}, Lio/bidmachine/ads/networks/gam/o;->p(Lio/bidmachine/ads/networks/gam/c0;Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lfr/a;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method o(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam/m0;)V
    .locals 2
    .param p1    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam/m0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/o;->d:Lio/bidmachine/ads/networks/gam/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam/j;->n(Lio/bidmachine/NetworkAdUnit;)Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/o;->a:Lfr/j;

    .line 10
    .line 11
    new-instance v1, Lio/bidmachine/ads/networks/gam/l;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lio/bidmachine/ads/networks/gam/l;-><init>(Lio/bidmachine/NetworkAdUnit;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "Can\'t find reserved GAMAd by NetworkAdUnit"

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
    invoke-direct {p0, p2, v0, p1}, Lio/bidmachine/ads/networks/gam/o;->p(Lio/bidmachine/ads/networks/gam/c0;Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lfr/a;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    instance-of p1, v0, Lio/bidmachine/ads/networks/gam/l0;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, p2}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->F(Lio/bidmachine/ads/networks/gam/d0;)V

    .line 35
    .line 36
    .line 37
    check-cast v0, Lio/bidmachine/ads/networks/gam/l0;

    .line 38
    .line 39
    invoke-interface {p2, v0}, Lio/bidmachine/ads/networks/gam/c0;->a(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string p1, "InternalGAM object has an incompatible ad type"

    .line 44
    .line 45
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p2, v0, p1}, Lio/bidmachine/ads/networks/gam/o;->p(Lio/bidmachine/ads/networks/gam/c0;Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lfr/a;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method q(Lio/bidmachine/NetworkAdUnit;Ljava/lang/String;)Lio/bidmachine/ads/networks/gam/t;
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
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/o;->d:Lio/bidmachine/ads/networks/gam/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/ads/networks/gam/j;->B(Lio/bidmachine/NetworkAdUnit;Ljava/lang/String;)Lio/bidmachine/ads/networks/gam/t;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method r(Lio/bidmachine/NetworkAdUnit;)V
    .locals 1
    .param p1    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/o;->d:Lio/bidmachine/ads/networks/gam/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam/j;->E(Lio/bidmachine/NetworkAdUnit;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
