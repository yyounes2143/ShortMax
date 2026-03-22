.class public Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;
.super Ljava/lang/Object;
.source "SensorHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TR_DeviceSensorLooper"


# instance fields
.field private isRunning:Z

.field private mCert:Lcom/bytedance/bpea/basics/Cert;

.field private mTexType:I

.field private final registeredListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/SensorEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private sensorEventListener:Landroid/hardware/SensorEventListener;

.field private sensorLooper:Landroid/os/Looper;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->mCert:Lcom/bytedance/bpea/basics/Cert;

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->registeredListeners:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->mTexType:I

    .line 16
    .line 17
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 18
    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->registeredListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;)Landroid/hardware/SensorManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;)Landroid/hardware/SensorEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;)Landroid/hardware/Sensor;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->getUncalibratedGyro()Landroid/hardware/Sensor;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$400(Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->mTexType:I

    .line 2
    .line 3
    return p0
.end method

.method private getUncalibratedGyro()Landroid/hardware/Sensor;
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "HTC"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 14
    .line 15
    const/16 v1, 0x10

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    return-object v0
.end method


# virtual methods
.method public registerListener(Landroid/hardware/SensorEventListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->registeredListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->registeredListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public setCert(Ljava/io/Serializable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->isRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper$1;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper$1;-><init>(Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 11
    .line 12
    new-instance v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper$2;

    .line 13
    .line 14
    const-string v1, "sensor"

    .line 15
    .line 16
    invoke-direct {v0, p0, v1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper$2;-><init>(Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->sensorLooper:Landroid/os/Looper;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->isRunning:Z

    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->isRunning:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->sensorLooper:Landroid/os/Looper;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->sensorLooper:Landroid/os/Looper;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->isRunning:Z

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->registeredListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->registeredListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method
