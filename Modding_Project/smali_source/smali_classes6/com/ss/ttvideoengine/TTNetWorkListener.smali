.class public Lcom/ss/ttvideoengine/TTNetWorkListener;
.super Landroid/content/BroadcastReceiver;
.source "TTNetWorkListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/TTNetWorkListener$MyThread;,
        Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;
    }
.end annotation


# static fields
.field public static final ACCESS_STRENGTH_EXCELLENT:I = 0x4

.field public static final ACCESS_STRENGTH_GOOD:I = 0x3

.field public static final ACCESS_STRENGTH_MEDIUM:I = 0x2

.field public static final ACCESS_STRENGTH_UNKNOWN:I = 0xa

.field public static final ACCESS_STRENGTH_WEAK:I = 0x1

.field public static final ACCESS_TYPE_2G:I = 0x2

.field public static final ACCESS_TYPE_3G:I = 0x3

.field public static final ACCESS_TYPE_4G:I = 0x1

.field public static final ACCESS_TYPE_5G:I = 0x4

.field public static final ACCESS_TYPE_DISCONNECT:I = -0x1

.field public static final ACCESS_TYPE_MOBILE:I = 0x6

.field public static final ACCESS_TYPE_UNKNOWN:I = 0x3e8

.field public static final ACCESS_TYPE_WIFI:I = 0x0

.field public static final CALLBACK_NETWORK_TYPE:I = 0x0

.field public static final CALLBACK_SIGNAL_STRENGTH:I = 0x1

.field public static final NETWORK_LISTENER_KEY_LEVEL_CODE_MAP:I = 0x5

.field public static final NETWORK_LISTENER_KEY_NET_LEVEL_MAX_COUNT:I = 0x1

.field public static final NETWORK_LISTENER_KEY_RTT_CODE_MAP:I = 0x3

.field public static final NETWORK_LISTENER_KEY_SIG_CODE_MAP:I = 0x4

.field public static final NETWORK_LISTENER_KEY_TIMER_TASK_INTERVAL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TTNetWorkListener"

.field private static mInst:Lcom/ss/ttvideoengine/TTNetWorkListener;


# instance fields
.field private mCurrentAccessStrength:I

.field private mCurrentAccessType:I

.field private mInited:I

.field private mIsWifiSensitiveMode:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTNetworkStateCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private mPhoneStateListener:Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3e8

    .line 5
    .line 6
    iput v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mCurrentAccessType:I

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    iput v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mCurrentAccessStrength:I

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mListeners:Ljava/util/ArrayList;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mInited:I

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mPhoneStateListener:Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mIsWifiSensitiveMode:Z

    .line 33
    .line 34
    return-void
.end method

.method private _handleNetworkChange(I)V
    .locals 2

    .line 3
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->convertNetworkType(I)I

    move-result p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "network change to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTNetWorkListener"

    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->updateAccessType(I)V

    return-void
.end method

