.class public final Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;
.super Ljava/lang/Object;
.source "DropFramesFrameScheduler.kt"

# interfaces
.implements Lcom/facebook/fresco/animation/frame/FrameScheduler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final UNSET:I = -0x1


# instance fields
.field private _loopDurationMs:J

.field private final animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->Companion:Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/animation/backend/AnimationInformation;)V
    .locals 2
    .param p1    # Lcom/facebook/fresco/animation/backend/AnimationInformation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "animationInformation"

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
    iput-object p1, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->_loopDurationMs:J

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public getFrameNumberToRender(JJ)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->getLoopDurationMs()J

    .line 2
    .line 3
    .line 4
    move-result-wide p3

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v2, p3, v0

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->getFrameNumberWithinLoop(J)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->isInfiniteAnimation()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    div-long v0, p1, p3

    .line 23
    .line 24
    iget-object v2, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 25
    .line 26
    invoke-interface {v2}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopCount()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    int-to-long v2, v2

    .line 31
    cmp-long v0, v0, v2

    .line 32
    .line 33
    if-ltz v0, :cond_1

    .line 34
    .line 35
    const/4 p1, -0x1

    .line 36
    return p1

    .line 37
    :cond_1
    rem-long/2addr p1, p3

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->getFrameNumberWithinLoop(J)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public final getFrameNumberWithinLoop(J)I
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    :goto_0
    iget-object v3, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 5
    .line 6
    invoke-interface {v3, v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameDurationMs(I)I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    int-to-long v3, v3

    .line 11
    add-long/2addr v1, v3

    .line 12
    add-int/lit8 v3, v0, 0x1

    .line 13
    .line 14
    cmp-long v4, p1, v1

    .line 15
    .line 16
    if-gez v4, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    move v0, v3

    .line 20
    goto :goto_0
.end method

.method public getLoopDurationMs()J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->_loopDurationMs:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->_loopDurationMs:J

    .line 13
    .line 14
    iget-object v0, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, v0, :cond_1

    .line 22
    .line 23
    iget-wide v2, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->_loopDurationMs:J

    .line 24
    .line 25
    iget-object v4, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 26
    .line 27
    invoke-interface {v4, v1}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameDurationMs(I)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    int-to-long v4, v4

    .line 32
    add-long/2addr v2, v4

    .line 33
    iput-wide v2, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->_loopDurationMs:J

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-wide v0, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->_loopDurationMs:J

    .line 39
    .line 40
    return-wide v0
.end method

.method public getTargetRenderTimeForNextFrameMs(J)J
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->getLoopDurationMs()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    const-wide/16 v5, -0x1

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    return-wide v5

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->isInfiniteAnimation()Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    div-long v7, p1, v0

    .line 21
    .line 22
    iget-object v4, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 23
    .line 24
    invoke-interface {v4}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopCount()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    int-to-long v9, v4

    .line 29
    cmp-long v4, v7, v9

    .line 30
    .line 31
    if-ltz v4, :cond_1

    .line 32
    .line 33
    return-wide v5

    .line 34
    :cond_1
    rem-long v0, p1, v0

    .line 35
    .line 36
    iget-object v4, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 37
    .line 38
    invoke-interface {v4}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const/4 v5, 0x0

    .line 43
    :goto_0
    if-ge v5, v4, :cond_2

    .line 44
    .line 45
    cmp-long v6, v2, v0

    .line 46
    .line 47
    if-gtz v6, :cond_2

    .line 48
    .line 49
    iget-object v6, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 50
    .line 51
    invoke-interface {v6, v5}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameDurationMs(I)I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    int-to-long v6, v6

    .line 56
    add-long/2addr v2, v6

    .line 57
    add-int/lit8 v5, v5, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    sub-long/2addr v2, v0

    .line 61
    add-long/2addr p1, v2

    .line 62
    return-wide p1
.end method

.method public getTargetRenderTimeMs(I)J
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, p1, :cond_0

    .line 5
    .line 6
    iget-object v3, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 7
    .line 8
    invoke-interface {v3, p1}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameDurationMs(I)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    int-to-long v3, v3

    .line 13
    add-long/2addr v0, v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-wide v0
.end method

.method public isInfiniteAnimation()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method
