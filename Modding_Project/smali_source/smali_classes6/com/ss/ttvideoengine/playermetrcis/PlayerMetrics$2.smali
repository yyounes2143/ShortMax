.class Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$2;
.super Ljava/lang/Object;
.source "PlayerMetrics.java"

# interfaces
.implements Landroid/os/PowerManager$OnThermalStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->startThermal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

.field final synthetic val$pm:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;Landroid/os/PowerManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$2;->this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$2;->val$pm:Landroid/os/PowerManager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onThermalStatusChanged(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$2;->this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->access$200(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "onThermalStatusChanged "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "PlayerMetrics"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$2;->this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->access$200(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-wide/16 v1, 0x0

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    const/4 v0, 0x4

    .line 43
    if-ne p1, v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$2;->this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->access$200(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    iput-wide v3, v0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartCriticalTime:J

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$2;->this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->access$200(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-wide v3, v0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartCriticalTime:J

    .line 65
    .line 66
    cmp-long v0, v3, v1

    .line 67
    .line 68
    if-lez v0, :cond_2

    .line 69
    .line 70
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$2;->this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->access$200(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-wide v3, v0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mTotalCriticalTime:J

    .line 77
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v5

    .line 82
    iget-object v7, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$2;->this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 83
    .line 84
    invoke-static {v7}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->access$200(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    iget-wide v7, v7, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartCriticalTime:J

    .line 89
    .line 90
    sub-long/2addr v5, v7

    .line 91
    add-long/2addr v3, v5

    .line 92
    iput-wide v3, v0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mTotalCriticalTime:J

    .line 93
    .line 94
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$2;->this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->access$200(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-wide v1, v0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartCriticalTime:J

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$2;->this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 104
    .line 105
    invoke-static {v0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->access$200(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-wide v1, v0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartCriticalTime:J

    .line 110
    .line 111
    :cond_3
    :goto_0
    const/4 v0, 0x5

    .line 112
    if-ne p1, v0, :cond_4

    .line 113
    .line 114
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$2;->this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->access$200(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide v1

    .line 124
    iput-wide v1, v0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartEmergencyTime:J

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$2;->this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 128
    .line 129
    invoke-static {v0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->access$200(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-wide v3, v0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartEmergencyTime:J

    .line 134
    .line 135
    cmp-long v0, v3, v1

    .line 136
    .line 137
    if-lez v0, :cond_5

    .line 138
    .line 139
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$2;->this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 140
    .line 141
    invoke-static {v0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->access$200(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iget-wide v3, v0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mTotalEmergencyTime:J

    .line 146
    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 148
    .line 149
    .line 150
    move-result-wide v5

    .line 151
    iget-object v7, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$2;->this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 152
    .line 153
    invoke-static {v7}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->access$200(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    iget-wide v7, v7, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartEmergencyTime:J

    .line 158
    .line 159
    sub-long/2addr v5, v7

    .line 160
    add-long/2addr v3, v5

    .line 161
    iput-wide v3, v0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mTotalEmergencyTime:J

    .line 162
    .line 163
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$2;->this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 164
    .line 165
    invoke-static {v0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->access$200(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iput-wide v1, v0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartEmergencyTime:J

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_5
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$2;->this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 173
    .line 174
    invoke-static {v0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->access$200(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iput-wide v1, v0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mStartEmergencyTime:J

    .line 179
    .line 180
    :goto_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics$2;->this$0:Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    .line 181
    .line 182
    invoke-static {v0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->access$200(Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;)Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iput p1, v0, Lcom/ss/ttvideoengine/playermetrcis/BatteryMetricsInfo;->mLastThermalState:I

    .line 187
    .line 188
    return-void
.end method
