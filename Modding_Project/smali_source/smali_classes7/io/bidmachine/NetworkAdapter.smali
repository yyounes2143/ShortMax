.class public abstract Lio/bidmachine/NetworkAdapter;
.super Ljava/lang/Object;
.source "NetworkAdapter.java"


# instance fields
.field private final adapterMinDeviceApiVersion:I

.field private final adapterVersion:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final compiledNetworkSdkVersion:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final initializeCallbackSet:Ljava/util/Set;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/bidmachine/InternalNetworkInitializationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final key:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private networkSdkVersion:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final supportedTypes:[Lio/bidmachine/AdsType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lio/bidmachine/AdsType;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # [Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/NetworkAdapter;->key:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/NetworkAdapter;->compiledNetworkSdkVersion:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lio/bidmachine/NetworkAdapter;->adapterVersion:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lio/bidmachine/NetworkAdapter;->adapterMinDeviceApiVersion:I

    .line 11
    .line 12
    iput-object p5, p0, Lio/bidmachine/NetworkAdapter;->supportedTypes:[Lio/bidmachine/AdsType;

    .line 13
    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lio/bidmachine/NetworkAdapter;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lio/bidmachine/NetworkAdapter;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lio/bidmachine/NetworkAdapter;->initializeCallbackSet:Ljava/util/Set;

    .line 35
    .line 36
    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/NetworkAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/NetworkAdapter;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lio/bidmachine/NetworkAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/NetworkAdapter;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lio/bidmachine/NetworkAdapter;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/NetworkAdapter;->initializeCallbackSet:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public static isSkipInitialization(Lio/bidmachine/NetworkConfigParams;)Z
    .locals 1
    .param p0    # Lio/bidmachine/NetworkConfigParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "skip_initialization"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lio/bidmachine/NetworkConfigParams;->getFromNetworkParams(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method


# virtual methods
.method public clearAuction(Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .param p1    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public createBanner()Lxq/e;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " adapter does not support banner"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public createInterstitial()Lxq/h;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " adapter does not support static interstitial"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public createNativeAd()Lxq/l;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " adapter does not support native ads"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public createRewarded()Lxq/h;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " adapter does not support rewarded interstitial"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public getAdapterMinDeviceApiVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/NetworkAdapter;->adapterMinDeviceApiVersion:I

    .line 2
    .line 3
    return v0
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->adapterVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkSdkVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getSupportedTypes()[Lio/bidmachine/AdsType;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->supportedTypes:[Lio/bidmachine/AdsType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final initialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/InternalNetworkInitializationCallback;)V
    .locals 2
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/InitializationParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/NetworkConfigParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/InternalNetworkInitializationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    iget v1, p0, Lio/bidmachine/NetworkAdapter;->adapterMinDeviceApiVersion:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string p2, "minSdkVersion is "

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget p2, p0, Lio/bidmachine/NetworkAdapter;->adapterMinDeviceApiVersion:I

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p4, p0, p1}, Lio/bidmachine/InternalNetworkInitializationCallback;->onFail(Lio/bidmachine/NetworkAdapter;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lio/bidmachine/NetworkAdapter;->isInitialized(Lio/bidmachine/ContextProvider;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-interface {p4, p0}, Lio/bidmachine/InternalNetworkInitializationCallback;->onSuccess(Lio/bidmachine/NetworkAdapter;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-static {p3}, Lio/bidmachine/NetworkAdapter;->isSkipInitialization(Lio/bidmachine/NetworkConfigParams;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x1

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->isNetworkInitializationStatusCheckSupported()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string p2, "Network initialization status check is not supported, force initialization to true"

    .line 58
    .line 59
    invoke-static {p1, p2}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lio/bidmachine/NetworkAdapter;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string p2, "Network initialization is skipped"

    .line 72
    .line 73
    invoke-static {p1, p2}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p4, p0}, Lio/bidmachine/InternalNetworkInitializationCallback;->onSuccess(Lio/bidmachine/NetworkAdapter;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->initializeCallbackSet:Ljava/util/Set;

    .line 81
    .line 82
    invoke-interface {v0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    iget-object p4, p0, Lio/bidmachine/NetworkAdapter;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p4, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 89
    .line 90
    .line 91
    move-result p4

    .line 92
    if-nez p4, :cond_4

    .line 93
    .line 94
    return-void

    .line 95
    :cond_4
    new-instance p4, Lio/bidmachine/NetworkAdapter$a;

    .line 96
    .line 97
    invoke-direct {p4, p0}, Lio/bidmachine/NetworkAdapter$a;-><init>(Lio/bidmachine/NetworkAdapter;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/NetworkAdapter;->onNetworkInitialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/NetworkInitializationCallback;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public isAdsTypeSupported(Lio/bidmachine/AdsType;)Z
    .locals 5
    .param p1    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->supportedTypes:[Lio/bidmachine/AdsType;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_1

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    if-ne v4, p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return v2
.end method

.method public final isInitialized(Landroid/content/Context;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/SimpleContextProvider;

    invoke-direct {v0, p1}, Lio/bidmachine/SimpleContextProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lio/bidmachine/NetworkAdapter;->isInitialized(Lio/bidmachine/ContextProvider;)Z

    move-result p1

    return p1
.end method

.method public final isInitialized(Lio/bidmachine/ContextProvider;)Z
    .locals 2
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lio/bidmachine/NetworkAdapter;->isNetworkInitialized(Lio/bidmachine/ContextProvider;)Z

    move-result p1

    .line 4
    iget-object v1, p0, Lio/bidmachine/NetworkAdapter;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    return v0
.end method

.method public final isInitializing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.method protected abstract isNetworkInitializationStatusCheckSupported()Z
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation
.end method

.method protected abstract isNetworkInitialized(Lio/bidmachine/ContextProvider;)Z
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public final obtainNetworkSdkVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->networkSdkVersion:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->networkSdkVersion:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->getNetworkSdkVersion()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lio/bidmachine/NetworkAdapter;->networkSdkVersion:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->networkSdkVersion:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    return-object v0

    .line 27
    :catchall_0
    :cond_1
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter;->compiledNetworkSdkVersion:Ljava/lang/String;

    .line 28
    .line 29
    return-object v0
.end method

.method public onLossAuction(Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .param p1    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected abstract onNetworkInitialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/NetworkInitializationCallback;)V
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/InitializationParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/NetworkConfigParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/NetworkInitializationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public onWinAuction(Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .param p1    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public setLogging(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    return-void
.end method
