.class public Lcom/ss/texturerender/overlay/NormalClock;
.super Ljava/lang/Object;
.source "NormalClock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NormalClock"


# instance fields
.field private mIsUpdated:Z

.field private mPts:J

.field private mStatus:I

.field private mTexType:I

.field private mUpdateTime:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/ss/texturerender/overlay/NormalClock;->mPts:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/ss/texturerender/overlay/NormalClock;->mUpdateTime:J

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    iput v0, p0, Lcom/ss/texturerender/overlay/NormalClock;->mStatus:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/ss/texturerender/overlay/NormalClock;->mIsUpdated:Z

    .line 15
    .line 16
    iput p1, p0, Lcom/ss/texturerender/overlay/NormalClock;->mTexType:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public declared-synchronized getClock()J
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/ss/texturerender/overlay/NormalClock;->mPts:J

    .line 3
    .line 4
    iget-wide v2, p0, Lcom/ss/texturerender/overlay/NormalClock;->mUpdateTime:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    cmp-long v2, v2, v4

    .line 9
    .line 10
    if-lez v2, :cond_0

    .line 11
    .line 12
    iget v2, p0, Lcom/ss/texturerender/overlay/NormalClock;->mStatus:I

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    iget-wide v4, p0, Lcom/ss/texturerender/overlay/NormalClock;->mUpdateTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    sub-long v4, v2, v4

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    add-long/2addr v0, v4

    .line 29
    monitor-exit p0

    .line 30
    return-wide v0

    .line 31
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x2

    .line 3
    :try_start_0
    iput v0, p0, Lcom/ss/texturerender/overlay/NormalClock;->mStatus:I

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/ss/texturerender/overlay/NormalClock;->mUpdateTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw v0
.end method

.method public declared-synchronized start()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput v0, p0, Lcom/ss/texturerender/overlay/NormalClock;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x3

    .line 3
    :try_start_0
    iput v0, p0, Lcom/ss/texturerender/overlay/NormalClock;->mStatus:I

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/ss/texturerender/overlay/NormalClock;->mUpdateTime:J

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-boolean v2, p0, Lcom/ss/texturerender/overlay/NormalClock;->mIsUpdated:Z

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/ss/texturerender/overlay/NormalClock;->mPts:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw v0
.end method

.method public declared-synchronized updateClock(J)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/ss/texturerender/overlay/NormalClock;->mTexType:I

    .line 3
    .line 4
    const-string v1, "NormalClock"

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v3, "updateClock masetr:"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, " mIsUpdated:"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-boolean v3, p0, Lcom/ss/texturerender/overlay/NormalClock;->mIsUpdated:Z

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v3, " mStatus:"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v3, p0, Lcom/ss/texturerender/overlay/NormalClock;->mStatus:I

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-boolean v0, p0, Lcom/ss/texturerender/overlay/NormalClock;->mIsUpdated:Z

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    iput-boolean v1, p0, Lcom/ss/texturerender/overlay/NormalClock;->mIsUpdated:Z

    .line 53
    .line 54
    iput v1, p0, Lcom/ss/texturerender/overlay/NormalClock;->mStatus:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    :goto_0
    iget v0, p0, Lcom/ss/texturerender/overlay/NormalClock;->mStatus:I

    .line 60
    .line 61
    if-ne v0, v1, :cond_1

    .line 62
    .line 63
    iput-wide p1, p0, Lcom/ss/texturerender/overlay/NormalClock;->mPts:J

    .line 64
    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 66
    .line 67
    .line 68
    move-result-wide p1

    .line 69
    iput-wide p1, p0, Lcom/ss/texturerender/overlay/NormalClock;->mUpdateTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    :cond_1
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    throw p1
.end method
