.class public Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;
.super Ljava/lang/Object;
.source "SensorFusionEkf.java"


# static fields
.field private static final DEFAULT_GYRO_TIME:D = 0.009999999776482582

.field private static final EPSILON:D = 1.0E-15

.field private static final INITIAL_STATE_COVARIANCE:D = 25.0

.field private static final KMinAccelNoiseSigma:D = 0.75

.field private static final LOG_TAG:Ljava/lang/String; = "TR_SensorFusionEkf"

.field private static final MAX_ACC_NORM_CHANGE:D = 0.15

.field private static final NANO_TO_SEC:D = 9.999999717180685E-10

.field private static final kMaxAccelNoiseSigma:D = 7.0


# instance fields
.field private MAX_GYRO_DELAY:D

.field private mAccMeasureCovariance:Lcom/ss/texturerender/math/Matrix3x3d;

.field private mAccMeasureJacobian:Lcom/ss/texturerender/math/Matrix3x3d;

.field private mAccSample:Lcom/ss/texturerender/math/Vector3d;

.field private mAccTimeStamp:J

.field private mAverageAccNormChange:D

.field private mBiasEstimator:Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;

.field private mDisplayRotation:I

.field private mEkfToHeadTracker:Lcom/ss/texturerender/math/Quaternion;

.field private mGyroBias:Lcom/ss/texturerender/math/Vector3d;

.field private mGyroEnableSmoother:Z

.field private mGyroSample:Lcom/ss/texturerender/math/Vector3d;

.field private mGyroSmoothFactor:D

.field private mGyroTimeFilter:Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;

.field private mGyroTimeStamp:J

.field private mInnovation:Lcom/ss/texturerender/math/Vector3d;

.field private mInnovationCovariance:Lcom/ss/texturerender/math/Matrix3x3d;

.field private mIsAlignedGravity:Z

.field private mIsDisableZrotation:Z

.field private mKalmanGain:Lcom/ss/texturerender/math/Matrix3x3d;

.field private mLastRotationFromStart:Lcom/ss/texturerender/math/Quaternion;

.field private mPreviousAccNorm:D

.field private mPreviousRotation:Lcom/ss/texturerender/math/Quaternion;

.field private mProcessCovariance:Lcom/ss/texturerender/math/Matrix3x3d;

.field private mRadius:D

.field private mRotationFromStart:Lcom/ss/texturerender/math/Quaternion;

.field private mSensorStartPos:I

.field private mStartDirection:Lcom/ss/texturerender/math/Vector3d;

.field private mStateCovariance:Lcom/ss/texturerender/math/Matrix3x3d;

.field private mTestZrot:Lcom/ss/texturerender/math/Vector3d;

.field private mTexType:I


