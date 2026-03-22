.class final Lio/bidmachine/NetworkRegistry$b;
.super Ljava/lang/Object;
.source "NetworkRegistry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/NetworkRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/NetworkRegistry$b$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final h:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field static final i:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkRegistry$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lio/bidmachine/ContextProvider;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lio/bidmachine/InitializationParams;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lio/bidmachine/NetworkConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lio/bidmachine/NetworkRegistry$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Lwq/k;
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
    mul-int/lit8 v0, v0, 0x4

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lio/bidmachine/NetworkRegistry$b;->g:Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/Object;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lio/bidmachine/NetworkRegistry$b;->h:Ljava/lang/Object;

    .line 29
    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lio/bidmachine/NetworkRegistry$b;->i:Ljava/util/List;

    .line 36
    .line 37
    return-void
.end method

.method private constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfig;Lio/bidmachine/NetworkRegistry$c;)V
    .locals 0
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/InitializationParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/NetworkConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/NetworkRegistry$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/NetworkRegistry$b;->a:Lio/bidmachine/ContextProvider;

    .line 4
    iput-object p2, p0, Lio/bidmachine/NetworkRegistry$b;->b:Lio/bidmachine/InitializationParams;

    .line 5
    iput-object p3, p0, Lio/bidmachine/NetworkRegistry$b;->c:Lio/bidmachine/NetworkConfig;

    .line 6
    iput-object p4, p0, Lio/bidmachine/NetworkRegistry$b;->d:Lio/bidmachine/NetworkRegistry$c;

    .line 7
    invoke-virtual {p3}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    .line 8
    new-instance p2, Lio/bidmachine/BidMachineTrackingObject;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_initialize"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/bidmachine/BidMachineTrackingObject;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lio/bidmachine/NetworkRegistry$b;->f:Lwq/k;

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfig;Lio/bidmachine/NetworkRegistry$c;Lio/bidmachine/NetworkRegistry$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/NetworkRegistry$b;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfig;Lio/bidmachine/NetworkRegistry$c;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/NetworkAdapter;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/NetworkRegistry$b;->g(Lio/bidmachine/NetworkAdapter;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/NetworkRegistry$b;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private d(Ljava/util/Map;Lio/bidmachine/AdsType;Ljava/lang/String;Lio/bidmachine/NetworkConfig;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/NetworkConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/bidmachine/AdsType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ">;>;",
            "Lio/bidmachine/AdsType;",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/Map;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static synthetic f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Initialization error: %s"

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

.method private static synthetic g(Lio/bidmachine/NetworkAdapter;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->obtainNetworkSdkVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->getAdapterVersion()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, "Initialization completed: %s, %s"

    .line 14
    .line 15
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method


# virtual methods
.method e()V
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/NetworkRegistry$b;->i:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lio/bidmachine/NetworkRegistry$b;->g:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "Exception creating network initialization task"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lio/bidmachine/NetworkRegistry$b;->h(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method h(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/v4;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lio/bidmachine/v4;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->f(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$b;->f:Lwq/k;

    .line 12
    .line 13
    sget-object v1, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkInitialize:Lio/bidmachine/TrackEventType;

    .line 14
    .line 15
    new-instance v2, Lwq/a;

    .line 16
    .line 17
    invoke-direct {v2}, Lwq/a;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lwq/a;->h(Ljava/lang/String;)Lwq/a;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {p1}, Lfr/a;->c(Ljava/lang/String;)Lfr/a;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-interface {v0, v1, v3, v2, p1}, Lwq/k;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lwq/a;Lfr/a;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lio/bidmachine/NetworkRegistry$b;->i:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method i(Lio/bidmachine/NetworkAdapter;)V
    .locals 3
    .param p1    # Lio/bidmachine/NetworkAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/w4;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lio/bidmachine/w4;-><init>(Lio/bidmachine/NetworkAdapter;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    instance-of p1, p1, Lio/bidmachine/HeaderBiddingAdapter;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lio/bidmachine/NetworkRegistry$b;->f:Lwq/k;

    .line 16
    .line 17
    sget-object v0, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkInitialize:Lio/bidmachine/TrackEventType;

    .line 18
    .line 19
    new-instance v1, Lwq/a;

    .line 20
    .line 21
    invoke-direct {v1}, Lwq/a;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lwq/a;->h(Ljava/lang/String;)Lwq/a;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-interface {p1, v0, v2, v1, v2}, Lwq/k;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lwq/a;Lfr/a;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lio/bidmachine/NetworkRegistry$b;->f:Lwq/k;

    .line 36
    .line 37
    sget-object v0, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkInitialize:Lio/bidmachine/TrackEventType;

    .line 38
    .line 39
    invoke-interface {p1, v0}, Lwq/k;->clearEvent(Lio/bidmachine/TrackEventType;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    sget-object p1, Lio/bidmachine/NetworkRegistry$b;->i:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Initialization started"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$b;->f:Lwq/k;

    .line 9
    .line 10
    sget-object v1, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkInitialize:Lio/bidmachine/TrackEventType;

    .line 11
    .line 12
    new-instance v2, Lwq/j;

    .line 13
    .line 14
    invoke-direct {v2}, Lwq/j;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "HB_NETWORK"

    .line 18
    .line 19
    iget-object v4, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2, v3, v4}, Lwq/j;->e(Ljava/lang/String;Ljava/lang/Object;)Lwq/j;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v0, v1, v2}, Lwq/k;->eventStart(Lio/bidmachine/TrackEventType;Lwq/j;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$b;->c:Lio/bidmachine/NetworkConfig;

    .line 29
    .line 30
    invoke-static {v0}, Lio/bidmachine/NetworkRegistry;->obtainAdapter(Lio/bidmachine/NetworkConfig;)Lio/bidmachine/NetworkAdapter;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {}, Lio/bidmachine/core/a;->h()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Lio/bidmachine/NetworkAdapter;->setLogging(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lio/bidmachine/NetworkRegistry$b;->a:Lio/bidmachine/ContextProvider;

    .line 42
    .line 43
    iget-object v2, p0, Lio/bidmachine/NetworkRegistry$b;->b:Lio/bidmachine/InitializationParams;

    .line 44
    .line 45
    iget-object v3, p0, Lio/bidmachine/NetworkRegistry$b;->c:Lio/bidmachine/NetworkConfig;

    .line 46
    .line 47
    invoke-virtual {v3}, Lio/bidmachine/NetworkConfig;->getNetworkConfigParams()Lio/bidmachine/NetworkConfigParams;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    new-instance v4, Lio/bidmachine/NetworkRegistry$b$a;

    .line 52
    .line 53
    invoke-direct {v4, p0}, Lio/bidmachine/NetworkRegistry$b$a;-><init>(Lio/bidmachine/NetworkRegistry$b;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, v2, v3, v4}, Lio/bidmachine/NetworkAdapter;->initialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/InternalNetworkInitializationCallback;)V

    .line 57
    .line 58
    .line 59
    sget-object v1, Lio/bidmachine/NetworkRegistry;->INITIALIZED_NETWORK_CONFIG_MAP:Ljava/util/Map;

    .line 60
    .line 61
    iget-object v2, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    .line 62
    .line 63
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_0

    .line 68
    .line 69
    iget-object v2, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v3, p0, Lio/bidmachine/NetworkRegistry$b;->c:Lio/bidmachine/NetworkConfig;

    .line 72
    .line 73
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto :goto_4

    .line 79
    :cond_0
    :goto_0
    iget-object v1, p0, Lio/bidmachine/NetworkRegistry$b;->c:Lio/bidmachine/NetworkConfig;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Lio/bidmachine/NetworkConfig;->getSupportedAdsTypes(Lio/bidmachine/NetworkAdapter;)[Lio/bidmachine/AdsType;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    array-length v1, v0

    .line 86
    const/4 v2, 0x0

    .line 87
    :goto_1
    if-ge v2, v1, :cond_2

    .line 88
    .line 89
    aget-object v3, v0, v2

    .line 90
    .line 91
    sget-object v4, Lio/bidmachine/NetworkRegistry$b;->h:Ljava/lang/Object;

    .line 92
    .line 93
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    sget-object v5, Lio/bidmachine/NetworkRegistry;->CORE_NETWORK_CONFIG_MAP:Ljava/util/Map;

    .line 95
    .line 96
    iget-object v6, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    .line 97
    .line 98
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_1

    .line 103
    .line 104
    sget-object v5, Lio/bidmachine/NetworkRegistry;->INITIALIZED_CORE_NETWORK_CONFIG_TYPED_MAP:Ljava/util/Map;

    .line 105
    .line 106
    iget-object v6, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v7, p0, Lio/bidmachine/NetworkRegistry$b;->c:Lio/bidmachine/NetworkConfig;

    .line 109
    .line 110
    invoke-direct {p0, v5, v3, v6, v7}, Lio/bidmachine/NetworkRegistry$b;->d(Ljava/util/Map;Lio/bidmachine/AdsType;Ljava/lang/String;Lio/bidmachine/NetworkConfig;)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :catchall_1
    move-exception v0

    .line 115
    goto :goto_3

    .line 116
    :cond_1
    :goto_2
    sget-object v5, Lio/bidmachine/NetworkRegistry;->INITIALIZED_NETWORK_CONFIG_TYPED_MAP:Ljava/util/Map;

    .line 117
    .line 118
    iget-object v6, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v7, p0, Lio/bidmachine/NetworkRegistry$b;->c:Lio/bidmachine/NetworkConfig;

    .line 121
    .line 122
    invoke-direct {p0, v5, v3, v6, v7}, Lio/bidmachine/NetworkRegistry$b;->d(Ljava/util/Map;Lio/bidmachine/AdsType;Ljava/lang/String;Lio/bidmachine/NetworkConfig;)V

    .line 123
    .line 124
    .line 125
    monitor-exit v4

    .line 126
    add-int/lit8 v2, v2, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    :try_start_2
    throw v0

    .line 131
    :cond_2
    sget-object v0, Lio/bidmachine/NetworkRegistry;->PENDING_NETWORK_CONFIG_MAP:Ljava/util/Map;

    .line 132
    .line 133
    iget-object v1, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    .line 134
    .line 135
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    .line 137
    .line 138
    goto :goto_5

    .line 139
    :goto_4
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    const-string v0, "Network initialization exception"

    .line 143
    .line 144
    invoke-virtual {p0, v0}, Lio/bidmachine/NetworkRegistry$b;->h(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :goto_5
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$b;->d:Lio/bidmachine/NetworkRegistry$c;

    .line 148
    .line 149
    if-eqz v0, :cond_3

    .line 150
    .line 151
    invoke-interface {v0}, Lio/bidmachine/NetworkRegistry$c;->a()V

    .line 152
    .line 153
    .line 154
    :cond_3
    return-void
.end method
