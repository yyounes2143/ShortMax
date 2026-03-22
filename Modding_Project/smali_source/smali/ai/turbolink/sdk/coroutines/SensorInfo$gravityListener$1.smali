.class public final Lai/turbolink/sdk/coroutines/SensorInfo$gravityListener$1;
.super Ljava/lang/Object;
.source "SensorInfo.kt"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/turbolink/sdk/coroutines/SensorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1    # Landroid/hardware/Sensor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .param p1    # Landroid/hardware/SensorEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x9

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    aget v0, p1, v0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    aget v2, p1, v1

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    aget p1, p1, v3

    .line 24
    .line 25
    float-to-double v3, v0

    .line 26
    mul-float v5, v2, v2

    .line 27
    .line 28
    mul-float/2addr p1, p1

    .line 29
    add-float/2addr v5, p1

    .line 30
    float-to-double v5, v5

    .line 31
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    float-to-double v5, v2

    .line 40
    mul-float/2addr v0, v0

    .line 41
    add-float/2addr v0, p1

    .line 42
    float-to-double v7, v0

    .line 43
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 44
    .line 45
    .line 46
    move-result-wide v7

    .line 47
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    .line 52
    .line 53
    .line 54
    move-result-wide v7

    .line 55
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    .line 56
    .line 57
    .line 58
    move-result-wide v7

    .line 59
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    .line 60
    .line 61
    .line 62
    move-result-wide v9

    .line 63
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    .line 64
    .line 65
    .line 66
    move-result-wide v9

    .line 67
    sget-object p1, Lai/turbolink/sdk/TurboLink$RiskManager;->INSTANCE:Lai/turbolink/sdk/TurboLink$RiskManager;

    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v2, "roll:"

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    .line 80
    .line 81
    .line 82
    move-result-wide v5

    .line 83
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v2, ", pitch:"

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    .line 92
    .line 93
    .line 94
    move-result-wide v2

    .line 95
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/TurboLink$RiskManager;->setHumanScoreDetail(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 106
    .line 107
    cmpg-double v0, v7, v2

    .line 108
    .line 109
    if-ltz v0, :cond_3

    .line 110
    .line 111
    cmpg-double v0, v9, v2

    .line 112
    .line 113
    if-gez v0, :cond_1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 117
    .line 118
    cmpl-double v2, v7, v0

    .line 119
    .line 120
    if-lez v2, :cond_2

    .line 121
    .line 122
    cmpl-double v0, v9, v0

    .line 123
    .line 124
    if-lez v0, :cond_2

    .line 125
    .line 126
    const/16 v0, 0x64

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/TurboLink$RiskManager;->setHumanScore(I)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    const/16 v0, 0x32

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/TurboLink$RiskManager;->setHumanScore(I)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    :goto_0
    invoke-virtual {p1, v1}, Lai/turbolink/sdk/TurboLink$RiskManager;->setHumanScore(I)V

    .line 139
    .line 140
    .line 141
    :cond_4
    :goto_1
    return-void
.end method
