.class public abstract Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
.super Ljava/lang/Object;
.source "InternalAd.java"

# interfaces
.implements Lhm/j;
.implements Lio/bidmachine/ExpirationHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;
    }
.end annotation


# instance fields
.field private final a:Lfr/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lhm/u;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lio/bidmachine/AdsFormat;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lhm/k;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Lio/bidmachine/ExpirationHandler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lhm/m;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lhm/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lhm/s;Lhm/u;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lhm/k;)V
    .locals 2
    .param p1    # Lhm/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lhm/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lhm/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Idle:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    .line 5
    .line 6
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->h:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    .line 7
    .line 8
    new-instance v0, Lfr/j;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lhm/s;->getNetworkName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, "Ad"

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Lfr/j;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->a:Lfr/j;

    .line 35
    .line 36
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->b:Lhm/u;

    .line 37
    .line 38
    iput-object p3, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->c:Lio/bidmachine/AdsFormat;

    .line 39
    .line 40
    iput-object p4, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->d:Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 41
    .line 42
    iput-object p5, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->e:Lhm/k;

    .line 43
    .line 44
    new-instance p1, Lio/bidmachine/ExpirationHandler;

    .line 45
    .line 46
    invoke-virtual {p4}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getExpirationTime()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    int-to-long p2, p2

    .line 51
    invoke-direct {p1, p2, p3, p0}, Lio/bidmachine/ExpirationHandler;-><init>(JLio/bidmachine/ExpirationHandler$Listener;)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->f:Lio/bidmachine/ExpirationHandler;

    .line 55
    .line 56
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->g:Ljava/util/Map;

    .line 62
    .line 63
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->z()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->y(Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->w()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->v(Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Landroid/content/Context;Lhm/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->u(Landroid/content/Context;Lhm/q;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->t()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->s()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->x()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic s()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->d:Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 2
    .line 3
    invoke-static {v0}, Lhm/a;->a(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "destroy (%s)"

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private synthetic t()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->d:Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 2
    .line 3
    invoke-static {v0}, Lhm/a;->a(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "load (%s)"

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private synthetic u(Landroid/content/Context;Lhm/q;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Loading:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->J(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->B(Landroid/content/Context;Lhm/q;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "Exception loading InternalAd object"

    .line 15
    .line 16
    invoke-static {v0, p1}, Lfr/a;->l(Ljava/lang/String;Ljava/lang/Throwable;)Lfr/a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p2, p0, p1}, Lhm/q;->b(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lfr/a;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method private synthetic v(Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->d:Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 2
    .line 3
    invoke-static {v0}, Lhm/a;->a(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1}, Lhm/a;->c(Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "onAdLoaded (%s, %s)"

    .line 16
    .line 17
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method private synthetic w()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->d:Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 2
    .line 3
    invoke-static {v0}, Lhm/a;->a(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "onAdShown (%s)"

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private synthetic x()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->d:Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 2
    .line 3
    invoke-static {v0}, Lhm/a;->a(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "onExpired (%s)"

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private synthetic y(Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->d:Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 2
    .line 3
    invoke-static {v0}, Lhm/a;->a(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1}, Lhm/a;->c(Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "onPaidEvent (%s, %s)"

    .line 16
    .line 17
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method private synthetic z()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 7
    .line 8
    .line 9
    :goto_0
    return-void
.end method


# virtual methods
.method final A(Landroid/content/Context;Lhm/q;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lhm/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->a:Lfr/j;

    .line 2
    .line 3
    new-instance v1, Lhm/f;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lhm/f;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Lhm/g;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1, p2}, Lhm/g;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Landroid/content/Context;Lhm/q;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method protected abstract B(Landroid/content/Context;Lhm/q;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lhm/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public C(Lhm/l;)V
    .locals 2
    .param p1    # Lhm/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->j:Lhm/l;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lhm/l;->b()Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->a:Lfr/j;

    .line 12
    .line 13
    new-instance v1, Lhm/i;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lhm/i;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lfr/e;->c(Lcom/explorestack/protobuf/MessageLite;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const-string v0, "gam_estimated_price"

    .line 28
    .line 29
    invoke-virtual {p0, v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->I(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    sget-object p1, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Loaded:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->J(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->f:Lio/bidmachine/ExpirationHandler;

    .line 38
    .line 39
    invoke-virtual {p1}, Lio/bidmachine/ExpirationHandler;->start()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public D()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->a:Lfr/j;

    .line 2
    .line 3
    new-instance v1, Lhm/d;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lhm/d;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->e:Lhm/k;

    .line 12
    .line 13
    invoke-interface {v0, p0}, Lhm/k;->a(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Shown:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->J(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->f:Lio/bidmachine/ExpirationHandler;

    .line 22
    .line 23
    invoke-virtual {v0}, Lio/bidmachine/ExpirationHandler;->stop()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method protected E(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->b:Lhm/u;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lhm/u;->execute(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public F(Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;)V
    .locals 2
    .param p1    # Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->a:Lfr/j;

    .line 2
    .line 3
    new-instance v1, Lhm/h;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lhm/h;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lfr/e;->c(Lcom/explorestack/protobuf/MessageLite;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const-string v0, "gam_estimated_price"

    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->I(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->e:Lhm/k;

    .line 23
    .line 24
    invoke-interface {p1, p0}, Lhm/k;->d(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method G()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->f:Lio/bidmachine/ExpirationHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/ExpirationHandler;->stop()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lhm/e;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lhm/e;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public H(Lhm/m;)V
    .locals 1
    .param p1    # Lhm/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->i:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    return-void
.end method

.method public I(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->g:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method J(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->h:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    .line 2
    .line 3
    return-void
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->m()Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getAdUnitId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getCustomParamsMap()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->g:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->m()Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getPrice()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public i()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->r()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->j(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method j(Z)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->a:Lfr/j;

    .line 2
    .line 3
    new-instance v1, Lhm/c;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lhm/c;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->i:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->i:Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->G()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->e:Lhm/k;

    .line 30
    .line 31
    invoke-interface {v0, p0, p1}, Lhm/k;->c(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :goto_2
    return-void
.end method

.method protected abstract k()V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public l()Lhm/m;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->i:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lhm/m;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public m()Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->d:Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Lio/bidmachine/AdsFormat;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->c:Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Lhm/l;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->j:Lhm/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public onExpired()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->r()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->a:Lfr/j;

    .line 9
    .line 10
    new-instance v1, Lhm/b;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lhm/b;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->e:Lhm/k;

    .line 19
    .line 20
    invoke-interface {v0, p0}, Lhm/k;->b(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Expired:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->J(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->l()Lhm/m;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {v0}, Lhm/m;->onAdExpired()V

    .line 35
    .line 36
    .line 37
    :cond_1
    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->j(Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method p()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->h:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Expired:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method q()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->h:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Loaded:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method r()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->h:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sget-object v1, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Shown:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-lt v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->a:Lfr/j;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->d:Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 17
    .line 18
    invoke-static {v1}, Lhm/a;->a(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
