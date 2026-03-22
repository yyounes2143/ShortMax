.class Lio/bidmachine/ads/networks/gam/j$b;
.super Ljava/lang/Object;
.source "GAMLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final d:I

.field private static final e:I


# instance fields
.field private final a:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/AdsFormat;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lio/bidmachine/ads/networks/gam/j$b;->d:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Lio/bidmachine/ads/networks/gam/j$b;->e:I

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lio/bidmachine/ads/networks/gam/j$b;->e:I

    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/j$b;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    .line 12
    new-instance v0, Ljava/util/EnumMap;

    .line 13
    .line 14
    const-class v1, Lio/bidmachine/AdsFormat;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/j$b;->b:Ljava/util/Map;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/Object;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/j$b;->c:Ljava/lang/Object;

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/ads/networks/gam/j$b;Lio/bidmachine/ads/networks/gam/j$c;Lio/bidmachine/AdsFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/gam/j$b;->c(Lio/bidmachine/ads/networks/gam/j$c;Lio/bidmachine/AdsFormat;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lio/bidmachine/ads/networks/gam/j$b;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/j$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/gam/j$b;->d(Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/j$c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic c(Lio/bidmachine/ads/networks/gam/j$c;Lio/bidmachine/AdsFormat;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/j$c;->run()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/ads/networks/gam/j$c;->a(Lio/bidmachine/ads/networks/gam/j$c;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p2, p1}, Lio/bidmachine/ads/networks/gam/j$b;->e(Lio/bidmachine/AdsFormat;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private d(Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/j$c;)V
    .locals 4
    .param p1    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam/j$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/j$b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/j$b;->b:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/Map;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam/j$b;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 25
    .line 26
    new-instance v3, Lio/bidmachine/ads/networks/gam/k;

    .line 27
    .line 28
    invoke-direct {v3, p0, p2, p1}, Lio/bidmachine/ads/networks/gam/k;-><init>(Lio/bidmachine/ads/networks/gam/j$b;Lio/bidmachine/ads/networks/gam/j$c;Lio/bidmachine/AdsFormat;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    new-instance v1, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lio/bidmachine/ads/networks/gam/j$b;->b:Ljava/util/Map;

    .line 43
    .line 44
    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-static {p2}, Lio/bidmachine/ads/networks/gam/j$c;->a(Lio/bidmachine/ads/networks/gam/j$c;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    monitor-exit v0

    .line 55
    goto :goto_1

    .line 56
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    :catchall_1
    :goto_1
    return-void
.end method

.method private e(Lio/bidmachine/AdsFormat;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/j$b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/j$b;->b:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/util/Map;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method
