.class public abstract Lio/bidmachine/ads/networks/gam/InternalGAMAd;
.super Ljava/lang/Object;
.source "InternalGAMAd.java"

# interfaces
.implements Lio/bidmachine/ExpirationHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;
    }
.end annotation


# instance fields
.field private final a:Lfr/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lio/bidmachine/ads/networks/gam/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lio/bidmachine/AdsFormat;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lio/bidmachine/ads/networks/gam/t;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lio/bidmachine/ExpirationHandler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private volatile f:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/bidmachine/ads/networks/gam/d0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/gam/j;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/t;)V
    .locals 3
    .param p1    # Lio/bidmachine/ads/networks/gam/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/ads/networks/gam/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Idle:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    .line 5
    .line 6
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->f:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

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
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/j;->l()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, "Ad"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, v1}, Lfr/j;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->a:Lfr/j;

    .line 35
    .line 36
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->b:Lio/bidmachine/ads/networks/gam/j;

    .line 37
    .line 38
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->c:Lio/bidmachine/AdsFormat;

    .line 39
    .line 40
    iput-object p3, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->d:Lio/bidmachine/ads/networks/gam/t;

    .line 41
    .line 42
    new-instance p2, Lio/bidmachine/ExpirationHandler;

    .line 43
    .line 44
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/j;->k()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    invoke-direct {p2, v0, v1, p0}, Lio/bidmachine/ExpirationHandler;-><init>(JLio/bidmachine/ExpirationHandler$Listener;)V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->e:Lio/bidmachine/ExpirationHandler;

    .line 52
    .line 53
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->u()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Landroid/content/Context;Lio/bidmachine/ads/networks/gam/n0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->v(Landroid/content/Context;Lio/bidmachine/ads/networks/gam/n0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->t()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->z()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->y()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->x()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->w()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private i(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->a:Lfr/j;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/ads/networks/gam/w;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam/w;-><init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->g:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->g:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->e:Lio/bidmachine/ExpirationHandler;

    .line 22
    .line 23
    invoke-virtual {v0}, Lio/bidmachine/ExpirationHandler;->stop()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->b:Lio/bidmachine/ads/networks/gam/j;

    .line 27
    .line 28
    invoke-virtual {v0, p0, p1}, Lio/bidmachine/ads/networks/gam/j;->x(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private synthetic t()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->d:Lio/bidmachine/ads/networks/gam/t;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "destroy (%s)"

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private synthetic u()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->d:Lio/bidmachine/ads/networks/gam/t;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "load (%s)"

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private synthetic v(Landroid/content/Context;Lio/bidmachine/ads/networks/gam/n0;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Loading:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->G(Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->B(Landroid/content/Context;Lio/bidmachine/ads/networks/gam/n0;)V
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
    const-string v0, "Exception loading InternalGAM object"

    .line 15
    .line 16
    invoke-static {v0, p1}, Lfr/a;->l(Ljava/lang/String;Ljava/lang/Throwable;)Lfr/a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p2, p0, p1}, Lio/bidmachine/ads/networks/gam/n0;->b(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lfr/a;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method private synthetic w()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->d:Lio/bidmachine/ads/networks/gam/t;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "onAdLoaded (%s)"

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private synthetic x()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->d:Lio/bidmachine/ads/networks/gam/t;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "onAdShown (%s)"

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private synthetic y()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->d:Lio/bidmachine/ads/networks/gam/t;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "onExpired (%s)"

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private synthetic z()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->j()V
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
.method final A(Landroid/content/Context;Lio/bidmachine/ads/networks/gam/n0;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam/n0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->a:Lfr/j;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/ads/networks/gam/x;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam/x;-><init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

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
    new-instance v0, Lio/bidmachine/ads/networks/gam/y;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/ads/networks/gam/y;-><init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Landroid/content/Context;Lio/bidmachine/ads/networks/gam/n0;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method protected abstract B(Landroid/content/Context;Lio/bidmachine/ads/networks/gam/n0;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam/n0;
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

.method public C()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->a:Lfr/j;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/ads/networks/gam/a0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam/a0;-><init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Loaded:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->G(Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->e:Lio/bidmachine/ExpirationHandler;

    .line 17
    .line 18
    invoke-virtual {v0}, Lio/bidmachine/ExpirationHandler;->start()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public D()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->a:Lfr/j;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/ads/networks/gam/z;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam/z;-><init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->b:Lio/bidmachine/ads/networks/gam/j;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lio/bidmachine/ads/networks/gam/j;->y(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Shown:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->G(Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->e:Lio/bidmachine/ExpirationHandler;

    .line 22
    .line 23
    invoke-virtual {v0}, Lio/bidmachine/ExpirationHandler;->stop()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method final E()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/gam/b0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/gam/b0;-><init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public F(Lio/bidmachine/ads/networks/gam/d0;)V
    .locals 1
    .param p1    # Lio/bidmachine/ads/networks/gam/d0;
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
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->g:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    return-void
.end method

.method G(Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->f:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    .line 2
    .line 3
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->s()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->i(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected abstract j()V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public k()Lio/bidmachine/ads/networks/gam/d0;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->g:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lio/bidmachine/ads/networks/gam/d0;

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

.method public l()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->o()Lio/bidmachine/ads/networks/gam/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam/t;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public m()Lio/bidmachine/AdsFormat;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->c:Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Lio/bidmachine/ads/networks/gam/j;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->b:Lio/bidmachine/ads/networks/gam/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Lio/bidmachine/ads/networks/gam/t;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->d:Lio/bidmachine/ads/networks/gam/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public onExpired()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->s()Z

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
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->a:Lfr/j;

    .line 9
    .line 10
    new-instance v1, Lio/bidmachine/ads/networks/gam/v;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam/v;-><init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Expired:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->G(Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->k()Lio/bidmachine/ads/networks/gam/d0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Lio/bidmachine/ads/networks/gam/d0;->onAdExpired()V

    .line 30
    .line 31
    .line 32
    :cond_1
    const/4 v0, 0x1

    .line 33
    invoke-direct {p0, v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->i(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->b:Lio/bidmachine/ads/networks/gam/j;

    .line 37
    .line 38
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->c:Lio/bidmachine/AdsFormat;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lio/bidmachine/ads/networks/gam/j;->v(Lio/bidmachine/AdsFormat;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public p()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->o()Lio/bidmachine/ads/networks/gam/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam/t;->d()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method q()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->f:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Expired:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

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
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->f:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Loaded:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

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

.method s()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->f:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

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
    sget-object v1, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Shown:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

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
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->a:Lfr/j;

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
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->o()Lio/bidmachine/ads/networks/gam/t;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
