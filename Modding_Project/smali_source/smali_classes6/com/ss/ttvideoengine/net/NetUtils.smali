.class public Lcom/ss/ttvideoengine/net/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# static fields
.field public static final NETTYPE_UNKNOWN:I = -0x1

.field public static netUpdateTimeMs:J = -0x1L

.field private static final networkReceiver:Landroid/content/BroadcastReceiver;

.field public static registerNetworkReceiver:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/net/NetUtils$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/ttvideoengine/net/NetUtils$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttvideoengine/net/NetUtils;->networkReceiver:Landroid/content/BroadcastReceiver;

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

.method public static getNetExtraInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/ss/ttvideoengine/net/NetUtils;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    return-object p0

    .line 19
    :catchall_0
    :cond_0
    return-object v0
.end method

.method public static getNetType(Landroid/content/Context;)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/ss/ttvideoengine/net/NetUtils;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 15
    .line 16
    .line 17
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    return p0

    .line 19
    :catchall_0
    :cond_0
    return v0
.end method

.method public static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/ss/ttvideoengine/net/NetUtils;->registerNetworkReceiver:Z

    .line 6
    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    sget-object v1, Lcom/ss/ttvideoengine/net/NetUtils;->networkReceiver:Landroid/content/BroadcastReceiver;

    .line 10
    .line 11
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    sget-boolean v2, Lcom/ss/ttvideoengine/net/NetUtils;->registerNetworkReceiver:Z

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    sput-boolean v2, Lcom/ss/ttvideoengine/net/NetUtils;->registerNetworkReceiver:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Landroid/content/IntentFilter;

    .line 24
    .line 25
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 26
    .line 27
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    monitor-exit v1

    .line 37
    goto :goto_2

    .line 38
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :try_start_2
    throw p0

    .line 40
    :cond_2
    :goto_2
    const-string v1, "connectivity"

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 49
    .line 50
    .line 51
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    return-object p0

    .line 53
    :catchall_1
    return-object v0
.end method

.method public static isNetAvailable(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/net/NetUtils;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public static release(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/ss/ttvideoengine/net/NetUtils;->networkReceiver:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    sget-boolean v1, Lcom/ss/ttvideoengine/net/NetUtils;->registerNetworkReceiver:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    sput-boolean v1, Lcom/ss/ttvideoengine/net/NetUtils;->registerNetworkReceiver:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    goto :goto_2

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :goto_2
    return-void
.end method
