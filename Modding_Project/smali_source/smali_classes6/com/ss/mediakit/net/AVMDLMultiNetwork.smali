.class public Lcom/ss/mediakit/net/AVMDLMultiNetwork;
.super Ljava/lang/Object;
.source "AVMDLMultiNetwork.java"


# static fields
.field public static final MSG_IS_NETWORK_AVAILABLE:I = 0x0

.field public static final MSG_IS_NETWORK_CHANGED:I = 0x3

.field public static final MSG_IS_SWITCH_TO_CELLULAR_NETWORK:I = 0x1

.field public static final MSG_IS_SWITCH_TO_DEFAULT_NETWORK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AVMDLMultiNetwork"

.field static loopRefreshRunnable:Ljava/lang/Runnable; = null

.field private static mCellularNetwork:Landroid/net/Network; = null

.field private static mCm:Landroid/net/ConnectivityManager; = null

.field private static mCurNetId:J = 0x0L

.field private static mCurNetwork:Landroid/net/Network; = null

.field protected static mHandler:Landroid/os/Handler; = null

.field private static mIsIPv4Reachable:Z = true

.field private static mIsIPv6Reachable:Z = true

.field public static final mLoopIpRefreshInterval:I = 0xea60

.field private static mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/mediakit/net/AVMDLMultiNetwork$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/mediakit/net/AVMDLMultiNetwork$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->loopRefreshRunnable:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000()Landroid/net/ConnectivityManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mCm:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100(Landroid/net/Network;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->onAvailableInternal(Landroid/net/Network;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->switchToCellularNetworkInternal()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->switchToDefaultNetworkInternal()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static alwayUpCellular(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->initHandler(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mCm:Landroid/net/ConnectivityManager;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const-string p0, "AVMDLMultiNetwork"

    .line 10
    .line 11
    const-string v1, "cm is null"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    new-instance p0, Landroid/net/NetworkRequest$Builder;

    .line 18
    .line 19
    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 20
    .line 21
    .line 22
    const/16 v1, 0xc

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :try_start_0
    sget-object v1, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mCm:Landroid/net/ConnectivityManager;

    .line 37
    .line 38
    new-instance v2, Lcom/ss/mediakit/net/AVMDLMultiNetwork$3;

    .line 39
    .line 40
    invoke-direct {v2}, Lcom/ss/mediakit/net/AVMDLMultiNetwork$3;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p0, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    return p0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    return v0
.end method

.method public static getCellularNetwork()Landroid/net/Network;
    .locals 2

    .line 1
    const-class v0, Lcom/ss/mediakit/net/AVMDLMultiNetwork;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mCellularNetwork:Landroid/net/Network;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public static getCurNetwork()Landroid/net/Network;
    .locals 2

    .line 1
    const-class v0, Lcom/ss/mediakit/net/AVMDLMultiNetwork;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mCurNetwork:Landroid/net/Network;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method private static getNetId(Landroid/net/Network;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/net/Network;->getNetworkHandle()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method private static initHandler(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-class v0, Lcom/ss/mediakit/net/AVMDLMultiNetwork;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mThread:Landroid/os/HandlerThread;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/os/HandlerThread;

    .line 9
    .line 10
    const-string v2, "AVMDLMultiNetwork"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mThread:Landroid/os/HandlerThread;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/ss/mediakit/net/AVMDLMultiNetwork$4;

    .line 21
    .line 22
    sget-object v2, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mThread:Landroid/os/HandlerThread;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v1, v2}, Lcom/ss/mediakit/net/AVMDLMultiNetwork$4;-><init>(Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    sput-object v1, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mHandler:Landroid/os/Handler;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 37
    .line 38
    sget-object v1, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mCm:Landroid/net/ConnectivityManager;

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    const-string v1, "connectivity"

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 49
    .line 50
    sput-object p0, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mCm:Landroid/net/ConnectivityManager;

    .line 51
    .line 52
    :cond_1
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public static isIPv4Reachable()Z
    .locals 2

    .line 1
    const-class v0, Lcom/ss/mediakit/net/AVMDLMultiNetwork;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mIsIPv4Reachable:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public static isIPv6Reachable()Z
    .locals 2

    .line 1
    const-class v0, Lcom/ss/mediakit/net/AVMDLMultiNetwork;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mIsIPv6Reachable:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method private static onAvailableInternal(Landroid/net/Network;)V
    .locals 5

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    sget-object v0, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mCm:Landroid/net/ConnectivityManager;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string/jumbo v1, "start on available"

    .line 14
    .line 15
    .line 16
    const-string v2, "AVMDLMultiNetwork"

    .line 17
    .line 18
    invoke-static {v2, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "network name: "

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, "["

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v3, "], state: "

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, " netid:"

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-static {p0}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->getNetId(Landroid/net/Network;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v2, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    sget-object v0, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mCm:Landroid/net/ConnectivityManager;

    .line 84
    .line 85
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_2

    .line 97
    .line 98
    const/16 v1, 0xc

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    invoke-static {p0}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->onCellularNetwork(Landroid/net/Network;)V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getInstance()Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->onInitMultiNetworkEnv()I

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getInstance()Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    const-wide/16 v0, 0x0

    .line 122
    .line 123
    invoke-virtual {p0, v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->onCellularAlwaysUp(J)I

    .line 124
    .line 125
    .line 126
    :goto_0
    const-string p0, "end on available"

    .line 127
    .line 128
    invoke-static {v2, p0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    :goto_1
    return-void
.end method

.method public static onCellularNetwork(Landroid/net/Network;)V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/mediakit/net/AVMDLMultiNetwork;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p0, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mCellularNetwork:Landroid/net/Network;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public static refreshIpReachable()V
    .locals 0

    .line 1
    return-void
.end method

.method public static registerNetworkChangeCallback(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->initHandler(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mCm:Landroid/net/ConnectivityManager;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const-string p0, "AVMDLMultiNetwork"

    .line 10
    .line 11
    const-string v1, "cm is null"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    new-instance p0, Landroid/net/NetworkRequest$Builder;

    .line 18
    .line 19
    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :try_start_0
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getInstance()Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getConfig()Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget v1, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableNetworkChangeNotify:I

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    sget-object v1, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mCm:Landroid/net/ConnectivityManager;

    .line 40
    .line 41
    new-instance v3, Lcom/ss/mediakit/net/AVMDLMultiNetwork$2;

    .line 42
    .line 43
    invoke-direct {v3}, Lcom/ss/mediakit/net/AVMDLMultiNetwork$2;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p0, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    return v2

    .line 53
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    return v0
.end method

.method public static setCurNetwork(Landroid/net/Network;)V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/mediakit/net/AVMDLMultiNetwork;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p0, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mCurNetwork:Landroid/net/Network;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public static setIPv4Reachable(Z)V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/mediakit/net/AVMDLMultiNetwork;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-boolean p0, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mIsIPv4Reachable:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public static setIPv6Reachable(Z)V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/mediakit/net/AVMDLMultiNetwork;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-boolean p0, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mIsIPv6Reachable:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public static switchToCellularNetwork()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Message;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput v1, v0, Landroid/os/Message;->what:I

    .line 12
    .line 13
    sget-object v1, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    const-string v0, "AVMDLMultiNetwork"

    .line 19
    .line 20
    const-string v1, "send msg of switch to cellular network"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private static switchToCellularNetworkInternal()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->getCellularNetwork()Landroid/net/Network;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {v0}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->getNetId(Landroid/net/Network;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v4, "try switch to cellular curNetId: "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    sget-wide v4, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mCurNetId:J

    .line 24
    .line 25
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v4, " netId:"

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "AVMDLMultiNetwork"

    .line 41
    .line 42
    invoke-static {v4, v3}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-wide v5, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mCurNetId:J

    .line 46
    .line 47
    cmp-long v3, v5, v1

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    const-string v3, "do switch"

    .line 52
    .line 53
    invoke-static {v4, v3}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/ss/mediakit/net/IPCache;->getInstance()Lcom/ss/mediakit/net/IPCache;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Lcom/ss/mediakit/net/IPCache;->clear()V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getInstance()Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v0}, Lcom/ss/mediakit/net/NetUtils;->getNetId(Landroid/net/Network;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v5

    .line 71
    invoke-virtual {v3, v5, v6}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->onCellularAlwaysUp(J)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    sput-wide v1, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mCurNetId:J

    .line 76
    .line 77
    invoke-static {v0}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->setCurNetwork(Landroid/net/Network;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const-string v0, "cur is cellular, not need switch"

    .line 82
    .line 83
    invoke-static {v4, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const/4 v3, 0x0

    .line 87
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v1, "end switch to cellular, ret:"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v4, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public static switchToDefaultNetwork()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Message;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    iput v1, v0, Landroid/os/Message;->what:I

    .line 12
    .line 13
    sget-object v1, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    const-string v0, "AVMDLMultiNetwork"

    .line 19
    .line 20
    const-string v1, "send msg of switch to default network"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private static switchToDefaultNetworkInternal()V
    .locals 6

    .line 1
    const-string/jumbo v0, "try switch to default network"

    .line 2
    .line 3
    .line 4
    const-string v1, "AVMDLMultiNetwork"

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-wide v2, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mCurNetId:J

    .line 10
    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    cmp-long v0, v2, v4

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "do switch"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/ss/mediakit/net/IPCache;->getInstance()Lcom/ss/mediakit/net/IPCache;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/ss/mediakit/net/IPCache;->clear()V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getInstance()Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, v4, v5}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->onCellularAlwaysUp(J)I

    .line 34
    .line 35
    .line 36
    sput-wide v4, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mCurNetId:J

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-static {v0}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->setCurNetwork(Landroid/net/Network;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    const-string v0, "end try switch to default network"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
