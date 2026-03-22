.class public Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;
.super Ljava/lang/Object;
.source "HeadsetStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetStateChangedListener;,
        Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetReceiver;
    }
.end annotation


# static fields
.field private static final MASK_WIRED:I = 0x1

.field private static final MASK_WIRELESS:I = 0x2

.field private static final STATE_NOTHING_CONNECTED:I = 0x0

.field private static final STATE_UNINITIALIZED:I = 0xff00

.field private static final TAG:Ljava/lang/String; = "HeadsetStateMonitor"

.field private static sInstance:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;


# instance fields
.field private final mChangeListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetReceiver:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetReceiver;

.field private volatile mHeadsetState:I

.field private volatile mIsStarted:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mChangeListener:Ljava/util/List;

    .line 10
    .line 11
    const v0, 0xff00

    .line 12
    .line 13
    .line 14
    iput v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mHeadsetState:I

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    new-instance p1, Landroid/os/Handler;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mHandler:Landroid/os/Handler;

    .line 32
    .line 33
    return-void
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->runOnThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->onDisconnected(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->onConnected(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addListenerInternal(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetStateChangedListener;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mChangeListener:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mChangeListener:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v0, "listener: "

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mChangeListener:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "HeadsetStateMonitor"

    .line 40
    .line 41
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private getHeadsetState(Landroid/content/Context;)I
    .locals 8

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getEngineOptimizeFlag()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x4

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->isFlagOn(JJ)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mIsStarted:Z

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_0
    const v0, 0xff00

    .line 24
    .line 25
    .line 26
    :try_start_0
    const-string v1, "audio"

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    const-string v1, "HeadsetStateMonitor"

    .line 35
    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    :try_start_1
    const-string p1, "AudioManager is null"

    .line 39
    .line 40
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return v0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    .line 49
    const/16 v3, 0x19

    .line 50
    .line 51
    if-ne v2, v3, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_9

    .line 68
    .line 69
    :cond_2
    or-int/lit8 v1, v1, 0x2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const/4 v2, 0x2

    .line 73
    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    array-length v2, p1

    .line 78
    const/4 v3, 0x0

    .line 79
    move v4, v3

    .line 80
    :goto_0
    if-ge v4, v2, :cond_8

    .line 81
    .line 82
    aget-object v5, p1, v4

    .line 83
    .line 84
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    const/4 v7, 0x3

    .line 89
    if-eq v6, v7, :cond_4

    .line 90
    .line 91
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    const/4 v7, 0x4

    .line 96
    if-ne v6, v7, :cond_5

    .line 97
    .line 98
    :cond_4
    or-int/lit8 v3, v3, 0x1

    .line 99
    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string/jumbo v7, "wired device: "

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-static {v1, v6}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_5
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    const/16 v7, 0x8

    .line 130
    .line 131
    if-eq v6, v7, :cond_6

    .line 132
    .line 133
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    const/4 v7, 0x7

    .line 138
    if-ne v6, v7, :cond_7

    .line 139
    .line 140
    :cond_6
    or-int/lit8 v3, v3, 0x2

    .line 141
    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v7, "bluetooth device: "

    .line 148
    .line 149
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-static {v1, v5}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    .line 165
    .line 166
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_8
    move v1, v3

    .line 170
    :cond_9
    :goto_1
    return v1

    .line 171
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 172
    .line 173
    .line 174
    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->sInstance:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->sInstance:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->sInstance:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_2
    sget-object p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->sInstance:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    .line 27
    .line 28
    return-object p0
.end method

.method private synthetic lambda$addStateChangedListener$1(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetStateChangedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->addListenerInternal(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetStateChangedListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$removeStateChangedListener$2(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetStateChangedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->removeListenerInternal(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetStateChangedListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$start$0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->getHeadsetState(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mHeadsetState:I

    .line 8
    .line 9
    return-void
.end method

.method private notifyStateChanged(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mChangeListener:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    move v1, v0

    .line 12
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mChangeListener:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ge v1, v2, :cond_4

    .line 19
    .line 20
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mChangeListener:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetStateChangedListener;

    .line 27
    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->isWiredConnected()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->isWirelessConnected()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v3, v0

    .line 44
    goto :goto_2

    .line 45
    :catch_0
    move-exception p1

    .line 46
    goto :goto_3

    .line 47
    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 48
    :goto_2
    invoke-interface {v2, v3, p1}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetStateChangedListener;->onHeadsetStateChanged(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    :cond_4
    return-void
.end method

.method private onConnected(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onConnected, "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "HeadsetStateMonitor"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mHeadsetState:I

    .line 24
    .line 25
    const v1, 0xff00

    .line 26
    .line 27
    .line 28
    if-ne v0, v1, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->getHeadsetState(Landroid/content/Context;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mHeadsetState:I

    .line 37
    .line 38
    :cond_0
    iget v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mHeadsetState:I

    .line 39
    .line 40
    or-int/2addr v0, p1

    .line 41
    iget v1, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mHeadsetState:I

    .line 42
    .line 43
    if-ne v0, v1, :cond_1

    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iput v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mHeadsetState:I

    .line 47
    .line 48
    const/4 v0, 0x2

    .line 49
    if-ne p1, v0, :cond_2

    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 p1, 0x0

    .line 54
    :goto_0
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->notifyStateChanged(Z)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private onDisconnected(I)V
    .locals 2

    .line 1
    const-string v0, "HeadsetStateMonitor"

    .line 2
    .line 3
    const-string v1, "onDisconnected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mHeadsetState:I

    .line 9
    .line 10
    const v1, 0xff00

    .line 11
    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->getHeadsetState(Landroid/content/Context;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mHeadsetState:I

    .line 22
    .line 23
    :cond_0
    iget v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mHeadsetState:I

    .line 24
    .line 25
    not-int p1, p1

    .line 26
    and-int/2addr p1, v0

    .line 27
    iget v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mHeadsetState:I

    .line 28
    .line 29
    if-ne p1, v0, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iput p1, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mHeadsetState:I

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->isWirelessConnected()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->notifyStateChanged(Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private registerBroadcastReceiver(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method private removeListenerInternal(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetStateChangedListener;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mChangeListener:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "listener: "

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->mChangeListener:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "HeadsetStateMonitor"

    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private static runOnThread(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method private unregisterBroadcastReceiver(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public addStateChangedListener(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetStateChangedListener;)V
    .locals 0

    .line 1
    return-void
.end method

.method public isWiredConnected()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isWirelessConnected()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public removeStateChangedListener(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetStateChangedListener;)V
    .locals 0

    .line 1
    return-void
.end method

.method public start()V
    .locals 0

    .line 1
    return-void
.end method

.method public stop()V
    .locals 0

    .line 1
    return-void
.end method
