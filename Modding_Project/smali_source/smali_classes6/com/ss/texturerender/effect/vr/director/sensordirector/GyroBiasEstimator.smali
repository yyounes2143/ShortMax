.class public Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;
.super Ljava/lang/Object;
.source "GyroBiasEstimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;
    }
.end annotation


# static fields
.field private static final ACCEL_DIFF_STATIC_THRESHOLD:F = 0.5f

.field private static final ACCEL_LOWPASS_FREQ:F = 1.0f

.field private static final GYRO_BIAS_LOWPASS_FREQ:F = 0.15f

.field private static final GYRO_DIFF_STATIC_THRESHOLD:F = 0.008f

.field private static final GYRO_FOR_BIAS_THRESHOLD:F = 0.3f

.field private static final GYRO_LOWPASS_FREQ:F = 10.0f

.field private static final IS_STATIC_NUM_FRAMES_THRESHOLD:I = 0xa

.field private static final NUM_GYRO_BIAS_SAMPLES_INITIAL_SMOOTHING:I = 0x64

.field private static final NUM_GYRO_BIAS_SAMPLES_THRESHOLD:I = 0x1e


# instance fields
.field private accelLowPass:Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;

.field private gyroBiasLowPass:Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;

.field private gyroLowPass:Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;

.field private isAccelStatic:Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;

.field private isGyroStatic:Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;

.field private smoothedAccelDiff:Lcom/ss/texturerender/math/Vector3d;

.field private smoothedGyroDiff:Lcom/ss/texturerender/math/Vector3d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->reset()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private updateGyroBias(Lcom/ss/texturerender/math/Vector3d;J)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/ss/texturerender/math/Vector3d;->length()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0x3fd3333340000000L    # 0.30000001192092896

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmpg-double p1, v0, v2

    .line 11
    .line 12
    if-gez p1, :cond_0

    .line 13
    .line 14
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 15
    .line 16
    div-double/2addr v0, v2

    .line 17
    sub-double/2addr v4, v0

    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    mul-double v6, v0, v0

    .line 25
    .line 26
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->gyroBiasLowPass:Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;

    .line 27
    .line 28
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->gyroLowPass:Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->getFilteredData()Lcom/ss/texturerender/math/Vector3d;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    move-wide v4, p2

    .line 35
    invoke-virtual/range {v2 .. v7}, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->addWeightedSample(Lcom/ss/texturerender/math/Vector3d;JD)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public getGyroBias(Lcom/ss/texturerender/math/Vector3d;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->gyroBiasLowPass:Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->getNumSamples()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1e

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/ss/texturerender/math/Vector3d;->setZero()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->gyroBiasLowPass:Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->getFilteredData()Lcom/ss/texturerender/math/Vector3d;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Lcom/ss/texturerender/math/Vector3d;->set(Lcom/ss/texturerender/math/Vector3d;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->gyroBiasLowPass:Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->getNumSamples()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sub-int/2addr v0, v1

    .line 31
    int-to-double v0, v0

    .line 32
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 33
    .line 34
    div-double/2addr v0, v2

    .line 35
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 36
    .line 37
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    invoke-virtual {p1, v0, v1}, Lcom/ss/texturerender/math/Vector3d;->scale(D)Lcom/ss/texturerender/math/Vector3d;

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public processAccelerometer(Lcom/ss/texturerender/math/Vector3d;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->accelLowPass:Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->addSample(Lcom/ss/texturerender/math/Vector3d;J)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->accelLowPass:Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->getFilteredData()Lcom/ss/texturerender/math/Vector3d;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iget-object p3, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->smoothedAccelDiff:Lcom/ss/texturerender/math/Vector3d;

    .line 13
    .line 14
    invoke-static {p1, p2, p3}, Lcom/ss/texturerender/math/Vector3d;->sub(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->isAccelStatic:Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->smoothedAccelDiff:Lcom/ss/texturerender/math/Vector3d;

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/ss/texturerender/math/Vector3d;->length()D

    .line 22
    .line 23
    .line 24
    move-result-wide p2

    .line 25
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 26
    .line 27
    cmpg-double p2, p2, v0

    .line 28
    .line 29
    if-gez p2, :cond_0

    .line 30
    .line 31
    const/4 p2, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p2, 0x0

    .line 34
    :goto_0
    invoke-virtual {p1, p2}, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;->appendFrame(Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public processGyroscope(Lcom/ss/texturerender/math/Vector3d;J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->gyroLowPass:Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->addSample(Lcom/ss/texturerender/math/Vector3d;J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->gyroLowPass:Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->getFilteredData()Lcom/ss/texturerender/math/Vector3d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->smoothedGyroDiff:Lcom/ss/texturerender/math/Vector3d;

    .line 13
    .line 14
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/math/Vector3d;->sub(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->isGyroStatic:Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->smoothedGyroDiff:Lcom/ss/texturerender/math/Vector3d;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/ss/texturerender/math/Vector3d;->length()D

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    const-wide v3, 0x3f80624de0000000L    # 0.00800000037997961

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    cmpg-double v1, v1, v3

    .line 31
    .line 32
    if-gez v1, :cond_0

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 37
    :goto_0
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;->appendFrame(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->isGyroStatic:Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;->isRecentlyStatic()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->isAccelStatic:Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;->isRecentlyStatic()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->updateGyroBias(Lcom/ss/texturerender/math/Vector3d;J)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ss/texturerender/math/Vector3d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/texturerender/math/Vector3d;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->smoothedGyroDiff:Lcom/ss/texturerender/math/Vector3d;

    .line 7
    .line 8
    new-instance v0, Lcom/ss/texturerender/math/Vector3d;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/ss/texturerender/math/Vector3d;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->smoothedAccelDiff:Lcom/ss/texturerender/math/Vector3d;

    .line 14
    .line 15
    new-instance v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;

    .line 16
    .line 17
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;-><init>(D)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->accelLowPass:Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;

    .line 23
    .line 24
    new-instance v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;

    .line 25
    .line 26
    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;-><init>(D)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->gyroLowPass:Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;

    .line 32
    .line 33
    new-instance v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;

    .line 34
    .line 35
    const-wide v1, 0x3fc3333340000000L    # 0.15000000596046448

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1, v2}, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;-><init>(D)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->gyroBiasLowPass:Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;

    .line 44
    .line 45
    new-instance v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;

    .line 46
    .line 47
    const/16 v1, 0xa

    .line 48
    .line 49
    invoke-direct {v0, v1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;-><init>(I)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->isAccelStatic:Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;

    .line 53
    .line 54
    new-instance v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;

    .line 55
    .line 56
    invoke-direct {v0, v1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;-><init>(I)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->isGyroStatic:Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;

    .line 60
    .line 61
    return-void
.end method