.method private _handleNetworkChange(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getNetworkType(Landroid/content/Context;)I

    move-result p1

    .line 2
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->updateAccessType(I)V

    return-void
.end method

.method private _handleSigStrengthChange(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mCurrentAccessStrength:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mCurrentAccessStrength:I

    .line 11
    .line 12
    iput p1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mCurrentAccessStrength:I

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v1, "strength changed, from: "

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, " to: "

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mCurrentAccessStrength:I

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, " callback list size: "

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mListeners:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v1, "TTNetWorkListener"

    .line 57
    .line 58
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mListeners:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lcom/ss/ttvideoengine/TTNetworkStateCallback;

    .line 84
    .line 85
    if-nez v1, :cond_0

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    const/4 v2, 0x1

    .line 92
    iget v3, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mCurrentAccessStrength:I

    .line 93
    .line 94
    invoke-interface {v1, v2, v0, v3}, Lcom/ss/ttvideoengine/TTNetworkStateCallback;->onAccessChanged(III)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 99
    .line 100
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101
    .line 102
    .line 103
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/TTNetWorkListener;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mCurrentAccessType:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/TTNetWorkListener;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->_handleNetworkChange(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/ss/ttvideoengine/TTNetWorkListener;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->_handleSigStrengthChange(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$302(Lcom/ss/ttvideoengine/TTNetWorkListener;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mIsWifiSensitiveMode:Z

    .line 2
    .line 3
    return p1
.end method

.method private static convertNetworkType(I)I
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x6

    .line 9
    return p0

    .line 10
    :pswitch_0
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :pswitch_1
    const/4 p0, 0x3

    .line 13
    return p0

    .line 14
    :pswitch_2
    const/4 p0, 0x2

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x4

    .line 17
    return p0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/ss/ttvideoengine/TTNetWorkListener;
    .locals 2

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/TTNetWorkListener;->mInst:Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/ss/ttvideoengine/TTNetWorkListener;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/ss/ttvideoengine/TTNetWorkListener;->mInst:Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/ss/ttvideoengine/TTNetWorkListener;->mInst:Lcom/ss/ttvideoengine/TTNetWorkListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method

.method private getNetworkType(Landroid/content/Context;)I
    .locals 6

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    const-string v1, "connectivity"

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    const-string v2, "TTNetWorkListener"

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const-string p1, "disconnect"

    .line 20
    .line 21
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_7

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/4 v1, 0x1

    .line 39
    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v4, 0x0

    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 53
    .line 54
    if-eq v1, v5, :cond_3

    .line 55
    .line 56
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    .line 57
    .line 58
    if-ne v1, v5, :cond_4

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p1

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    :goto_0
    const-string/jumbo p1, "wifi"

    .line 64
    .line 65
    .line 66
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return v4

    .line 70
    :cond_4
    invoke-virtual {p1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_6

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string/jumbo v4, "state: "

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v4, ", subtype: "

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-static {v2, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    if-eqz p1, :cond_6

    .line 114
    .line 115
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 116
    .line 117
    if-eq p1, v3, :cond_5

    .line 118
    .line 119
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    .line 120
    .line 121
    if-ne p1, v3, :cond_6

    .line 122
    .line 123
    :cond_5
    invoke-static {v1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->convertNetworkType(I)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    return p1

    .line 128
    :cond_6
    return v0

    .line 129
    :cond_7
    :goto_1
    const-string p1, "disconnect 1"

    .line 130
    .line 131
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    return v1

    .line 135
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return v0
.end method

.method private getRssi(Landroid/content/Context;Landroid/net/ConnectivityManager;)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string/jumbo v0, "wifi"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 43
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 45
    .line 46
    const/16 v2, 0x1d

    .line 47
    .line 48
    if-lt v0, v2, :cond_0

    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p2, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    if-eqz p2, :cond_0

    .line 59
    .line 60
    invoke-static {p2}, Lcom/huawei/hms/framework/common/c;->a(Landroid/net/NetworkCapabilities;)Landroid/net/TransportInfo;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    move-object v1, p2

    .line 65
    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 66
    .line 67
    :cond_0
    if-nez v1, :cond_1

    .line 68
    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :cond_1
    if-eqz v1, :cond_2

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    return p1

    .line 82
    :cond_2
    const/4 p1, -0x1

    .line 83
    return p1
.end method

.method private getWIFISignalStrength(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 4

    .line 1
    const-string v0, "TTNetWorkListener"

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    :try_start_0
    const-string v2, "connectivity"

    .line 9
    .line 10
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    if-eqz p2, :cond_2

    .line 20
    .line 21
    const-string p1, "newRssi"

    .line 22
    .line 23
    const/16 v2, -0x46

    .line 24
    .line 25
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    iget-boolean p2, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mIsWifiSensitiveMode:Z

    .line 33
    .line 34
    if-nez p2, :cond_3

    .line 35
    .line 36
    invoke-direct {p0, p1, v2}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getRssi(Landroid/content/Context;Landroid/net/ConnectivityManager;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    const/4 p1, -0x1

    .line 42
    :goto_0
    const/4 p2, 0x4

    .line 43
    invoke-static {p1, p2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string/jumbo v3, "wifi dbm:"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p1, ", level:"

    .line 62
    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    add-int/lit8 v1, p2, 0x1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_2
    return v1
.end method

.method private updateAccessType(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mCurrentAccessType:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mCurrentAccessType:I

    .line 11
    .line 12
    iput p1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mCurrentAccessType:I

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "access changed, from: "

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, " to: "

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mCurrentAccessType:I

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, " callback list size: "

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mListeners:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v1, "TTNetWorkListener"

    .line 56
    .line 57
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mListeners:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lcom/ss/ttvideoengine/TTNetworkStateCallback;

    .line 83
    .line 84
    if-nez v1, :cond_0

    .line 85
    .line 86
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    const/4 v2, 0x0

    .line 91
    iget v3, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mCurrentAccessType:I

    .line 92
    .line 93
    invoke-interface {v1, v2, v0, v3}, Lcom/ss/ttvideoengine/TTNetworkStateCallback;->onAccessChanged(III)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 98
    .line 99
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 100
    .line 101
    .line 102
    :cond_2
    return-void
.end method


# virtual methods
.method public getCurrentAccessStrength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mCurrentAccessStrength:I

    .line 2
    .line 3
    return v0
.end method

.method public getCurrentAccessType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mCurrentAccessType:I

    .line 2
    .line 3
    return v0
.end method

.method public getSignalStrength()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mCurrentAccessType:I

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    const-string/jumbo v2, "unknown"

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    iget v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mCurrentAccessStrength:I

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_4

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_3

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_1
    const-string v0, "excellent"

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_2
    const-string v0, "good"

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_3
    const-string v0, "medium"

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_4
    const-string/jumbo v0, "weak"

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mInited:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    iput v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mInited:I

    .line 10
    .line 11
    new-instance v0, Lcom/ss/ttvideoengine/TTNetWorkListener$MyThread;

    .line 12
    .line 13
    invoke-direct {v0, p1, p0}, Lcom/ss/ttvideoengine/TTNetWorkListener$MyThread;-><init>(Landroid/content/Context;Lcom/ss/ttvideoengine/TTNetWorkListener;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mThread:Ljava/lang/Thread;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    throw p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mCurrentAccessType:I

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getEngineOptimizeFlag()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    const-wide/16 v2, 0x20

    .line 35
    .line 36
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->isFlagOn(JJ)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getWIFISignalStrength(Landroid/content/Context;Landroid/content/Intent;)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->_handleSigStrengthChange(I)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void

    .line 50
    :cond_2
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 51
    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v1, "network broadcast:"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    const-string v0, "TTNetWorkListener"

    .line 85
    .line 86
    invoke-static {v0, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->_handleNetworkChange(Landroid/content/Context;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    :goto_0
    return-void
.end method

.method public registerListener(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "TTNetWorkListener"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "enter start listen"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/content/IntentFilter;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "android.net.wifi.RSSI_CHANGED"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getNetworkType(Landroid/content/Context;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-direct {p0, v1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->updateAccessType(I)V

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mCurrentAccessType:I

    .line 34
    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, v1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getWIFISignalStrength(Landroid/content/Context;Landroid/content/Intent;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iput v1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mCurrentAccessStrength:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    new-instance v1, Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;

    .line 48
    .line 49
    invoke-direct {v1, p1, p0}, Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;-><init>(Landroid/content/Context;Lcom/ss/ttvideoengine/TTNetWorkListener;)V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mPhoneStateListener:Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;

    .line 53
    .line 54
    iget-boolean v2, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mIsWifiSensitiveMode:Z

    .line 55
    .line 56
    if-nez v2, :cond_1

    .line 57
    .line 58
    invoke-virtual {v1, p1}, Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;->register(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    const/4 p1, 0x1

    .line 62
    iput p1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mInited:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :goto_1
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    const-string/jumbo p1, "start listen network state failed"

    .line 69
    .line 70
    .line 71
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :goto_2
    return-void
.end method

.method public setIntValue(II)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    if-eq p1, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getInstance()Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x3

    .line 13
    invoke-virtual {p1, v0, p2}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->setIntOption(II)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-static {}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getInstance()Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, v1, p2}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->setIntOption(II)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public setStringValue(ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x5

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getInstance()Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->setStringOption(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public startListen(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTNetworkStateCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mListeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public stopListen(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTNetworkStateCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mListeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public unregisterListener(Landroid/content/Context;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mPhoneStateListener:Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener;->mPhoneStateListener:Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;->unregister(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    const-string p1, "TTNetWorkListener"

    .line 18
    .line 19
    const-string v0, "Receiver has been unregistered!"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method
