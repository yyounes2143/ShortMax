.class Lio/bidmachine/ads/networks/gam/j$c;
.super Ljava/lang/Object;
.source "GAMLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam/j$c$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lio/bidmachine/ads/networks/gam/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lio/bidmachine/ads/networks/gam/r;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:I


# direct methods
.method private constructor <init>(Lio/bidmachine/ads/networks/gam/j;Lio/bidmachine/ads/networks/gam/r;I)V
    .locals 1
    .param p1    # Lio/bidmachine/ads/networks/gam/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/j$c;->a:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/j$c;->b:Lio/bidmachine/ads/networks/gam/j;

    .line 5
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam/j$c;->c:Lio/bidmachine/ads/networks/gam/r;

    .line 6
    iput p3, p0, Lio/bidmachine/ads/networks/gam/j$c;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/ads/networks/gam/j;Lio/bidmachine/ads/networks/gam/r;ILio/bidmachine/ads/networks/gam/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/ads/networks/gam/j$c;-><init>(Lio/bidmachine/ads/networks/gam/j;Lio/bidmachine/ads/networks/gam/r;I)V

    return-void
.end method

.method static synthetic a(Lio/bidmachine/ads/networks/gam/j$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam/j$c;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private c(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Z
    .locals 5
    .param p1    # Lio/bidmachine/ads/networks/gam/InternalGAMAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam/j$c;->b:Lio/bidmachine/ads/networks/gam/j;

    .line 8
    .line 9
    invoke-static {v2}, Lio/bidmachine/ads/networks/gam/j;->g(Lio/bidmachine/ads/networks/gam/j;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Lio/bidmachine/ads/networks/gam/j$c$a;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-direct {v3, v0, v4}, Lio/bidmachine/ads/networks/gam/j$c$a;-><init>(Ljava/util/concurrent/CountDownLatch;Lio/bidmachine/ads/networks/gam/j$a;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v2, v3}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->A(Landroid/content/Context;Lio/bidmachine/ads/networks/gam/n0;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->r()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/j$c;->b:Lio/bidmachine/ads/networks/gam/j;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam/j;->D(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 38
    .line 39
    .line 40
    return v1

    .line 41
    :cond_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/j$c;->b:Lio/bidmachine/ads/networks/gam/j;

    .line 42
    .line 43
    invoke-static {v0, p1}, Lio/bidmachine/ads/networks/gam/j;->h(Lio/bidmachine/ads/networks/gam/j;Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    return p1
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/j$c;->c:Lio/bidmachine/ads/networks/gam/r;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/bidmachine/ads/networks/gam/r;->c()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lio/bidmachine/ads/networks/gam/t;

    .line 27
    .line 28
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam/j$c;->b:Lio/bidmachine/ads/networks/gam/j;

    .line 29
    .line 30
    invoke-static {v2}, Lio/bidmachine/ads/networks/gam/j;->f(Lio/bidmachine/ads/networks/gam/j;)Ldm/b;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v3, p0, Lio/bidmachine/ads/networks/gam/j$c;->b:Lio/bidmachine/ads/networks/gam/j;

    .line 35
    .line 36
    iget-object v4, p0, Lio/bidmachine/ads/networks/gam/j$c;->c:Lio/bidmachine/ads/networks/gam/r;

    .line 37
    .line 38
    invoke-virtual {v4}, Lio/bidmachine/ads/networks/gam/r;->a()Lio/bidmachine/AdsFormat;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-interface {v2, v3, v4, v1}, Ldm/b;->e(Lio/bidmachine/ads/networks/gam/j;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/t;)Lio/bidmachine/ads/networks/gam/InternalGAMAd;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-direct {p0, v1}, Lio/bidmachine/ads/networks/gam/j$c;->c(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iget v1, p0, Lio/bidmachine/ads/networks/gam/j$c;->d:I

    .line 57
    .line 58
    int-to-long v1, v1

    .line 59
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    :cond_2
    :goto_1
    return-void
.end method
