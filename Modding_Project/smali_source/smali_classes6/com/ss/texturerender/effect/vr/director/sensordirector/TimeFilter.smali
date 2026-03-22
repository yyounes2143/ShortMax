.class public Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;
.super Ljava/lang/Object;
.source "TimeFilter.java"


# static fields
.field private static final FILTER_COEFF:D = 0.949999988079071

.field private static final MIN_TIME_SAMPLE:I = 0xa


# instance fields
.field private isFilterValid:Z

.field private mFilteredTime:D

.field private mIsInit:Z

.field private mSampleCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;->mIsInit:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;->isFilterValid:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public addSample(D)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;->mIsInit:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-wide p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;->mFilteredTime:D

    .line 7
    .line 8
    iput-boolean v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;->mIsInit:Z

    .line 9
    .line 10
    iput v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;->mSampleCount:I

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-wide v2, 0x3fee666660000000L    # 0.949999988079071

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iget-wide v4, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;->mFilteredTime:D

    .line 19
    .line 20
    mul-double/2addr v4, v2

    .line 21
    const-wide v2, 0x3fa9999a00000000L    # 0.050000011920928955

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    mul-double/2addr p1, v2

    .line 27
    add-double/2addr v4, p1

    .line 28
    iput-wide v4, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;->mFilteredTime:D

    .line 29
    .line 30
    iget p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;->mSampleCount:I

    .line 31
    .line 32
    add-int/2addr p1, v1

    .line 33
    iput p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;->mSampleCount:I

    .line 34
    .line 35
    const/16 p2, 0xa

    .line 36
    .line 37
    if-le p1, p2, :cond_1

    .line 38
    .line 39
    iput-boolean v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;->isFilterValid:Z

    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public getFilteredTime()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;->mFilteredTime:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public isFilterValid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/TimeFilter;->isFilterValid:Z

    .line 2
    .line 3
    return v0
.end method
