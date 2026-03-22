.class public Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;
.super Ljava/lang/Object;
.source "PlayerMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$InstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayerMetrics"

.field private static final cpuOverload:I = 0x64

.field private static final diagnoseInterval:I = 0x5

.field private static mTheadList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mdlNames:[Ljava/lang/String;

.field private static final memoryOverload:I = 0x320

.field private static final pcdnNames:[Ljava/lang/String;

.field private static final powerOverload:I = 0x1


# instance fields
.field private batteryListener:Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;

.field private mBatteryMetricsInfo:Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

.field private mContext:Landroid/content/Context;

.field private mCurDuraiton:J

.field private mDiagnoseInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/ttvideoengine/playermetrcis/DiagnoseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMetricsTime:J

.field private mMetricsAbility:I

.field private mMetricsInterval:I

.field private mThermalListener:Landroid/os/PowerManager$OnThermalStatusChangedListener;

.field private mThreadCPU:Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;

.field private powResult:Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "XYThread"

    .line 2
    .line 3
    const-string/jumbo v1, "vdp:vidtask:m"

    .line 4
    .line 5
    .line 6
    const-string v2, "KSThread"

    .line 7
    .line 8
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->pcdnNames:[Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "com.video.mdl.network_manager"

    .line 15
    .line 16
    const-string v1, "com.video.mdl.network_session"

    .line 17
    .line 18
    const-string v2, "MediaLoad"

    .line 19
    .line 20
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mdlNames:[Ljava/lang/String;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    sput-object v0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mTheadList:Ljava/util/ArrayList;

    .line 28
    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mContext:Landroid/content/Context;

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mCurDuraiton:J

    .line 5
    iput-wide v1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mLastMetricsTime:J

    .line 6
    iput-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->powResult:Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;

    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mBatteryMetricsInfo:Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 8
    iput-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mThermalListener:Landroid/os/PowerManager$OnThermalStatusChangedListener;

    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->batteryListener:Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;

    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mDiagnoseInfos:Ljava/util/ArrayList;

    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mThreadCPU:Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;

    const/16 v0, 0x3c

    .line 12
    iput v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mMetricsInterval:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mMetricsAbility:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mBatteryMetricsInfo:Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private checkAbility()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mMetricsAbility:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mBatteryMetricsInfo:Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mBatteryMetricsInfo:Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->batteryListener:Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    new-instance v2, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;

    .line 28
    .line 29
    invoke-direct {v2, v0}, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->batteryListener:Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;

    .line 33
    .line 34
    new-instance v0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$1;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$1;-><init>(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;->register(Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryStateListener;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->batteryListener:Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;->getInitialCharging()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    const-string v0, "PlayerMetrics"

    .line 51
    .line 52
    const-string v2, "getInitialCharging"

    .line 53
    .line 54
    invoke-static {v0, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mBatteryMetricsInfo:Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 58
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    iput-wide v2, v0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartPowerTime:J

    .line 64
    .line 65
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mBatteryMetricsInfo:Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-static {v2}, Lcom/ss/ttvideoengine/log/DeviceMonitorUtils;->getPowerCapacity(Landroid/content/Context;)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    iput v2, v0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mLastBatteryLevel:I

    .line 74
    .line 75
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mBatteryMetricsInfo:Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 76
    .line 77
    iput v1, v0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mPowerState:I

    .line 78
    .line 79
    :cond_1
    iget v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mMetricsAbility:I

    .line 80
    .line 81
    and-int/lit8 v0, v0, 0x4

    .line 82
    .line 83
    if-lez v0, :cond_2

    .line 84
    .line 85
    invoke-direct {p0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->startThermal()V

    .line 86
    .line 87
    .line 88
    :cond_2
    iget v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mMetricsAbility:I

    .line 89
    .line 90
    and-int/lit8 v0, v0, 0x1

    .line 91
    .line 92
    if-lez v0, :cond_5

    .line 93
    .line 94
    sget-object v0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mTheadList:Ljava/util/ArrayList;

    .line 95
    .line 96
    if-nez v0, :cond_4

    .line 97
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    sput-object v0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mTheadList:Ljava/util/ArrayList;

    .line 104
    .line 105
    iget v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mMetricsAbility:I

    .line 106
    .line 107
    and-int/lit8 v0, v0, 0x40

    .line 108
    .line 109
    if-lez v0, :cond_3

    .line 110
    .line 111
    move v0, v1

    .line 112
    :goto_0
    sget-object v2, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mdlNames:[Ljava/lang/String;

    .line 113
    .line 114
    array-length v3, v2

    .line 115
    if-ge v0, v3, :cond_3

    .line 116
    .line 117
    sget-object v3, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mTheadList:Ljava/util/ArrayList;

    .line 118
    .line 119
    aget-object v2, v2, v0

    .line 120
    .line 121
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    add-int/lit8 v0, v0, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_3
    iget v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mMetricsAbility:I

    .line 128
    .line 129
    and-int/lit16 v0, v0, 0x80

    .line 130
    .line 131
    if-lez v0, :cond_4

    .line 132
    .line 133
    :goto_1
    sget-object v0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->pcdnNames:[Ljava/lang/String;

    .line 134
    .line 135
    array-length v2, v0

    .line 136
    if-ge v1, v2, :cond_4

    .line 137
    .line 138
    sget-object v2, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mTheadList:Ljava/util/ArrayList;

    .line 139
    .line 140
    aget-object v0, v0, v1

    .line 141
    .line 142
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    add-int/lit8 v1, v1, 0x1

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mThreadCPU:Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;

    .line 149
    .line 150
    if-nez v0, :cond_5

    .line 151
    .line 152
    new-instance v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;

    .line 153
    .line 154
    invoke-direct {v0}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;-><init>()V

    .line 155
    .line 156
    .line 157
    iput-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mThreadCPU:Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;

    .line 158
    .line 159
    sget-object v1, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mTheadList:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->initThreadMonitor(Ljava/util/ArrayList;)Z

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mThreadCPU:Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->refreshStaticThreads()V

    .line 167
    .line 168
    .line 169
    :cond_5
    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->powResult:Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;

    .line 171
    .line 172
    if-nez v0, :cond_6

    .line 173
    .line 174
    new-instance v0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;

    .line 175
    .line 176
    invoke-direct {v0}, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;-><init>()V

    .line 177
    .line 178
    .line 179
    iput-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->powResult:Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :catchall_0
    move-exception v0

    .line 183
    goto :goto_3

    .line 184
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mDiagnoseInfos:Ljava/util/ArrayList;

    .line 185
    .line 186
    if-nez v0, :cond_7

    .line 187
    .line 188
    new-instance v0, Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .line 192
    .line 193
    iput-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mDiagnoseInfos:Ljava/util/ArrayList;

    .line 194
    .line 195
    :cond_7
    monitor-exit p0

    .line 196
    return-void

    .line 197
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    throw v0
.end method

.method private collectMetrics()V
    .locals 9

    .line 1
    const-string v0, "PlayerMetrics"

    .line 2
    .line 3
    const-string/jumbo v1, "start collectMetrics"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseInfo;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseInfo;-><init>()V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mMetricsAbility:I

    .line 15
    .line 16
    and-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mThreadCPU:Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->refresh()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget v1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mMetricsAbility:I

    .line 28
    .line 29
    and-int/lit8 v1, v1, 0x2

    .line 30
    .line 31
    if-lez v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mBatteryMetricsInfo:Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget-wide v1, v1, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartPowerTime:J

    .line 38
    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    cmp-long v1, v1, v3

    .line 42
    .line 43
    if-lez v1, :cond_2

    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    iget-object v3, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {v3}, Lcom/ss/ttvideoengine/log/DeviceMonitorUtils;->getPowerCapacity(Landroid/content/Context;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    iget-object v6, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mBatteryMetricsInfo:Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 60
    .line 61
    iget v7, v6, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mLastBatteryLevel:I

    .line 62
    .line 63
    if-lez v7, :cond_1

    .line 64
    .line 65
    sub-int v7, v3, v7

    .line 66
    .line 67
    iput v7, v6, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mCurrentBatteryUse:I

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v7, 0x0

    .line 71
    iput v7, v6, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mCurrentBatteryUse:I

    .line 72
    .line 73
    :goto_0
    iput v3, v6, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mLastBatteryLevel:I

    .line 74
    .line 75
    iput v3, v0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseInfo;->mPowerUsage:I

    .line 76
    .line 77
    iget-wide v7, v6, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartPowerTime:J

    .line 78
    .line 79
    sub-long v7, v4, v7

    .line 80
    .line 81
    iput-wide v7, v0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseInfo;->mPowerUsageTime:J

    .line 82
    .line 83
    iput-wide v7, v6, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mTotalPowerTime:J

    .line 84
    .line 85
    iput-wide v4, v6, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartPowerTime:J

    .line 86
    .line 87
    const-string v3, "PlayerMetrics"

    .line 88
    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v7, "METRICS_ABILITY_POWER "

    .line 95
    .line 96
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v7, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mBatteryMetricsInfo:Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 100
    .line 101
    iget v7, v7, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mLastBatteryLevel:I

    .line 102
    .line 103
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v7, " costTime: "

    .line 107
    .line 108
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    sub-long/2addr v4, v1

    .line 112
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v1, " powertime: "

    .line 116
    .line 117
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-wide v1, v0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseInfo;->mPowerUsageTime:J

    .line 121
    .line 122
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v3, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_2
    iget v1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mMetricsAbility:I

    .line 133
    .line 134
    and-int/lit8 v1, v1, 0x10

    .line 135
    .line 136
    if-lez v1, :cond_3

    .line 137
    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 139
    .line 140
    .line 141
    move-result-wide v1

    .line 142
    invoke-static {}, Lcom/ss/ttvideoengine/log/DeviceMonitorUtils;->getUsingMemory()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 147
    .line 148
    .line 149
    move-result-wide v4

    .line 150
    iput v3, v0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseInfo;->mMemUsage:I

    .line 151
    .line 152
    const-string v6, "PlayerMetrics"

    .line 153
    .line 154
    new-instance v7, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v8, "METRICS_ABILITY_MEMORY "

    .line 160
    .line 161
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v3, " costTime: "

    .line 168
    .line 169
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    sub-long/2addr v4, v1

    .line 173
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-static {v6, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :cond_3
    iget v1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mMetricsAbility:I

    .line 184
    .line 185
    and-int/lit8 v1, v1, 0x4

    .line 186
    .line 187
    if-lez v1, :cond_4

    .line 188
    .line 189
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mBatteryMetricsInfo:Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 190
    .line 191
    if-eqz v1, :cond_4

    .line 192
    .line 193
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->getCurCriticalTime()J

    .line 194
    .line 195
    .line 196
    move-result-wide v1

    .line 197
    iput-wide v1, v0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseInfo;->mCiticalTime:J

    .line 198
    .line 199
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mBatteryMetricsInfo:Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 200
    .line 201
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->getCurEmergencyTime()J

    .line 202
    .line 203
    .line 204
    move-result-wide v1

    .line 205
    iput-wide v1, v0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseInfo;->mEmergencyTime:J

    .line 206
    .line 207
    :cond_4
    iget v1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mMetricsAbility:I

    .line 208
    .line 209
    and-int/lit16 v1, v1, 0x100

    .line 210
    .line 211
    if-lez v1, :cond_6

    .line 212
    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mDiagnoseInfos:Ljava/util/ArrayList;

    .line 215
    .line 216
    if-eqz v1, :cond_5

    .line 217
    .line 218
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    goto :goto_1

    .line 222
    :catchall_0
    move-exception v0

    .line 223
    goto :goto_2

    .line 224
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->diagnose()V

    .line 225
    .line 226
    .line 227
    monitor-exit p0

    .line 228
    goto :goto_3

    .line 229
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    throw v0

    .line 231
    :cond_6
    :goto_3
    return-void
.end method

.method private diagnose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mDiagnoseInfos:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mDiagnoseInfos:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x5

    .line 18
    if-le v0, v1, :cond_0

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->diagnoseInternal()V

    .line 21
    .line 22
    .line 23
    const-string v0, "PlayerMetrics"

    .line 24
    .line 25
    const-string/jumbo v1, "startDiagnose"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mDiagnoseInfos:Ljava/util/ArrayList;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method private diagnoseInternal()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->powResult:Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mDiagnoseInfos:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;->reset()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mDiagnoseInfos:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    move v2, v1

    .line 21
    move v3, v2

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v5, 0x1

    .line 27
    if-eqz v4, :cond_4

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseInfo;

    .line 34
    .line 35
    if-lez v2, :cond_1

    .line 36
    .line 37
    iget v3, v4, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseInfo;->mPowerUsage:I

    .line 38
    .line 39
    sub-int/2addr v2, v3

    .line 40
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    :cond_1
    iget-object v2, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->powResult:Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;

    .line 45
    .line 46
    iget v6, v2, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;->maxValue:I

    .line 47
    .line 48
    if-le v3, v6, :cond_2

    .line 49
    .line 50
    iput v3, v2, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;->maxValue:I

    .line 51
    .line 52
    :cond_2
    if-le v3, v5, :cond_3

    .line 53
    .line 54
    iget v6, v2, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;->overCount:I

    .line 55
    .line 56
    add-int/2addr v6, v5

    .line 57
    iput v6, v2, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;->overCount:I

    .line 58
    .line 59
    :cond_3
    iget v2, v4, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseInfo;->mPowerUsage:I

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mDiagnoseInfos:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-le v0, v5, :cond_5

    .line 69
    .line 70
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mDiagnoseInfos:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseInfo;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mDiagnoseInfos:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    sub-int/2addr v2, v5

    .line 85
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseInfo;

    .line 90
    .line 91
    iget-object v2, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->powResult:Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;

    .line 92
    .line 93
    iget v0, v0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseInfo;->mPowerUsage:I

    .line 94
    .line 95
    iget v1, v1, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseInfo;->mPowerUsage:I

    .line 96
    .line 97
    sub-int/2addr v0, v1

    .line 98
    iput v0, v2, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;->avgValue:I

    .line 99
    .line 100
    :cond_5
    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$InstanceHolder;->access$100()Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private removeThrmal()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mThermalListener:Landroid/os/PowerManager$OnThermalStatusChangedListener;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v2, 0x1d

    .line 13
    .line 14
    if-lt v1, v2, :cond_1

    .line 15
    .line 16
    :try_start_0
    const-string v1, "power"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/os/PowerManager;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mThermalListener:Landroid/os/PowerManager$OnThermalStatusChangedListener;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/playermetrcis/b;->a(Landroid/os/PowerManager;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mThermalListener:Landroid/os/PowerManager$OnThermalStatusChangedListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string/jumbo v2, "thermalError: "

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "PlayerMetrics"

    .line 57
    .line 58
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    return-void
.end method

.method private startThermal()V
    .locals 4

    .line 1
    const-string v0, "PlayerMetrics"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mThermalListener:Landroid/os/PowerManager$OnThermalStatusChangedListener;

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v3, 0x1d

    .line 16
    .line 17
    if-lt v2, v3, :cond_2

    .line 18
    .line 19
    :try_start_0
    const-string v2, "power"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/os/PowerManager;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    const-string/jumbo v2, "start thermal"

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$2;

    .line 36
    .line 37
    invoke-direct {v2, p0, v1}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$2;-><init>(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;Landroid/os/PowerManager;)V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mThermalListener:Landroid/os/PowerManager$OnThermalStatusChangedListener;

    .line 41
    .line 42
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/playermetrcis/a;->a(Landroid/os/PowerManager;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string/jumbo v3, "thermalError: "

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public beginCpuRefresh(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mMetricsAbility:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    if-lez v1, :cond_1

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x20

    .line 8
    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mThreadCPU:Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->refreshSingleThreads(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public getAbility()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mMetricsAbility:I

    .line 2
    .line 3
    return v0
.end method

.method public getMetricsLog()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->powResult:Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget v2, v1, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;->avgValue:I

    .line 12
    .line 13
    if-lez v2, :cond_0

    .line 14
    .line 15
    const-string v2, "pow"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;->getMetricsInfo(Ljava/lang/String;)Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mBatteryMetricsInfo:Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->getMetricsInfo(Ljava/lang/String;)Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "PlayerMetrics"

    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v4, "getMetricsLog: "

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v2, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-lez v2, :cond_1

    .line 65
    .line 66
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mThreadCPU:Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->getPlayerThreads()Ljava/util/Map;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-lez v2, :cond_2

    .line 84
    .line 85
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    monitor-exit p0

    .line 89
    return-object v0

    .line 90
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    throw v0
.end method

.method public refreshWhenBegin()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mMetricsAbility:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x400

    .line 4
    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mThreadCPU:Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->refreshWhenBegin()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public refreshWhenEnd()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mMetricsAbility:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x200

    .line 4
    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mThreadCPU:Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->refreshWhenEnd()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public setMetricsAbilityOption(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mMetricsAbility:I

    .line 2
    .line 3
    return-void
.end method

.method public setMetricsIntervalOption(I)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/16 p1, 0x3c

    .line 4
    .line 5
    iput p1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mMetricsInterval:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput p1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mMetricsInterval:I

    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method public startMetric(Landroid/content/Context;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mMetricsAbility:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    :cond_1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->checkAbility()V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iget-wide v2, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mLastMetricsTime:J

    .line 24
    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    cmp-long p1, v2, v4

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    iput-wide v4, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mCurDuraiton:J

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-wide v6, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mCurDuraiton:J

    .line 35
    .line 36
    sub-long v2, v0, v2

    .line 37
    .line 38
    const-wide/16 v8, 0x3e8

    .line 39
    .line 40
    div-long/2addr v2, v8

    .line 41
    add-long/2addr v6, v2

    .line 42
    iput-wide v6, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mCurDuraiton:J

    .line 43
    .line 44
    :goto_0
    iput-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mLastMetricsTime:J

    .line 45
    .line 46
    iget p1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mMetricsInterval:I

    .line 47
    .line 48
    if-lez p1, :cond_3

    .line 49
    .line 50
    iget-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mCurDuraiton:J

    .line 51
    .line 52
    int-to-long v2, p1

    .line 53
    cmp-long p1, v0, v2

    .line 54
    .line 55
    if-ltz p1, :cond_3

    .line 56
    .line 57
    iput-wide v4, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->mCurDuraiton:J

    .line 58
    .line 59
    invoke-direct {p0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->collectMetrics()V

    .line 60
    .line 61
    .line 62
    :cond_3
    return-void
.end method
