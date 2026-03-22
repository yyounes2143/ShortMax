.class public Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;
.super Ljava/lang/Object;
.source "LowPassFilter.java"


# static fields
.field private static final MAX_TIME_STEP:D = 1.0

.field private static final MIN_TIME_STEP:D = 0.001

.field private static final NANOS_TO_SECONDS:D = 1.0E-9


# instance fields
.field private final filteredData:Lcom/ss/texturerender/math/Vector3d;

.field private mIsInit:Z

.field private mLastTimestampNs:J

.field private mNumSamples:I

.field private final mTimeConstantSecs:D

.field private final temp:Lcom/ss/texturerender/math/Vector3d;


# direct methods
.method public constructor <init>(D)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/ss/texturerender/math/Vector3d;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/ss/texturerender/math/Vector3d;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->filteredData:Lcom/ss/texturerender/math/Vector3d;

    .line 10
    .line 11
    new-instance v0, Lcom/ss/texturerender/math/Vector3d;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/ss/texturerender/math/Vector3d;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->temp:Lcom/ss/texturerender/math/Vector3d;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->mIsInit:Z

    .line 20
    .line 21
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    mul-double/2addr p1, v0

    .line 27
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 28
    .line 29
    div-double/2addr v0, p1

    .line 30
    iput-wide v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->mTimeConstantSecs:D

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public addSample(Lcom/ss/texturerender/math/Vector3d;J)V
    .locals 6

    .line 1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-wide v2, p2

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->addWeightedSample(Lcom/ss/texturerender/math/Vector3d;JD)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public addWeightedSample(Lcom/ss/texturerender/math/Vector3d;JD)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->mNumSamples:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->mNumSamples:I

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->mIsInit:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p4, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->filteredData:Lcom/ss/texturerender/math/Vector3d;

    .line 12
    .line 13
    invoke-virtual {p4, p1}, Lcom/ss/texturerender/math/Vector3d;->set(Lcom/ss/texturerender/math/Vector3d;)V

    .line 14
    .line 15
    .line 16
    iput-wide p2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->mLastTimestampNs:J

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->mIsInit:Z

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-wide v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->mLastTimestampNs:J

    .line 22
    .line 23
    cmp-long v2, p2, v0

    .line 24
    .line 25
    if-gez v2, :cond_1

    .line 26
    .line 27
    iput-wide p2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->mLastTimestampNs:J

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    sub-long v0, p2, v0

    .line 31
    .line 32
    long-to-double v0, v0

    .line 33
    mul-double/2addr p4, v0

    .line 34
    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    mul-double/2addr p4, v0

    .line 40
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    cmpg-double v0, p4, v0

    .line 46
    .line 47
    if-ltz v0, :cond_3

    .line 48
    .line 49
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 50
    .line 51
    cmpl-double v2, p4, v0

    .line 52
    .line 53
    if-lez v2, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-wide v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->mTimeConstantSecs:D

    .line 57
    .line 58
    add-double/2addr v2, p4

    .line 59
    div-double/2addr p4, v2

    .line 60
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->filteredData:Lcom/ss/texturerender/math/Vector3d;

    .line 61
    .line 62
    sub-double/2addr v0, p4

    .line 63
    invoke-virtual {v2, v0, v1}, Lcom/ss/texturerender/math/Vector3d;->scale(D)Lcom/ss/texturerender/math/Vector3d;

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->temp:Lcom/ss/texturerender/math/Vector3d;

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/math/Vector3d;->set(Lcom/ss/texturerender/math/Vector3d;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->temp:Lcom/ss/texturerender/math/Vector3d;

    .line 72
    .line 73
    invoke-virtual {p1, p4, p5}, Lcom/ss/texturerender/math/Vector3d;->scale(D)Lcom/ss/texturerender/math/Vector3d;

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->temp:Lcom/ss/texturerender/math/Vector3d;

    .line 77
    .line 78
    iget-object p4, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->filteredData:Lcom/ss/texturerender/math/Vector3d;

    .line 79
    .line 80
    invoke-static {p1, p4, p4}, Lcom/ss/texturerender/math/Vector3d;->add(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)V

    .line 81
    .line 82
    .line 83
    iput-wide p2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->mLastTimestampNs:J

    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    :goto_0
    iput-wide p2, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->mLastTimestampNs:J

    .line 87
    .line 88
    return-void
.end method

.method public getFilteredData()Lcom/ss/texturerender/math/Vector3d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->filteredData:Lcom/ss/texturerender/math/Vector3d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNumSamples()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->mNumSamples:I

    .line 2
    .line 3
    return v0
.end method

.method public getRecentTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->mLastTimestampNs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public isIsInit()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/LowPassFilter;->mIsInit:Z

    .line 2
    .line 3
    return v0
.end method
