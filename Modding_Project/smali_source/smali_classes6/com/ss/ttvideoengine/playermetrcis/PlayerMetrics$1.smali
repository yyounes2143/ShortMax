.class Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$1;
.super Ljava/lang/Object;
.source "PlayerMetrics.java"

# interfaces
.implements Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->checkAbility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$1;->this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onStatePowerConnected()V
    .locals 3

    .line 1
    const-string v0, "PlayerMetrics"

    .line 2
    .line 3
    const-string v1, "onStatePowerConnected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$1;->this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->access$200(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    iput-wide v1, v0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartPowerTime:J

    .line 17
    .line 18
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$1;->this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->access$200(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    iput v1, v0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mPowerState:I

    .line 26
    .line 27
    return-void
.end method

.method public onStatePowerDisconnected()V
    .locals 3

    .line 1
    const-string v0, "PlayerMetrics"

    .line 2
    .line 3
    const-string v1, "onStatePowerDisconnected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$1;->this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->access$200(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iput-wide v1, v0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartPowerTime:J

    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$1;->this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->access$200(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$1;->this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->access$300(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/ss/ttvideoengine/log/DeviceMonitorUtils;->getPowerCapacity(Landroid/content/Context;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v1, v0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mLastBatteryLevel:I

    .line 37
    .line 38
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$1;->this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->access$200(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x1

    .line 45
    iput v1, v0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mPowerState:I

    .line 46
    .line 47
    return-void
.end method