# direct methods
.method public constructor <init>(I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mGyroTimeStamp:J

    .line 7
    .line 8
    const-wide v2, 0x3fa47ae140000000L    # 0.03999999910593033

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->MAX_GYRO_DELAY:D

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    iput-boolean v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mGyroEnableSmoother:Z

    .line 17
    .line 18
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 19
    .line 20
    iput-wide v3, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mGyroSmoothFactor:D

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    iput-object v3, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mPreviousRotation:Lcom/ss/texturerender/math/Quaternion;

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccTimeStamp:J

    .line 26
    .line 27
    new-instance v0, Lcom/ss/texturerender/math/Vector3d;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/ss/texturerender/math/Vector3d;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccSample:Lcom/ss/texturerender/math/Vector3d;

    .line 33
    .line 34
    iput-boolean v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mIsDisableZrotation:Z

    .line 35
    .line 36
    iput-object v3, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mTestZrot:Lcom/ss/texturerender/math/Vector3d;

    .line 37
    .line 38
    const-wide/high16 v0, 0x4089000000000000L    # 800.0

    .line 39
    .line 40
    iput-wide v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mRadius:D

    .line 41
    .line 42
    iput p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mTexType:I

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->reset()V

    .line 45
    .line 46
    .line 47
    iget p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mTexType:I

    .line 48
    .line 49
    const-string v0, "TR_SensorFusionEkf"

    .line 50
    .line 51
    const-string v1, "new SensorFusionEkf"

    .line 52
    .line 53
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private computeInnovation(Lcom/ss/texturerender/math/Quaternion;)Lcom/ss/texturerender/math/Vector3d;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mStartDirection:Lcom/ss/texturerender/math/Vector3d;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/ss/texturerender/math/Quaternion;->applyToVector(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Quaternion;)Lcom/ss/texturerender/math/Vector3d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccSample:Lcom/ss/texturerender/math/Vector3d;

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/ss/texturerender/math/Quaternion;->rotateInto(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)Lcom/ss/texturerender/math/Quaternion;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/ss/texturerender/math/Quaternion;->getAxis()Lcom/ss/texturerender/math/Vector3d;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/ss/texturerender/math/Quaternion;->getAngle()D

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/ss/texturerender/math/Vector3d;->scale(D)Lcom/ss/texturerender/math/Vector3d;

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private computeMeasurementJacobian()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x3

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    new-instance v2, Lcom/ss/texturerender/math/Vector3d;

    .line 7
    .line 8
    const-wide/16 v6, 0x0

    .line 9
    .line 10
    const-wide/16 v8, 0x0

    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    move-object v3, v2

    .line 15
    invoke-direct/range {v3 .. v9}, Lcom/ss/texturerender/math/Vector3d;-><init>(DDD)V

    .line 16
    .line 17
    .line 18
    const-wide v3, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1, v3, v4}, Lcom/ss/texturerender/math/Vector3d;->setComponent(ID)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/ss/texturerender/math/Vector3d;->length()D

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    const-wide v7, 0x3cd203af9ee75616L    # 1.0E-15

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    cmpg-double v7, v5, v7

    .line 36
    .line 37
    if-gez v7, :cond_0

    .line 38
    .line 39
    new-instance v5, Lcom/ss/texturerender/math/Quaternion;

    .line 40
    .line 41
    invoke-direct {v5}, Lcom/ss/texturerender/math/Quaternion;-><init>()V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {v2}, Lcom/ss/texturerender/math/Vector3d;->normalize()Z

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v5, v6}, Lcom/ss/texturerender/math/Quaternion;->fromAxisAndAngle(Lcom/ss/texturerender/math/Vector3d;D)Lcom/ss/texturerender/math/Quaternion;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    :goto_1
    iget-object v6, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mRotationFromStart:Lcom/ss/texturerender/math/Quaternion;

    .line 53
    .line 54
    invoke-virtual {v5, v6}, Lcom/ss/texturerender/math/Quaternion;->times(Lcom/ss/texturerender/math/Quaternion;)Lcom/ss/texturerender/math/Quaternion;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-direct {p0, v5}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->computeInnovation(Lcom/ss/texturerender/math/Quaternion;)Lcom/ss/texturerender/math/Vector3d;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    iget-object v6, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mInnovation:Lcom/ss/texturerender/math/Vector3d;

    .line 63
    .line 64
    invoke-static {v6, v5, v2}, Lcom/ss/texturerender/math/Vector3d;->sub(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3, v4}, Lcom/ss/texturerender/math/Vector3d;->devide(D)Lcom/ss/texturerender/math/Vector3d;

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccMeasureJacobian:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 71
    .line 72
    iget-wide v4, v2, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 73
    .line 74
    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/ss/texturerender/math/Matrix3x3d;->set(IID)V

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccMeasureJacobian:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 78
    .line 79
    iget-wide v4, v2, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 80
    .line 81
    const/4 v6, 0x1

    .line 82
    invoke-virtual {v3, v6, v1, v4, v5}, Lcom/ss/texturerender/math/Matrix3x3d;->set(IID)V

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccMeasureJacobian:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 86
    .line 87
    const/4 v4, 0x2

    .line 88
    iget-wide v5, v2, Lcom/ss/texturerender/math/Vector3d;->z:D

    .line 89
    .line 90
    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/ss/texturerender/math/Matrix3x3d;->set(IID)V

    .line 91
    .line 92
    .line 93
    add-int/lit8 v1, v1, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method private getRotationFromGyro(Lcom/ss/texturerender/math/Vector3d;D)Lcom/ss/texturerender/math/Quaternion;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/ss/texturerender/math/Vector3d;->length()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0x3cd203af9ee75616L    # 1.0E-15

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmpg-double v2, v0, v2

    .line 11
    .line 12
    if-gez v2, :cond_0

    .line 13
    .line 14
    new-instance p1, Lcom/ss/texturerender/math/Quaternion;

    .line 15
    .line 16
    invoke-direct {p1}, Lcom/ss/texturerender/math/Quaternion;-><init>()V

    .line 17
    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/ss/texturerender/math/Vector3d;->devide(D)Lcom/ss/texturerender/math/Vector3d;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    neg-double p2, p2

    .line 25
    mul-double/2addr p2, v0

    .line 26
    invoke-static {p1, p2, p3}, Lcom/ss/texturerender/math/Quaternion;->fromAxisAndAngle(Lcom/ss/texturerender/math/Vector3d;D)Lcom/ss/texturerender/math/Quaternion;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method private rotationFromVector(Lcom/ss/texturerender/math/Vector3d;)Lcom/ss/texturerender/math/Quaternion;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/ss/texturerender/math/Vector3d;->length()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0x3cd203af9ee75616L    # 1.0E-15

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmpg-double v2, v0, v2

    .line 11
    .line 12
    if-gez v2, :cond_0

    .line 13
    .line 14
    new-instance p1, Lcom/ss/texturerender/math/Quaternion;

    .line 15
    .line 16
    invoke-direct {p1}, Lcom/ss/texturerender/math/Quaternion;-><init>()V

    .line 17
    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/ss/texturerender/math/Vector3d;->normalize()Z

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/math/Quaternion;->fromAxisAndAngle(Lcom/ss/texturerender/math/Vector3d;D)Lcom/ss/texturerender/math/Quaternion;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method private slerp(Lcom/ss/texturerender/math/Quaternion;Lcom/ss/texturerender/math/Quaternion;D)Lcom/ss/texturerender/math/Quaternion;
    .locals 32

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/math/Quaternion;->getX0()D

    .line 2
    .line 3
    .line 4
    move-result-wide v1

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/math/Quaternion;->getX1()D

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/math/Quaternion;->getX2()D

    .line 10
    .line 11
    .line 12
    move-result-wide v5

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/math/Quaternion;->getX3()D

    .line 14
    .line 15
    .line 16
    move-result-wide v7

    .line 17
    invoke-virtual/range {p2 .. p2}, Lcom/ss/texturerender/math/Quaternion;->getX0()D

    .line 18
    .line 19
    .line 20
    move-result-wide v9

    .line 21
    invoke-virtual/range {p2 .. p2}, Lcom/ss/texturerender/math/Quaternion;->getX1()D

    .line 22
    .line 23
    .line 24
    move-result-wide v11

    .line 25
    invoke-virtual/range {p2 .. p2}, Lcom/ss/texturerender/math/Quaternion;->getX2()D

    .line 26
    .line 27
    .line 28
    move-result-wide v13

    .line 29
    invoke-virtual/range {p2 .. p2}, Lcom/ss/texturerender/math/Quaternion;->getX3()D

    .line 30
    .line 31
    .line 32
    move-result-wide v15

    .line 33
    mul-double v17, v7, v15

    .line 34
    .line 35
    mul-double v19, v1, v9

    .line 36
    .line 37
    add-double v17, v17, v19

    .line 38
    .line 39
    mul-double v19, v3, v11

    .line 40
    .line 41
    add-double v17, v17, v19

    .line 42
    .line 43
    mul-double v19, v5, v13

    .line 44
    .line 45
    add-double v17, v17, v19

    .line 46
    .line 47
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    .line 48
    .line 49
    .line 50
    move-result-wide v19

    .line 51
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    .line 52
    .line 53
    cmpl-double v0, v19, v21

    .line 54
    .line 55
    if-ltz v0, :cond_0

    .line 56
    .line 57
    new-instance v9, Lcom/ss/texturerender/math/Quaternion;

    .line 58
    .line 59
    move-object v0, v9

    .line 60
    invoke-direct/range {v0 .. v8}, Lcom/ss/texturerender/math/Quaternion;-><init>(DDDD)V

    .line 61
    .line 62
    .line 63
    return-object v9

    .line 64
    :cond_0
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->acos(D)D

    .line 65
    .line 66
    .line 67
    move-result-wide v19

    .line 68
    mul-double v17, v17, v17

    .line 69
    .line 70
    sub-double v17, v21, v17

    .line 71
    .line 72
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    .line 73
    .line 74
    .line 75
    move-result-wide v17

    .line 76
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    .line 77
    .line 78
    .line 79
    move-result-wide v23

    .line 80
    const-wide v25, 0x3f50624dd2f1a9fcL    # 0.001

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    cmpg-double v0, v23, v25

    .line 86
    .line 87
    if-gez v0, :cond_1

    .line 88
    .line 89
    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    .line 90
    .line 91
    mul-double v7, v7, v17

    .line 92
    .line 93
    mul-double v15, v15, v17

    .line 94
    .line 95
    add-double v26, v7, v15

    .line 96
    .line 97
    mul-double v1, v1, v17

    .line 98
    .line 99
    mul-double v9, v9, v17

    .line 100
    .line 101
    add-double v20, v1, v9

    .line 102
    .line 103
    mul-double v3, v3, v17

    .line 104
    .line 105
    mul-double v11, v11, v17

    .line 106
    .line 107
    add-double v22, v3, v11

    .line 108
    .line 109
    mul-double v5, v5, v17

    .line 110
    .line 111
    mul-double v13, v13, v17

    .line 112
    .line 113
    add-double v24, v5, v13

    .line 114
    .line 115
    new-instance v0, Lcom/ss/texturerender/math/Quaternion;

    .line 116
    .line 117
    move-object/from16 v19, v0

    .line 118
    .line 119
    invoke-direct/range {v19 .. v27}, Lcom/ss/texturerender/math/Quaternion;-><init>(DDDD)V

    .line 120
    .line 121
    .line 122
    return-object v0

    .line 123
    :cond_1
    sub-double v21, v21, p3

    .line 124
    .line 125
    mul-double v21, v21, v19

    .line 126
    .line 127
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    .line 128
    .line 129
    .line 130
    move-result-wide v21

    .line 131
    div-double v21, v21, v17

    .line 132
    .line 133
    mul-double v19, v19, p3

    .line 134
    .line 135
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    .line 136
    .line 137
    .line 138
    move-result-wide v19

    .line 139
    div-double v19, v19, v17

    .line 140
    .line 141
    mul-double v7, v7, v21

    .line 142
    .line 143
    mul-double v15, v15, v19

    .line 144
    .line 145
    add-double v30, v7, v15

    .line 146
    .line 147
    mul-double v1, v1, v21

    .line 148
    .line 149
    mul-double v9, v9, v19

    .line 150
    .line 151
    add-double v24, v1, v9

    .line 152
    .line 153
    mul-double v3, v3, v21

    .line 154
    .line 155
    mul-double v11, v11, v19

    .line 156
    .line 157
    add-double v26, v3, v11

    .line 158
    .line 159
    mul-double v5, v5, v21

    .line 160
    .line 161
    mul-double v13, v13, v19

    .line 162
    .line 163
    add-double v28, v5, v13

    .line 164
    .line 165
    new-instance v0, Lcom/ss/texturerender/math/Quaternion;

    .line 166
    .line 167
    move-object/from16 v23, v0

    .line 168
    .line 169
    invoke-direct/range {v23 .. v31}, Lcom/ss/texturerender/math/Quaternion;-><init>(DDDD)V

    .line 170
    .line 171
    .line 172
    return-object v0
