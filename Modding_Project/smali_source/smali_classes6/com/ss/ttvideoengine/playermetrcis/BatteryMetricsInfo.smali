.class public Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;
.super Ljava/lang/Object;
.source "BatteryMetricsInfo.java"

# interfaces
.implements Lcom/ss/ttvideoengine/playermetrcis/IMetricsInfo;


# instance fields
.field public mBatteryUsage:I

.field public mCurrentBatteryUse:I

.field public mLastBatteryLevel:I

.field public mLastThermalState:I

.field public mLowPowerMode:Z

.field public mPowerState:I

.field public mStartCriticalTime:J

.field public mStartEmergencyTime:J

.field public mStartPowerTime:J

.field public mTotalCriticalTime:J

.field public mTotalEmergencyTime:J

.field public mTotalPowerTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mBatteryUsage:I

    .line 6
    .line 7
    iput v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mLastThermalState:I

    .line 8
    .line 9
    iput v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mLastBatteryLevel:I

    .line 10
    .line 11
    iput v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mCurrentBatteryUse:I

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mLowPowerMode:Z

    .line 14
    .line 15
    iput v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mPowerState:I

    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartPowerTime:J

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mTotalPowerTime:J

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartCriticalTime:J

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mTotalCriticalTime:J

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartEmergencyTime:J

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mTotalEmergencyTime:J

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public getCurCriticalTime()J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartCriticalTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mTotalCriticalTime:J

    .line 14
    .line 15
    iget-wide v4, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartCriticalTime:J

    .line 16
    .line 17
    sub-long v4, v0, v4

    .line 18
    .line 19
    add-long/2addr v2, v4

    .line 20
    iput-wide v2, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mTotalCriticalTime:J

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartCriticalTime:J

    .line 23
    .line 24
    :cond_0
    iget-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mTotalCriticalTime:J

    .line 25
    .line 26
    return-wide v0
.end method

.method public getCurEmergencyTime()J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartEmergencyTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mTotalEmergencyTime:J

    .line 14
    .line 15
    iget-wide v4, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartEmergencyTime:J

    .line 16
    .line 17
    sub-long v4, v0, v4

    .line 18
    .line 19
    add-long/2addr v2, v4

    .line 20
    iput-wide v2, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mTotalEmergencyTime:J

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartEmergencyTime:J

    .line 23
    .line 24
    :cond_0
    iget-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mTotalEmergencyTime:J

    .line 25
    .line 26
    return-wide v0
.end method

.method public getMetricsInfo(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartEmergencyTime:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->getCurEmergencyTime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "cri_t"

    .line 23
    .line 24
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartCriticalTime:J

    .line 28
    .line 29
    cmp-long v0, v0, v2

    .line 30
    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->getCurCriticalTime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "ser_t"

    .line 42
    .line 43
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartPowerTime:J

    .line 47
    .line 48
    cmp-long v0, v0, v2

    .line 49
    .line 50
    if-lez v0, :cond_2

    .line 51
    .line 52
    iget-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mTotalPowerTime:J

    .line 53
    .line 54
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "bu_t"

    .line 59
    .line 60
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    iget v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mCurrentBatteryUse:I

    .line 64
    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "bu_l"

    .line 70
    .line 71
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :cond_2
    return-object p1
.end method
