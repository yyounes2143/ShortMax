.class public final Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;
.super Ljava/lang/Object;
.source "AnimationFrameScheduler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private expectedRenderTimeMs:J

.field private final frameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private frameSchedulingDelayMs:J

.field private frameSchedulingOffsetMs:J

.field private framesDropped:I

.field private lastDrawnFrameNumber:I

.field private lastFrameAnimationTimeDifferenceMs:J

.field private lastFrameAnimationTimeMs:J

.field private pauseTimeMs:J

.field private pausedLastDrawnFrameNumber:I

.field private running:Z

.field private startMs:J


# direct methods
.method public constructor <init>(Lcom/facebook/fresco/animation/frame/FrameScheduler;)V
    .locals 2
    .param p1    # Lcom/facebook/fresco/animation/frame/FrameScheduler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "frameScheduler"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->frameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    .line 10
    .line 11
    const-wide/16 v0, 0x8

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->frameSchedulingDelayMs:J

    .line 14
    .line 15
    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->lastDrawnFrameNumber:I

    .line 17
    .line 18
    iput p1, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->pausedLastDrawnFrameNumber:I

    .line 19
    .line 20
    return-void
.end method

.method private final now()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method


# virtual methods
.method public final frameToDraw()I
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->now()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-boolean v2, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->running:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->startMs:J

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->frameSchedulingOffsetMs:J

    .line 13
    .line 14
    add-long/2addr v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->lastFrameAnimationTimeMs:J

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    :goto_0
    iget-object v2, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->frameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    .line 25
    .line 26
    iget-wide v3, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->lastFrameAnimationTimeMs:J

    .line 27
    .line 28
    invoke-interface {v2, v0, v1, v3, v4}, Lcom/facebook/fresco/animation/frame/FrameScheduler;->getFrameNumberToRender(JJ)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->lastFrameAnimationTimeMs:J

    .line 33
    .line 34
    return v2
.end method

.method public final getFrameSchedulingDelayMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->frameSchedulingDelayMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getFrameSchedulingOffsetMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->frameSchedulingOffsetMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getLastDrawnFrameNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->lastDrawnFrameNumber:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->running:Z

    .line 2
    .line 3
    return v0
.end method

.method public final infinite()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->frameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/fresco/animation/frame/FrameScheduler;->isInfiniteAnimation()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final loopDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->frameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/fresco/animation/frame/FrameScheduler;->getLoopDurationMs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final nextRenderTime()J
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->running:Z

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-wide v1

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->now()J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->frameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    .line 13
    .line 14
    iget-wide v5, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->startMs:J

    .line 15
    .line 16
    sub-long/2addr v3, v5

    .line 17
    invoke-interface {v0, v3, v4}, Lcom/facebook/fresco/animation/frame/FrameScheduler;->getTargetRenderTimeForNextFrameMs(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    cmp-long v0, v3, v1

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->frameSchedulingDelayMs:J

    .line 26
    .line 27
    add-long/2addr v3, v0

    .line 28
    iget-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->startMs:J

    .line 29
    .line 30
    add-long/2addr v0, v3

    .line 31
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->expectedRenderTimeMs:J

    .line 32
    .line 33
    return-wide v3

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->running:Z

    .line 36
    .line 37
    return-wide v1
.end method

.method public final onFrameDropped()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->framesDropped:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->framesDropped:I

    .line 6
    .line 7
    return-void
.end method

.method public final setFrameSchedulingDelayMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->frameSchedulingDelayMs:J

    .line 2
    .line 3
    return-void
.end method

.method public final setFrameSchedulingOffsetMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->frameSchedulingOffsetMs:J

    .line 2
    .line 3
    return-void
.end method

.method public final setLastDrawnFrameNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->lastDrawnFrameNumber:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRunning(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->running:Z

    .line 2
    .line 3
    return-void
.end method

.method public final shouldRepeatAnimation()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->lastDrawnFrameNumber:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->now()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->expectedRenderTimeMs:J

    .line 11
    .line 12
    cmp-long v0, v0, v2

    .line 13
    .line 14
    if-ltz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method

.method public final start()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->running:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->now()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->pauseTimeMs:J

    .line 10
    .line 11
    sub-long v2, v0, v2

    .line 12
    .line 13
    iput-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->startMs:J

    .line 14
    .line 15
    iput-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->expectedRenderTimeMs:J

    .line 16
    .line 17
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->lastFrameAnimationTimeDifferenceMs:J

    .line 18
    .line 19
    sub-long/2addr v0, v2

    .line 20
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->lastFrameAnimationTimeMs:J

    .line 21
    .line 22
    iget v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->pausedLastDrawnFrameNumber:I

    .line 23
    .line 24
    iput v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->lastDrawnFrameNumber:I

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->running:Z

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->running:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->now()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->startMs:J

    .line 10
    .line 11
    sub-long v2, v0, v2

    .line 12
    .line 13
    iput-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->pauseTimeMs:J

    .line 14
    .line 15
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->lastFrameAnimationTimeMs:J

    .line 16
    .line 17
    sub-long/2addr v0, v2

    .line 18
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->lastFrameAnimationTimeDifferenceMs:J

    .line 19
    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->startMs:J

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->expectedRenderTimeMs:J

    .line 25
    .line 26
    const-wide/16 v0, -0x1

    .line 27
    .line 28
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->lastFrameAnimationTimeMs:J

    .line 29
    .line 30
    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->lastDrawnFrameNumber:I

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->running:Z

    .line 35
    .line 36
    :cond_0
    return-void
.end method
