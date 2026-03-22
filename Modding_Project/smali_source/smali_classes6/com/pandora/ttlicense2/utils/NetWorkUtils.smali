.class public Lcom/pandora/ttlicense2/utils/NetWorkUtils;
.super Ljava/lang/Object;
.source "NetWorkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandora/ttlicense2/utils/NetWorkUtils$NetworkInfoListener;
    }
.end annotation


# static fields
.field public static NETWORK_INFO_EXPIRED_TIME_MS:I = 0x3e8

.field private static final receiver:Landroid/content/BroadcastReceiver;

.field private static volatile sEnable:Z

.field private static sListener:Lcom/pandora/ttlicense2/utils/NetWorkUtils$NetworkInfoListener;

.field private static sNetworkInfo:Landroid/net/NetworkInfo;

.field private static sNetworkInfoUpdateTimeMS:J

.field private static sRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/pandora/ttlicense2/utils/NetWorkUtils$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/pandora/ttlicense2/utils/NetWorkUtils$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->receiver:Landroid/content/BroadcastReceiver;

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

.method static synthetic access$000(Landroid/net/NetworkInfo;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->updateNetworkInfoCache(Landroid/net/NetworkInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$200()Lcom/pandora/ttlicense2/utils/NetWorkUtils$NetworkInfoListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->sListener:Lcom/pandora/ttlicense2/utils/NetWorkUtils$NetworkInfoListener;

    .line 2
    .line 3
    return-object v0
.end method

.method private static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->sEnable:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    const-string v0, "connectivity"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->updateNetworkInfoCache(Landroid/net/NetworkInfo;)V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    return-object v1
.end method

.method private static getNetworkInfoOptANR(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    .line 1
    const-class v0, Lcom/pandora/ttlicense2/utils/NetWorkUtils;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->sNetworkInfo:Landroid/net/NetworkInfo;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->isNetworkInfoCacheExpired()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    invoke-static {p0}, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p0
.end method

.method public static isNetAvailable(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->resister(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
.end method

.method public static isNetAvailableOptANR(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->resister(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->getNetworkInfoOptANR(Landroid/content/Context;)Landroid/net/NetworkInfo;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
.end method

.method private static isNetworkInfoCacheExpired()Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-class v2, Lcom/pandora/ttlicense2/utils/NetWorkUtils;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    sget-wide v3, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->sNetworkInfoUpdateTimeMS:J

    .line 9
    .line 10
    sub-long/2addr v0, v3

    .line 11
    sget v3, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->NETWORK_INFO_EXPIRED_TIME_MS:I

    .line 12
    .line 13
    int-to-long v3, v3

    .line 14
    cmp-long v0, v0, v3

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    monitor-exit v2

    .line 22
    return v0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v0
.end method

.method private static declared-synchronized resister(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-class v0, Lcom/pandora/ttlicense2/utils/NetWorkUtils;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->sEnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    const-class v1, Lcom/pandora/ttlicense2/utils/NetWorkUtils;

    .line 11
    .line 12
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :try_start_2
    sget-boolean v2, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->sRegistered:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v2, 0x1

    .line 23
    :try_start_3
    sput-boolean v2, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->sRegistered:Z

    .line 24
    .line 25
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 26
    :try_start_4
    new-instance v1, Landroid/content/IntentFilter;

    .line 27
    .line 28
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 29
    .line 30
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v2, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->receiver:Landroid/content/BroadcastReceiver;

    .line 34
    .line 35
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :catchall_1
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 43
    :try_start_6
    throw p0

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 45
    throw p0
.end method

.method public static setEnable(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->sEnable:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->resister(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->unregister(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method public static setNetworkInfoListener(Landroid/content/Context;Lcom/pandora/ttlicense2/utils/NetWorkUtils$NetworkInfoListener;)V
    .locals 1

    .line 1
    const-class v0, Lcom/pandora/ttlicense2/utils/NetWorkUtils;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p1, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->sListener:Lcom/pandora/ttlicense2/utils/NetWorkUtils$NetworkInfoListener;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {p0}, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->resister(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw p0
.end method

.method private static declared-synchronized unregister(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-class v0, Lcom/pandora/ttlicense2/utils/NetWorkUtils;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->sRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :try_start_1
    sput-boolean v1, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->sRegistered:Z

    .line 12
    .line 13
    sget-object v1, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->receiver:Landroid/content/BroadcastReceiver;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    throw p0
.end method

.method private static updateNetworkInfoCache(Landroid/net/NetworkInfo;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-class v2, Lcom/pandora/ttlicense2/utils/NetWorkUtils;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    sput-object p0, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->sNetworkInfo:Landroid/net/NetworkInfo;

    .line 9
    .line 10
    sput-wide v0, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->sNetworkInfoUpdateTimeMS:J

    .line 11
    .line 12
    monitor-exit v2

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method
