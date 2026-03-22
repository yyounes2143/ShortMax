.class public Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SensorDirector.java"

# interfaces
.implements Lcom/ss/texturerender/effect/vr/director/IDirector;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TR_SensorDirector"


# instance fields
.field private mDirectMode:I

.field private mDirectorEventListener:Lcom/ss/texturerender/effect/vr/director/IDirectorEventListener;

.field private mDisplay:Landroid/view/Display;

.field private mFusionEkf:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;

.field private mLastRotation:Lcom/ss/texturerender/math/Quaternion;

.field private mSensorEventProvider:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

.field private mSensorResetPosKeepFix:Z

.field private mSensorStartPos:I

.field private mTexType:I

.field private resetSensorAfterDisplayRotationChange:Z

.field private volatile tracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;IIIIDLcom/ss/texturerender/effect/vr/director/IDirectorEventListener;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mDirectMode:I

    .line 6
    .line 7
    new-instance v1, Lcom/ss/texturerender/math/Quaternion;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/ss/texturerender/math/Quaternion;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mLastRotation:Lcom/ss/texturerender/math/Quaternion;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->resetSensorAfterDisplayRotationChange:Z

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput-object v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mDirectorEventListener:Lcom/ss/texturerender/effect/vr/director/IDirectorEventListener;

    .line 19
    .line 20
    iput p5, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mTexType:I

    .line 21
    .line 22
    const-string p5, "sensor"

    .line 23
    .line 24
    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/hardware/SensorManager;

    .line 29
    .line 30
    new-instance p5, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

    .line 31
    .line 32
    invoke-direct {p5, p1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;-><init>(Landroid/hardware/SensorManager;)V

    .line 33
    .line 34
    .line 35
    iput-object p5, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mSensorEventProvider:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mDisplay:Landroid/view/Display;

    .line 38
    .line 39
    new-instance p1, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;

    .line 40
    .line 41
    iget p2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mTexType:I

    .line 42
    .line 43
    invoke-direct {p1, p2}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;-><init>(I)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mFusionEkf:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;

    .line 47
    .line 48
    if-ne p6, v0, :cond_0

    .line 49
    .line 50
    move p2, v0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move p2, v1

    .line 53
    :goto_0
    invoke-virtual {p1, p2, p7, p8}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->setGyroSmootherParam(ZD)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mFusionEkf:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;

    .line 57
    .line 58
    invoke-virtual {p1, p3}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->setSensorStartPos(I)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mFusionEkf:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;

    .line 62
    .line 63
    iget-object p2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mDisplay:Landroid/view/Display;

    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-virtual {p1, p2}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->setDisplayRotation(I)V

    .line 70
    .line 71
    .line 72
    iput p3, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mSensorStartPos:I

    .line 73
    .line 74
    if-ne p4, v0, :cond_1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    move v0, v1

    .line 78
    :goto_1
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mSensorResetPosKeepFix:Z

    .line 79
    .line 80
    iput-object p9, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mDirectorEventListener:Lcom/ss/texturerender/effect/vr/director/IDirectorEventListener;

    .line 81
    .line 82
    return-void
.end method

.method private testRotationChange(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mDisplay:Landroid/view/Display;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mFusionEkf:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->getDisplayRotation()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mFusionEkf:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->reset()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mFusionEkf:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->setDisplayRotation(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mFusionEkf:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;

    .line 28
    .line 29
    iget v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mSensorStartPos:I

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->setSensorStartPos(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mDirectorEventListener:Lcom/ss/texturerender/effect/vr/director/IDirectorEventListener;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-interface {v1, v0, p1}, Lcom/ss/texturerender/effect/vr/director/IDirectorEventListener;->onDisplayRotationChanged(IZ)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method


# virtual methods
.method public getView([FI)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->resetSensorAfterDisplayRotationChange:Z

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->testRotationChange(Z)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mFusionEkf:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->isAlignedGravity()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    iget-object p2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mFusionEkf:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->getRotation()Lcom/ss/texturerender/math/Quaternion;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mLastRotation:Lcom/ss/texturerender/math/Quaternion;

    .line 21
    .line 22
    :cond_0
    iget-object p2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mLastRotation:Lcom/ss/texturerender/math/Quaternion;

    .line 23
    .line 24
    invoke-static {p2}, Lcom/ss/texturerender/math/Matrix3x3d;->rotationMatrix3x3(Lcom/ss/texturerender/math/Quaternion;)Lcom/ss/texturerender/math/Matrix3x3d;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p2, p1}, Lcom/ss/texturerender/math/Matrix3x3d;->matrixToColumnArray(Lcom/ss/texturerender/math/Matrix3x3d;[F)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mDirectMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mFusionEkf:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->processScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mFusionEkf:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->processAcc(Landroid/hardware/SensorEvent;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x4

    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/16 v1, 0x10

    .line 32
    .line 33
    if-ne v0, v1, :cond_2

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mFusionEkf:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->processGyro(Landroid/hardware/SensorEvent;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/texturerender/math/Quaternion;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/texturerender/math/Quaternion;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mLastRotation:Lcom/ss/texturerender/math/Quaternion;

    .line 7
    .line 8
    return-void
.end method

.method public setParam(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mFusionEkf:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-string v1, "disable_axis"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x3

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->setIsDisableZrotation(Z)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mSensorEventProvider:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const-string v0, "cert"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mSensorEventProvider:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v1, p1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->setCert(Ljava/io/Serializable;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->tracking:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mTexType:I

    .line 6
    .line 7
    const-string v1, "TR_SensorDirector"

    .line 8
    .line 9
    const-string/jumbo v2, "start"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mSensorEventProvider:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->registerListener(Landroid/hardware/SensorEventListener;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mSensorEventProvider:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->start()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mFusionEkf:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->isAlignedGravity()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mFusionEkf:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->reset()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mFusionEkf:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->reset()V

    .line 45
    .line 46
    .line 47
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mSensorResetPosKeepFix:Z

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mSensorStartPos:I

    .line 52
    .line 53
    if-eq v0, v1, :cond_2

    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mFusionEkf:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;

    .line 56
    .line 57
    const/4 v2, 0x2

    .line 58
    invoke-virtual {v0, v2}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->setSensorStartPos(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mFusionEkf:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mLastRotation:Lcom/ss/texturerender/math/Quaternion;

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->setRotationFromStart(Lcom/ss/texturerender/math/Quaternion;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->testRotationChange(Z)V

    .line 69
    .line 70
    .line 71
    :cond_3
    iput-boolean v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->tracking:Z

    .line 72
    .line 73
    :cond_4
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->tracking:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mTexType:I

    .line 6
    .line 7
    const-string v1, "TR_SensorDirector"

    .line 8
    .line 9
    const-string/jumbo v2, "stop"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mSensorEventProvider:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->mSensorEventProvider:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->stop()V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;->tracking:Z

    .line 27
    .line 28
    :cond_0
    return-void
.end method