.end method

.method private updateMeasurementCovariance()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccSample:Lcom/ss/texturerender/math/Vector3d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/texturerender/math/Vector3d;->length()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mPreviousAccNorm:D

    .line 8
    .line 9
    sub-double v2, v0, v2

    .line 10
    .line 11
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iput-wide v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mPreviousAccNorm:D

    .line 16
    .line 17
    iget-wide v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAverageAccNormChange:D

    .line 18
    .line 19
    add-double/2addr v0, v2

    .line 20
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 21
    .line 22
    div-double/2addr v0, v2

    .line 23
    iput-wide v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAverageAccNormChange:D

    .line 24
    .line 25
    const-wide v2, 0x3fc3333333333333L    # 0.15

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    div-double/2addr v0, v2

    .line 31
    const-wide/high16 v2, 0x4019000000000000L    # 6.25

    .line 32
    .line 33
    mul-double/2addr v0, v2

    .line 34
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 35
    .line 36
    add-double/2addr v0, v2

    .line 37
    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    .line 38
    .line 39
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccMeasureCovariance:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/ss/texturerender/math/Matrix3x3d;->setIdentity()Lcom/ss/texturerender/math/Matrix3x3d;

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccMeasureCovariance:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 49
    .line 50
    mul-double/2addr v0, v0

    .line 51
    invoke-virtual {v2, v0, v1}, Lcom/ss/texturerender/math/Matrix3x3d;->scale(D)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private updateStateCovariance(Lcom/ss/texturerender/math/Matrix3x3d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mStateCovariance:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/ss/texturerender/math/Matrix3x3d;->mult(Lcom/ss/texturerender/math/Matrix3x3d;Lcom/ss/texturerender/math/Matrix3x3d;)Lcom/ss/texturerender/math/Matrix3x3d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/ss/texturerender/math/Matrix3x3d;->transpose()Lcom/ss/texturerender/math/Matrix3x3d;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {v0, p1}, Lcom/ss/texturerender/math/Matrix3x3d;->mult(Lcom/ss/texturerender/math/Matrix3x3d;Lcom/ss/texturerender/math/Matrix3x3d;)Lcom/ss/texturerender/math/Matrix3x3d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mStateCovariance:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public getDisplayRotation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mDisplayRotation:I

    .line 2
    .line 3
    return v0
.end method

.method public getRotation()Lcom/ss/texturerender/math/Quaternion;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mTexType:I

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "mDisplayRotation:"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget v3, v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mDisplayRotation:I

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, ",rotation:"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v3, v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mRotationFromStart:Lcom/ss/texturerender/math/Quaternion;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v3, ";acc:"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v3, v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccSample:Lcom/ss/texturerender/math/Vector3d;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/ss/texturerender/math/Vector3d;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v3, "TR_SensorFusionEkf"

    .line 49
    .line 50
    invoke-static {v1, v3, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mRotationFromStart:Lcom/ss/texturerender/math/Quaternion;

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    if-nez v1, :cond_0

    .line 57
    .line 58
    return-object v2

    .line 59
    :cond_0
    iget-object v3, v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mLastRotationFromStart:Lcom/ss/texturerender/math/Quaternion;

    .line 60
    .line 61
    if-nez v3, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v1, v3}, Lcom/ss/texturerender/math/Quaternion;->times(Lcom/ss/texturerender/math/Quaternion;)Lcom/ss/texturerender/math/Quaternion;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :goto_0
    new-instance v3, Lcom/ss/texturerender/math/Quaternion;

    .line 69
    .line 70
    invoke-direct {v3}, Lcom/ss/texturerender/math/Quaternion;-><init>()V

    .line 71
    .line 72
    .line 73
    iget v4, v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mDisplayRotation:I

    .line 74
    .line 75
    const/4 v5, 0x1

    .line 76
    const/4 v6, 0x2

    .line 77
    if-eq v4, v5, :cond_4

    .line 78
    .line 79
    if-eq v4, v6, :cond_3

    .line 80
    .line 81
    const/4 v5, 0x3

    .line 82
    if-eq v4, v5, :cond_2

    .line 83
    .line 84
    goto/16 :goto_2

    .line 85
    .line 86
    :cond_2
    new-instance v3, Lcom/ss/texturerender/math/Quaternion;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/ss/texturerender/math/Quaternion;->getX1()D

    .line 89
    .line 90
    .line 91
    move-result-wide v8

    .line 92
    invoke-virtual {v1}, Lcom/ss/texturerender/math/Quaternion;->getX0()D

    .line 93
    .line 94
    .line 95
    move-result-wide v4

    .line 96
    neg-double v10, v4

    .line 97
    invoke-virtual {v1}, Lcom/ss/texturerender/math/Quaternion;->getX2()D

    .line 98
    .line 99
    .line 100
    move-result-wide v12

    .line 101
    invoke-virtual {v1}, Lcom/ss/texturerender/math/Quaternion;->getX3()D

    .line 102
    .line 103
    .line 104
    move-result-wide v14

    .line 105
    move-object v7, v3

    .line 106
    invoke-direct/range {v7 .. v15}, Lcom/ss/texturerender/math/Quaternion;-><init>(DDDD)V

    .line 107
    .line 108
    .line 109
    new-instance v1, Lcom/ss/texturerender/math/Vector3d;

    .line 110
    .line 111
    const-wide/16 v19, 0x0

    .line 112
    .line 113
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    .line 114
    .line 115
    const-wide/16 v17, 0x0

    .line 116
    .line 117
    move-object/from16 v16, v1

    .line 118
    .line 119
    invoke-direct/range {v16 .. v22}, Lcom/ss/texturerender/math/Vector3d;-><init>(DDD)V

    .line 120
    .line 121
    .line 122
    const-wide v4, 0x4012d97c7f3321d2L    # 4.71238898038469

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    invoke-static {v1, v4, v5}, Lcom/ss/texturerender/math/Quaternion;->fromAxisAndAngle(Lcom/ss/texturerender/math/Vector3d;D)Lcom/ss/texturerender/math/Quaternion;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    :goto_1
    move-object/from16 v23, v3

    .line 132
    .line 133
    move-object v3, v1

    .line 134
    move-object/from16 v1, v23

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_3
    new-instance v3, Lcom/ss/texturerender/math/Quaternion;

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/ss/texturerender/math/Quaternion;->getX0()D

    .line 140
    .line 141
    .line 142
    move-result-wide v4

    .line 143
    neg-double v8, v4

    .line 144
    invoke-virtual {v1}, Lcom/ss/texturerender/math/Quaternion;->getX1()D

    .line 145
    .line 146
    .line 147
    move-result-wide v4

    .line 148
    neg-double v10, v4

    .line 149
    invoke-virtual {v1}, Lcom/ss/texturerender/math/Quaternion;->getX2()D

    .line 150
    .line 151
    .line 152
    move-result-wide v12

    .line 153
    invoke-virtual {v1}, Lcom/ss/texturerender/math/Quaternion;->getX3()D

    .line 154
    .line 155
    .line 156
    move-result-wide v14

    .line 157
    move-object v7, v3

    .line 158
    invoke-direct/range {v7 .. v15}, Lcom/ss/texturerender/math/Quaternion;-><init>(DDDD)V

    .line 159
    .line 160
    .line 161
    new-instance v1, Lcom/ss/texturerender/math/Vector3d;

    .line 162
    .line 163
    const-wide/16 v19, 0x0

    .line 164
    .line 165
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    .line 166
    .line 167
    const-wide/16 v17, 0x0

    .line 168
    .line 169
    move-object/from16 v16, v1

    .line 170
    .line 171
    invoke-direct/range {v16 .. v22}, Lcom/ss/texturerender/math/Vector3d;-><init>(DDD)V

    .line 172
    .line 173
    .line 174
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    invoke-static {v1, v4, v5}, Lcom/ss/texturerender/math/Quaternion;->fromAxisAndAngle(Lcom/ss/texturerender/math/Vector3d;D)Lcom/ss/texturerender/math/Quaternion;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    goto :goto_1

    .line 184
    :cond_4
    new-instance v3, Lcom/ss/texturerender/math/Quaternion;

    .line 185
    .line 186
    invoke-virtual {v1}, Lcom/ss/texturerender/math/Quaternion;->getX1()D

    .line 187
    .line 188
    .line 189
    move-result-wide v4

    .line 190
    neg-double v8, v4

    .line 191
    invoke-virtual {v1}, Lcom/ss/texturerender/math/Quaternion;->getX0()D

    .line 192
    .line 193
    .line 194
    move-result-wide v10

    .line 195
    invoke-virtual {v1}, Lcom/ss/texturerender/math/Quaternion;->getX2()D

    .line 196
    .line 197
    .line 198
    move-result-wide v12

    .line 199
    invoke-virtual {v1}, Lcom/ss/texturerender/math/Quaternion;->getX3()D

    .line 200
    .line 201
    .line 202
    move-result-wide v14

    .line 203
    move-object v7, v3

    .line 204
    invoke-direct/range {v7 .. v15}, Lcom/ss/texturerender/math/Quaternion;-><init>(DDDD)V

    .line 205
    .line 206
    .line 207
    new-instance v1, Lcom/ss/texturerender/math/Vector3d;

    .line 208
    .line 209
    const-wide/16 v19, 0x0

    .line 210
    .line 211
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    .line 212
    .line 213
    const-wide/16 v17, 0x0

    .line 214
    .line 215
    move-object/from16 v16, v1

    .line 216
    .line 217
    invoke-direct/range {v16 .. v22}, Lcom/ss/texturerender/math/Vector3d;-><init>(DDD)V

    .line 218
    .line 219
    .line 220
    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    invoke-static {v1, v4, v5}, Lcom/ss/texturerender/math/Quaternion;->fromAxisAndAngle(Lcom/ss/texturerender/math/Vector3d;D)Lcom/ss/texturerender/math/Quaternion;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    goto :goto_1

    .line 230
    :goto_2
    if-nez v1, :cond_5

    .line 231
    .line 232
    return-object v2

    .line 233
    :cond_5
    iget-object v2, v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mEkfToHeadTracker:Lcom/ss/texturerender/math/Quaternion;

    .line 234
    .line 235
    if-nez v2, :cond_6

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_6
    invoke-virtual {v1, v2}, Lcom/ss/texturerender/math/Quaternion;->times(Lcom/ss/texturerender/math/Quaternion;)Lcom/ss/texturerender/math/Quaternion;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    :goto_3
    invoke-virtual {v1, v3}, Lcom/ss/texturerender/math/Quaternion;->times(Lcom/ss/texturerender/math/Quaternion;)Lcom/ss/texturerender/math/Quaternion;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    iget-boolean v2, v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mIsDisableZrotation:Z

    .line 247
    .line 248
    if-eqz v2, :cond_8

    .line 249
    .line 250
    iget-object v2, v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mTestZrot:Lcom/ss/texturerender/math/Vector3d;

    .line 251
    .line 252
    if-nez v2, :cond_7

    .line 253
    .line 254
    new-instance v2, Lcom/ss/texturerender/math/Vector3d;

    .line 255
    .line 256
    const-wide/16 v10, 0x0

    .line 257
    .line 258
    const-wide/16 v12, 0x0

    .line 259
    .line 260
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 261
    .line 262
    move-object v7, v2

    .line 263
    invoke-direct/range {v7 .. v13}, Lcom/ss/texturerender/math/Vector3d;-><init>(DDD)V

    .line 264
    .line 265
    .line 266
    iput-object v2, v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mTestZrot:Lcom/ss/texturerender/math/Vector3d;

    .line 267
    .line 268
    :cond_7
    iget-object v2, v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mTestZrot:Lcom/ss/texturerender/math/Vector3d;

    .line 269
    .line 270
    invoke-static {v2, v1}, Lcom/ss/texturerender/math/Quaternion;->applyToVector(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Quaternion;)Lcom/ss/texturerender/math/Vector3d;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    const-wide/16 v3, 0x0

    .line 275
    .line 276
    invoke-virtual {v2, v6, v3, v4}, Lcom/ss/texturerender/math/Vector3d;->setComponent(ID)V

    .line 277
    .line 278
    .line 279
    iget-object v3, v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mTestZrot:Lcom/ss/texturerender/math/Vector3d;

    .line 280
    .line 281
    invoke-static {v2, v3}, Lcom/ss/texturerender/math/Quaternion;->rotateInto(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)Lcom/ss/texturerender/math/Quaternion;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-virtual {v1, v2}, Lcom/ss/texturerender/math/Quaternion;->times(Lcom/ss/texturerender/math/Quaternion;)Lcom/ss/texturerender/math/Quaternion;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    :cond_8
    iget-boolean v2, v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mGyroEnableSmoother:Z

    .line 290
    .line 291
    if-eqz v2, :cond_a

    .line 292
    .line 293
    iget-object v2, v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mPreviousRotation:Lcom/ss/texturerender/math/Quaternion;

    .line 294
    .line 295
    if-nez v2, :cond_9

    .line 296
    .line 297
    iput-object v1, v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mPreviousRotation:Lcom/ss/texturerender/math/Quaternion;

    .line 298
    .line 299
    :cond_9
    iget-object v2, v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mPreviousRotation:Lcom/ss/texturerender/math/Quaternion;

    .line 300
    .line 301
    iget-wide v3, v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mGyroSmoothFactor:D

    .line 302
    .line 303
    invoke-direct {v0, v2, v1, v3, v4}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->slerp(Lcom/ss/texturerender/math/Quaternion;Lcom/ss/texturerender/math/Quaternion;D)Lcom/ss/texturerender/math/Quaternion;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    iput-object v1, v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mPreviousRotation:Lcom/ss/texturerender/math/Quaternion;

    .line 308
    .line 309
    :cond_a
    return-object v1
.end method

.method public isAlignedGravity()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mIsAlignedGravity:Z

    .line 2
    .line 3
    return v0
.end method

.method public declared-synchronized processAcc(Landroid/hardware/SensorEvent;)V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccTimeStamp:J

    .line 3
    .line 4
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccSample:Lcom/ss/texturerender/math/Vector3d;

    .line 13
    .line 14
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    aget v2, v0, v2

    .line 18
    .line 19
    float-to-double v2, v2

    .line 20
    const/4 v8, 0x1

    .line 21
    aget v4, v0, v8

    .line 22
    .line 23
    float-to-double v4, v4

    .line 24
    const/4 v9, 0x2

    .line 25
    aget v0, v0, v9

    .line 26
    .line 27
    float-to-double v6, v0

    .line 28
    invoke-virtual/range {v1 .. v7}, Lcom/ss/texturerender/math/Vector3d;->set(DDD)V

    .line 29
    .line 30
    .line 31
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccTimeStamp:J

    .line 34
    .line 35
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mBiasEstimator:Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccSample:Lcom/ss/texturerender/math/Vector3d;

    .line 38
    .line 39
    invoke-virtual {p1, v2, v0, v1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->processAccelerometer(Lcom/ss/texturerender/math/Vector3d;J)V

    .line 40
    .line 41
    .line 42
    iget-boolean p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mIsAlignedGravity:Z

    .line 43
    .line 44
    if-nez p1, :cond_6

    .line 45
    .line 46
    iput-boolean v8, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mIsAlignedGravity:Z

    .line 47
    .line 48
    iget p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mSensorStartPos:I

    .line 49
    .line 50
    if-ne p1, v9, :cond_1

    .line 51
    .line 52
    new-instance p1, Lcom/ss/texturerender/math/Vector3d;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccSample:Lcom/ss/texturerender/math/Vector3d;

    .line 55
    .line 56
    invoke-direct {p1, v0}, Lcom/ss/texturerender/math/Vector3d;-><init>(Lcom/ss/texturerender/math/Vector3d;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mStartDirection:Lcom/ss/texturerender/math/Vector3d;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :cond_1
    iget p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mDisplayRotation:I

    .line 66
    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    if-eq p1, v8, :cond_4

    .line 70
    .line 71
    if-eq p1, v9, :cond_3

    .line 72
    .line 73
    const/4 v0, 0x3

    .line 74
    if-eq p1, v0, :cond_2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    new-instance p1, Lcom/ss/texturerender/math/Vector3d;

    .line 78
    .line 79
    const-wide/16 v4, 0x0

    .line 80
    .line 81
    const-wide/16 v6, 0x0

    .line 82
    .line 83
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 84
    .line 85
    move-object v1, p1

    .line 86
    invoke-direct/range {v1 .. v7}, Lcom/ss/texturerender/math/Vector3d;-><init>(DDD)V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mStartDirection:Lcom/ss/texturerender/math/Vector3d;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    new-instance p1, Lcom/ss/texturerender/math/Vector3d;

    .line 93
    .line 94
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 95
    .line 96
    const-wide/16 v5, 0x0

    .line 97
    .line 98
    const-wide/16 v1, 0x0

    .line 99
    .line 100
    move-object v0, p1

    .line 101
    invoke-direct/range {v0 .. v6}, Lcom/ss/texturerender/math/Vector3d;-><init>(DDD)V

    .line 102
    .line 103
    .line 104
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mStartDirection:Lcom/ss/texturerender/math/Vector3d;

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    new-instance p1, Lcom/ss/texturerender/math/Vector3d;

    .line 108
    .line 109
    const-wide/16 v3, 0x0

    .line 110
    .line 111
    const-wide/16 v5, 0x0

    .line 112
    .line 113
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 114
    .line 115
    move-object v0, p1

    .line 116
    invoke-direct/range {v0 .. v6}, Lcom/ss/texturerender/math/Vector3d;-><init>(DDD)V

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mStartDirection:Lcom/ss/texturerender/math/Vector3d;

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    new-instance p1, Lcom/ss/texturerender/math/Vector3d;

    .line 123
    .line 124
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 125
    .line 126
    const-wide/16 v5, 0x0

    .line 127
    .line 128
    const-wide/16 v1, 0x0

    .line 129
    .line 130
    move-object v0, p1

    .line 131
    invoke-direct/range {v0 .. v6}, Lcom/ss/texturerender/math/Vector3d;-><init>(DDD)V

    .line 132
    .line 133
    .line 134
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mStartDirection:Lcom/ss/texturerender/math/Vector3d;

    .line 135
    .line 136
    :goto_0
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mStartDirection:Lcom/ss/texturerender/math/Vector3d;

    .line 137
    .line 138
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccSample:Lcom/ss/texturerender/math/Vector3d;

    .line 139
    .line 140
    invoke-static {p1, v0}, Lcom/ss/texturerender/math/Quaternion;->rotateInto(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)Lcom/ss/texturerender/math/Quaternion;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mRotationFromStart:Lcom/ss/texturerender/math/Quaternion;

    .line 145
    .line 146
    iget p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mTexType:I

    .line 147
    .line 148
    const-string v0, "TR_SensorFusionEkf"

    .line 149
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v2, "rotation start:"

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mRotationFromStart:Lcom/ss/texturerender/math/Quaternion;

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v2, ";acc:"

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccSample:Lcom/ss/texturerender/math/Vector3d;

    .line 171
    .line 172
    invoke-virtual {v2}, Lcom/ss/texturerender/math/Vector3d;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccSample:Lcom/ss/texturerender/math/Vector3d;

    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/ss/texturerender/math/Vector3d;->length()D

    .line 189
    .line 190
    .line 191
    move-result-wide v0

    .line 192
    iput-wide v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mPreviousAccNorm:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    .line 194
    monitor-exit p0

    .line 195
    return-void

    .line 196
    :cond_6
    :try_start_2
    invoke-direct {p0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->updateMeasurementCovariance()V

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mRotationFromStart:Lcom/ss/texturerender/math/Quaternion;

    .line 200
    .line 201
    invoke-direct {p0, p1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->computeInnovation(Lcom/ss/texturerender/math/Quaternion;)Lcom/ss/texturerender/math/Vector3d;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mInnovation:Lcom/ss/texturerender/math/Vector3d;

    .line 206
    .line 207
    invoke-direct {p0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->computeMeasurementJacobian()V

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccMeasureJacobian:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 211
    .line 212
    invoke-virtual {p1}, Lcom/ss/texturerender/math/Matrix3x3d;->transpose()Lcom/ss/texturerender/math/Matrix3x3d;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccMeasureJacobian:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 217
    .line 218
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mStateCovariance:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 219
    .line 220
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mInnovationCovariance:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 221
    .line 222
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/math/Matrix3x3d;->mult(Lcom/ss/texturerender/math/Matrix3x3d;Lcom/ss/texturerender/math/Matrix3x3d;Lcom/ss/texturerender/math/Matrix3x3d;)V

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mInnovationCovariance:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 226
    .line 227
    invoke-static {v0, p1, v0}, Lcom/ss/texturerender/math/Matrix3x3d;->mult(Lcom/ss/texturerender/math/Matrix3x3d;Lcom/ss/texturerender/math/Matrix3x3d;Lcom/ss/texturerender/math/Matrix3x3d;)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mInnovationCovariance:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 231
    .line 232
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccMeasureCovariance:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 233
    .line 234
    invoke-static {v0, v1, v0}, Lcom/ss/texturerender/math/Matrix3x3d;->add(Lcom/ss/texturerender/math/Matrix3x3d;Lcom/ss/texturerender/math/Matrix3x3d;Lcom/ss/texturerender/math/Matrix3x3d;)V

    .line 235
    .line 236
    .line 237
    new-instance v0, Lcom/ss/texturerender/math/Matrix3x3d;

    .line 238
    .line 239
    invoke-direct {v0}, Lcom/ss/texturerender/math/Matrix3x3d;-><init>()V

    .line 240
    .line 241
    .line 242
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mInnovationCovariance:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 243
    .line 244
    invoke-virtual {v1, v0}, Lcom/ss/texturerender/math/Matrix3x3d;->invert(Lcom/ss/texturerender/math/Matrix3x3d;)Z

    .line 245
    .line 246
    .line 247
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mStateCovariance:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 248
    .line 249
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mKalmanGain:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 250
    .line 251
    invoke-static {v1, p1, v2}, Lcom/ss/texturerender/math/Matrix3x3d;->mult(Lcom/ss/texturerender/math/Matrix3x3d;Lcom/ss/texturerender/math/Matrix3x3d;Lcom/ss/texturerender/math/Matrix3x3d;)V

    .line 252
    .line 253
    .line 254
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mKalmanGain:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 255
    .line 256
    invoke-static {p1, v0, p1}, Lcom/ss/texturerender/math/Matrix3x3d;->mult(Lcom/ss/texturerender/math/Matrix3x3d;Lcom/ss/texturerender/math/Matrix3x3d;Lcom/ss/texturerender/math/Matrix3x3d;)V

    .line 257
    .line 258
    .line 259
    new-instance p1, Lcom/ss/texturerender/math/Vector3d;

    .line 260
    .line 261
    invoke-direct {p1}, Lcom/ss/texturerender/math/Vector3d;-><init>()V

    .line 262
    .line 263
    .line 264
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mKalmanGain:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 265
    .line 266
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mInnovation:Lcom/ss/texturerender/math/Vector3d;

    .line 267
    .line 268
    invoke-static {v0, v1, p1}, Lcom/ss/texturerender/math/Matrix3x3d;->mult(Lcom/ss/texturerender/math/Matrix3x3d;Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)V

    .line 269
    .line 270
    .line 271
    new-instance v0, Lcom/ss/texturerender/math/Matrix3x3d;

    .line 272
    .line 273
    invoke-direct {v0}, Lcom/ss/texturerender/math/Matrix3x3d;-><init>()V

    .line 274
    .line 275
    .line 276
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mKalmanGain:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 277
    .line 278
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccMeasureJacobian:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 279
    .line 280
    invoke-static {v1, v2, v0}, Lcom/ss/texturerender/math/Matrix3x3d;->mult(Lcom/ss/texturerender/math/Matrix3x3d;Lcom/ss/texturerender/math/Matrix3x3d;Lcom/ss/texturerender/math/Matrix3x3d;)V

    .line 281
    .line 282
    .line 283
    new-instance v1, Lcom/ss/texturerender/math/Matrix3x3d;

    .line 284
    .line 285
    invoke-direct {v1}, Lcom/ss/texturerender/math/Matrix3x3d;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1}, Lcom/ss/texturerender/math/Matrix3x3d;->setIdentity()Lcom/ss/texturerender/math/Matrix3x3d;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, v0}, Lcom/ss/texturerender/math/Matrix3x3d;->minusEquals(Lcom/ss/texturerender/math/Matrix3x3d;)V

    .line 292
    .line 293
    .line 294
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mStateCovariance:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 295
    .line 296
    invoke-static {v1, v0, v0}, Lcom/ss/texturerender/math/Matrix3x3d;->mult(Lcom/ss/texturerender/math/Matrix3x3d;Lcom/ss/texturerender/math/Matrix3x3d;Lcom/ss/texturerender/math/Matrix3x3d;)V

    .line 297
    .line 298
    .line 299
    invoke-direct {p0, p1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->rotationFromVector(Lcom/ss/texturerender/math/Vector3d;)Lcom/ss/texturerender/math/Quaternion;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mRotationFromStart:Lcom/ss/texturerender/math/Quaternion;

    .line 304
    .line 305
    invoke-virtual {p1, v0}, Lcom/ss/texturerender/math/Quaternion;->times(Lcom/ss/texturerender/math/Quaternion;)Lcom/ss/texturerender/math/Quaternion;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mRotationFromStart:Lcom/ss/texturerender/math/Quaternion;

    .line 310
    .line 311
    invoke-static {p1}, Lcom/ss/texturerender/math/Matrix3x3d;->rotationMatrix3x3(Lcom/ss/texturerender/math/Quaternion;)Lcom/ss/texturerender/math/Matrix3x3d;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-direct {p0, p1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->updateStateCovariance(Lcom/ss/texturerender/math/Matrix3x3d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    .line 317
    .line 318
    monitor-exit p0

    .line 319
    return-void

    .line 320
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    throw p1
.end method

.method public declared-synchronized processGyro(Landroid/hardware/SensorEvent;)V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mGyroTimeStamp:J

    .line 3
    .line 4
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-lez v4, :cond_0

    .line 9
    .line 10
    iget p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mTexType:I

    .line 11
    .line 12
    const-string v0, "TR_SensorFusionEkf"

    .line 13
    .line 14
    const-string v1, "lastTime > curTime, return"

    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    const-wide/16 v4, 0x0

    .line 25
    .line 26
    cmp-long v4, v0, v4

    .line 27
    .line 28
    if-lez v4, :cond_4

    .line 29
    .line 30
    sub-long/2addr v2, v0

    .line 31
    long-to-double v0, v2

    .line 32
    const-wide v2, 0x3e112e0be0000000L    # 9.999999717180685E-10

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    mul-double/2addr v0, v2

    .line 38
    :try_start_1
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mGyroTimeFilter:Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    new-instance v2, Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;

    .line 43
    .line 44
    invoke-direct {v2}, Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mGyroTimeFilter:Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;

    .line 48
    .line 49
    :cond_1
    iget-wide v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->MAX_GYRO_DELAY:D

    .line 50
    .line 51
    cmpl-double v2, v0, v2

    .line 52
    .line 53
    if-lez v2, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mGyroTimeFilter:Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;->isFilterValid()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mGyroTimeFilter:Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;->getFilteredTime()D

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const-wide v0, 0x3f847ae140000000L    # 0.009999999776482582

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mGyroTimeFilter:Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;

    .line 77
    .line 78
    invoke-virtual {v2, v0, v1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;->addSample(D)V

    .line 79
    .line 80
    .line 81
    :goto_0
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mGyroSample:Lcom/ss/texturerender/math/Vector3d;

    .line 82
    .line 83
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    aget v4, v3, v4

    .line 87
    .line 88
    float-to-double v4, v4

    .line 89
    const/4 v6, 0x1

    .line 90
    aget v6, v3, v6

    .line 91
    .line 92
    float-to-double v6, v6

    .line 93
    const/4 v8, 0x2

    .line 94
    aget v3, v3, v8

    .line 95
    .line 96
    float-to-double v8, v3

    .line 97
    move-wide v3, v4

    .line 98
    move-wide v5, v6

    .line 99
    move-wide v7, v8

    .line 100
    invoke-virtual/range {v2 .. v8}, Lcom/ss/texturerender/math/Vector3d;->set(DDD)V

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mBiasEstimator:Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;

    .line 104
    .line 105
    iget-object v3, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mGyroSample:Lcom/ss/texturerender/math/Vector3d;

    .line 106
    .line 107
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 108
    .line 109
    invoke-virtual {v2, v3, v4, v5}, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->processGyroscope(Lcom/ss/texturerender/math/Vector3d;J)V

    .line 110
    .line 111
    .line 112
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mBiasEstimator:Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;

    .line 113
    .line 114
    iget-object v3, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mGyroBias:Lcom/ss/texturerender/math/Vector3d;

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;->getGyroBias(Lcom/ss/texturerender/math/Vector3d;)V

    .line 117
    .line 118
    .line 119
    iget-boolean v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mIsAlignedGravity:Z

    .line 120
    .line 121
    if-eqz v2, :cond_4

    .line 122
    .line 123
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mGyroSample:Lcom/ss/texturerender/math/Vector3d;

    .line 124
    .line 125
    iget-object v3, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mGyroBias:Lcom/ss/texturerender/math/Vector3d;

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Lcom/ss/texturerender/math/Vector3d;->sub(Lcom/ss/texturerender/math/Vector3d;)Lcom/ss/texturerender/math/Vector3d;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-direct {p0, v2, v0, v1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->getRotationFromGyro(Lcom/ss/texturerender/math/Vector3d;D)Lcom/ss/texturerender/math/Quaternion;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    iget-object v3, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mRotationFromStart:Lcom/ss/texturerender/math/Quaternion;

    .line 136
    .line 137
    invoke-virtual {v2, v3}, Lcom/ss/texturerender/math/Quaternion;->times(Lcom/ss/texturerender/math/Quaternion;)Lcom/ss/texturerender/math/Quaternion;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    iput-object v3, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mRotationFromStart:Lcom/ss/texturerender/math/Quaternion;

    .line 142
    .line 143
    invoke-static {v2}, Lcom/ss/texturerender/math/Matrix3x3d;->rotationMatrix3x3(Lcom/ss/texturerender/math/Quaternion;)Lcom/ss/texturerender/math/Matrix3x3d;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-direct {p0, v2}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->updateStateCovariance(Lcom/ss/texturerender/math/Matrix3x3d;)V

    .line 148
    .line 149
    .line 150
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mStateCovariance:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 151
    .line 152
    iget-object v3, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mProcessCovariance:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 153
    .line 154
    mul-double/2addr v0, v0

    .line 155
    invoke-virtual {v3, v0, v1}, Lcom/ss/texturerender/math/Matrix3x3d;->mult(D)Lcom/ss/texturerender/math/Matrix3x3d;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v2, v0}, Lcom/ss/texturerender/math/Matrix3x3d;->plusEquals(Lcom/ss/texturerender/math/Matrix3x3d;)V

    .line 160
    .line 161
    .line 162
    :cond_4
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 163
    .line 164
    iput-wide v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mGyroTimeStamp:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .line 166
    monitor-exit p0

    .line 167
    return-void

    .line 168
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    throw p1
.end method

.method public processScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v8, Lcom/ss/texturerender/math/Vector3d;

    .line 4
    .line 5
    iget-wide v1, v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mRadius:D

    .line 6
    .line 7
    neg-double v6, v1

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    move-object v1, v8

    .line 13
    invoke-direct/range {v1 .. v7}, Lcom/ss/texturerender/math/Vector3d;-><init>(DDD)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/ss/texturerender/math/Vector3d;

    .line 17
    .line 18
    move/from16 v2, p3

    .line 19
    .line 20
    neg-float v2, v2

    .line 21
    float-to-double v10, v2

    .line 22
    move/from16 v2, p4

    .line 23
    .line 24
    float-to-double v12, v2

    .line 25
    iget-wide v2, v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mRadius:D

    .line 26
    .line 27
    neg-double v14, v2

    .line 28
    move-object v9, v1

    .line 29
    invoke-direct/range {v9 .. v15}, Lcom/ss/texturerender/math/Vector3d;-><init>(DDD)V

    .line 30
    .line 31
    .line 32
    invoke-static {v8, v1}, Lcom/ss/texturerender/math/Quaternion;->rotateInto(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)Lcom/ss/texturerender/math/Quaternion;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mRotationFromStart:Lcom/ss/texturerender/math/Quaternion;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/ss/texturerender/math/Quaternion;->times(Lcom/ss/texturerender/math/Quaternion;)Lcom/ss/texturerender/math/Quaternion;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mRotationFromStart:Lcom/ss/texturerender/math/Quaternion;

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    return v1
.end method

.method public reset()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mGyroTimeFilter:Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;

    .line 7
    .line 8
    new-instance v0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mBiasEstimator:Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;

    .line 14
    .line 15
    new-instance v0, Lcom/ss/texturerender/math/Quaternion;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/ss/texturerender/math/Quaternion;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mRotationFromStart:Lcom/ss/texturerender/math/Quaternion;

    .line 21
    .line 22
    new-instance v0, Lcom/ss/texturerender/math/Matrix3x3d;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/ss/texturerender/math/Matrix3x3d;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mStateCovariance:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/ss/texturerender/math/Matrix3x3d;->setIdentity()Lcom/ss/texturerender/math/Matrix3x3d;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mStateCovariance:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 33
    .line 34
    const-wide/high16 v1, 0x4039000000000000L    # 25.0

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/ss/texturerender/math/Matrix3x3d;->scale(D)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/ss/texturerender/math/Vector3d;

    .line 40
    .line 41
    invoke-direct {v0}, Lcom/ss/texturerender/math/Vector3d;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mGyroSample:Lcom/ss/texturerender/math/Vector3d;

    .line 45
    .line 46
    new-instance v0, Lcom/ss/texturerender/math/Vector3d;

    .line 47
    .line 48
    invoke-direct {v0}, Lcom/ss/texturerender/math/Vector3d;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mGyroBias:Lcom/ss/texturerender/math/Vector3d;

    .line 52
    .line 53
    new-instance v0, Lcom/ss/texturerender/math/Matrix3x3d;

    .line 54
    .line 55
    invoke-direct {v0}, Lcom/ss/texturerender/math/Matrix3x3d;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mProcessCovariance:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/ss/texturerender/math/Matrix3x3d;->setIdentity()Lcom/ss/texturerender/math/Matrix3x3d;

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mIsAlignedGravity:Z

    .line 65
    .line 66
    new-instance v1, Lcom/ss/texturerender/math/Matrix3x3d;

    .line 67
    .line 68
    invoke-direct {v1}, Lcom/ss/texturerender/math/Matrix3x3d;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccMeasureCovariance:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 72
    .line 73
    new-instance v1, Lcom/ss/texturerender/math/Matrix3x3d;

    .line 74
    .line 75
    invoke-direct {v1}, Lcom/ss/texturerender/math/Matrix3x3d;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mAccMeasureJacobian:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 79
    .line 80
    new-instance v1, Lcom/ss/texturerender/math/Matrix3x3d;

    .line 81
    .line 82
    invoke-direct {v1}, Lcom/ss/texturerender/math/Matrix3x3d;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mKalmanGain:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 86
    .line 87
    new-instance v1, Lcom/ss/texturerender/math/Matrix3x3d;

    .line 88
    .line 89
    invoke-direct {v1}, Lcom/ss/texturerender/math/Matrix3x3d;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mInnovationCovariance:Lcom/ss/texturerender/math/Matrix3x3d;

    .line 93
    .line 94
    const/4 v1, 0x0

    .line 95
    iput-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mEkfToHeadTracker:Lcom/ss/texturerender/math/Quaternion;

    .line 96
    .line 97
    iput v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mDisplayRotation:I

    .line 98
    .line 99
    iput-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mPreviousRotation:Lcom/ss/texturerender/math/Quaternion;

    .line 100
    .line 101
    iget v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mTexType:I

    .line 102
    .line 103
    const-string v1, "TR_SensorFusionEkf"

    .line 104
    .line 105
    const-string v2, "ekf reset"

    .line 106
    .line 107
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public setDisplayRotation(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mTexType:I

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "display rotation:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "TR_SensorFusionEkf"

    .line 21
    .line 22
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mDisplayRotation:I

    .line 26
    .line 27
    if-eq v0, p1, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mPreviousRotation:Lcom/ss/texturerender/math/Quaternion;

    .line 31
    .line 32
    :cond_0
    iput p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mDisplayRotation:I

    .line 33
    .line 34
    return-void
.end method

.method public setGyroSmootherParam(ZD)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mTexType:I

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "enable smoother:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ",factor:"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "TR_SensorFusionEkf"

    .line 29
    .line 30
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-boolean p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mGyroEnableSmoother:Z

    .line 34
    .line 35
    iput-wide p2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mGyroSmoothFactor:D

    .line 36
    .line 37
    return-void
.end method

.method public setIsDisableZrotation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mIsDisableZrotation:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRotationFromStart(Lcom/ss/texturerender/math/Quaternion;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mLastRotationFromStart:Lcom/ss/texturerender/math/Quaternion;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mPreviousRotation:Lcom/ss/texturerender/math/Quaternion;

    .line 5
    .line 6
    return-void
.end method

.method public setSensorStartPos(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorFusionEkf;->mSensorStartPos:I

    .line 2
    .line 3
    return-void
.end method
