.class public Lcom/ss/ttvideoengine/utils/PlayDuration;
.super Ljava/lang/Object;
.source "PlayDuration.java"


# static fields
.field private static final STATE_PLAYING:I = 0x1

.field private static final STATE_STOP:I = 0x2


# instance fields
.field private mPlayedDuration:I

.field private mStartPlayTime:J

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/ss/ttvideoengine/utils/PlayDuration;->mState:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/ss/ttvideoengine/utils/PlayDuration;->mPlayedDuration:I

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/ss/ttvideoengine/utils/PlayDuration;->mStartPlayTime:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ss/ttvideoengine/utils/PlayDuration;->mPlayedDuration:I

    .line 3
    .line 4
    iget v0, p0, Lcom/ss/ttvideoengine/utils/PlayDuration;->mState:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/ss/ttvideoengine/utils/PlayDuration;->mStartPlayTime:J

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public getPlayedDuration()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/utils/PlayDuration;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/ss/ttvideoengine/utils/PlayDuration;->mStartPlayTime:J

    .line 11
    .line 12
    sub-long v4, v0, v2

    .line 13
    .line 14
    long-to-int v4, v4

    .line 15
    if-ltz v4, :cond_0

    .line 16
    .line 17
    const-wide/16 v5, 0x0

    .line 18
    .line 19
    cmp-long v2, v2, v5

    .line 20
    .line 21
    if-lez v2, :cond_0

    .line 22
    .line 23
    iget v2, p0, Lcom/ss/ttvideoengine/utils/PlayDuration;->mPlayedDuration:I

    .line 24
    .line 25
    add-int/2addr v2, v4

    .line 26
    iput v2, p0, Lcom/ss/ttvideoengine/utils/PlayDuration;->mPlayedDuration:I

    .line 27
    .line 28
    :cond_0
    iput-wide v0, p0, Lcom/ss/ttvideoengine/utils/PlayDuration;->mStartPlayTime:J

    .line 29
    .line 30
    :cond_1
    iget v0, p0, Lcom/ss/ttvideoengine/utils/PlayDuration;->mPlayedDuration:I

    .line 31
    .line 32
    return v0
.end method

.method public reset()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/ss/ttvideoengine/utils/PlayDuration;->mState:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ss/ttvideoengine/utils/PlayDuration;->mPlayedDuration:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/ss/ttvideoengine/utils/PlayDuration;->mStartPlayTime:J

    .line 10
    .line 11
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/utils/PlayDuration;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/ss/ttvideoengine/utils/PlayDuration;->mStartPlayTime:J

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/ss/ttvideoengine/utils/PlayDuration;->mState:I

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/utils/PlayDuration;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lcom/ss/ttvideoengine/utils/PlayDuration;->mState:I

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/ss/ttvideoengine/utils/PlayDuration;->mStartPlayTime:J

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    long-to-int v0, v0

    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    iget v1, p0, Lcom/ss/ttvideoengine/utils/PlayDuration;->mPlayedDuration:I

    .line 20
    .line 21
    add-int/2addr v1, v0

    .line 22
    iput v1, p0, Lcom/ss/ttvideoengine/utils/PlayDuration;->mPlayedDuration:I

    .line 23
    .line 24
    :cond_0
    return-void
.end method
