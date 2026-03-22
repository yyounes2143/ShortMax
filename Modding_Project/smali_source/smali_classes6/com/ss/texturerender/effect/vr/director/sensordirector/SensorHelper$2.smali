.class Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper$2;
.super Landroid/os/HandlerThread;
.source "SensorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;


# direct methods
.method constructor <init>(Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper$2;->this$0:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 6

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper$2;->this$0:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->access$100(Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;)Landroid/hardware/SensorManager;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper$2;->this$0:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->access$100(Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;)Landroid/hardware/SensorManager;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper$2;->this$0:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

    .line 28
    .line 29
    invoke-static {v3}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->access$200(Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;)Landroid/hardware/SensorEventListener;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/16 v4, 0x411a

    .line 34
    .line 35
    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper$2;->this$0:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->access$300(Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;)Landroid/hardware/Sensor;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "TR_DeviceSensorLooper"

    .line 45
    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper$2;->this$0:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->access$400(Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const-string v3, "Uncalibrated gyroscope unavailable, default to regular gyroscope."

    .line 55
    .line 56
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper$2;->this$0:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

    .line 60
    .line 61
    invoke-static {v1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->access$100(Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;)Landroid/hardware/SensorManager;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const/4 v3, 0x4

    .line 66
    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :cond_0
    if-nez v1, :cond_1

    .line 71
    .line 72
    iget-object v3, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper$2;->this$0:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

    .line 73
    .line 74
    invoke-static {v3}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->access$400(Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    const-string v5, "gyroscope unavailable"

    .line 79
    .line 80
    invoke-static {v3, v2, v5}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper$2;->this$0:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

    .line 84
    .line 85
    invoke-static {v2}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->access$100(Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;)Landroid/hardware/SensorManager;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iget-object v3, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper$2;->this$0:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

    .line 90
    .line 91
    invoke-static {v3}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->access$200(Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;)Landroid/hardware/SensorEventListener;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 96
    .line 97
    .line 98
    return-void
.end method
