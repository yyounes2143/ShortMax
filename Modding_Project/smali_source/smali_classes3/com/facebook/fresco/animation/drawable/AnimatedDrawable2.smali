.class public Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedDrawable2.kt"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lu2/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$Companion;,
        Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$DrawListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT_FRAME_SCHEDULING_DELAY_MS:I = 0x8

.field private static final DEFAULT_FRAME_SCHEDULING_OFFSET_MS:I

.field private static final NO_OP_LISTENER:Lcom/facebook/fresco/animation/drawable/AnimationListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _droppedFrames:I

.field private volatile _isRunning:Z

.field private final animationBackendListener:Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile drawListener:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$DrawListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private drawableProperties:Lc3/d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private expectedRenderTimeMs:J

.field private frameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private frameSchedulingDelayMs:J

.field private frameSchedulingOffsetMs:J

.field private final invalidateRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastDrawnFrameNumber:I

.field private lastFrameAnimationTimeMs:J

.field private pausedLastDrawnFrameNumber:I

.field private pausedLastFrameAnimationTimeMsDifference:J

.field private pausedStartTimeMsDifference:J

.field private startTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->Companion:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$Companion;

    .line 8
    .line 9
    const-class v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    .line 10
    .line 11
    sput-object v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->TAG:Ljava/lang/Class;

    .line 12
    .line 13
    new-instance v0, Lcom/facebook/fresco/animation/drawable/BaseAnimationListener;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/facebook/fresco/animation/drawable/BaseAnimationListener;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->NO_OP_LISTENER:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;-><init>(Lcom/facebook/fresco/animation/backend/AnimationBackend;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V
    .locals 2
    .param p1    # Lcom/facebook/fresco/animation/backend/AnimationBackend;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    const-wide/16 v0, 0x8

    .line 5
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->frameSchedulingDelayMs:J

    .line 6
    sget-object p1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->NO_OP_LISTENER:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    .line 7
    new-instance p1, Lcom/facebook/fresco/animation/drawable/a;

    invoke-direct {p1, p0}, Lcom/facebook/fresco/animation/drawable/a;-><init>(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;)V

    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->animationBackendListener:Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;

    .line 8
    new-instance v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$invalidateRunnable$1;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$invalidateRunnable$1;-><init>(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;)V

    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->invalidateRunnable:Ljava/lang/Runnable;

    .line 9
    sget-object v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->Companion:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$Companion;

    iget-object v1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    invoke-static {v0, v1}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$Companion;->access$createSchedulerForBackendAndDelayMethod(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$Companion;Lcom/facebook/fresco/animation/backend/AnimationBackend;)Lcom/facebook/fresco/animation/frame/FrameScheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->frameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    .line 10
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setAnimationListener(Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/fresco/animation/backend/AnimationBackend;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;-><init>(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V

    return-void
.end method

.method public static synthetic a(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->animationBackendListener$lambda$0(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final animationBackendListener$lambda$0(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    .line 7
    .line 8
    invoke-interface {p0}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationLoaded()V

    .line 9
    .line 10
    .line 11
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

.method private final onFrameDropped()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_droppedFrames:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_droppedFrames:I

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-static {v0}, Ll2/a;->n(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->TAG:Ljava/lang/Class;

    .line 15
    .line 16
    iget v1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_droppedFrames:I

    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "Dropped a frame. Count: %s"

    .line 23
    .line 24
    invoke-static {v0, v2, v1}, Ll2/a;->p(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private final scheduleNextFrame(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->startTimeMs:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->expectedRenderTimeMs:J

    .line 5
    .line 6
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->invalidateRunnable:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v1, "canvas"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->frameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    :cond_0
    move-object v0, v14

    .line 19
    goto/16 :goto_7

    .line 20
    .line 21
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->now()J

    .line 22
    .line 23
    .line 24
    move-result-wide v12

    .line 25
    iget-boolean v1, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_isRunning:Z

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-wide v1, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->startTimeMs:J

    .line 30
    .line 31
    sub-long v1, v12, v1

    .line 32
    .line 33
    iget-wide v3, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->frameSchedulingOffsetMs:J

    .line 34
    .line 35
    add-long/2addr v1, v3

    .line 36
    :goto_0
    move-wide v8, v1

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget-wide v1, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->lastFrameAnimationTimeMs:J

    .line 39
    .line 40
    long-to-double v1, v1

    .line 41
    const-wide/16 v3, 0x0

    .line 42
    .line 43
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    double-to-long v1, v1

    .line 48
    goto :goto_0

    .line 49
    :goto_1
    iget-object v1, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->frameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    .line 50
    .line 51
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-wide v2, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->lastFrameAnimationTimeMs:J

    .line 55
    .line 56
    invoke-interface {v1, v8, v9, v2, v3}, Lcom/facebook/fresco/animation/frame/FrameScheduler;->getFrameNumberToRender(JJ)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/4 v2, 0x0

    .line 61
    const/4 v3, -0x1

    .line 62
    if-eq v1, v3, :cond_5

    .line 63
    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    iget v4, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->lastDrawnFrameNumber:I

    .line 68
    .line 69
    if-eq v4, v3, :cond_4

    .line 70
    .line 71
    iget-wide v3, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->expectedRenderTimeMs:J

    .line 72
    .line 73
    cmp-long v3, v12, v3

    .line 74
    .line 75
    if-ltz v3, :cond_4

    .line 76
    .line 77
    iget-object v3, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    .line 78
    .line 79
    invoke-interface {v3, v14}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationRepeat(Landroid/graphics/drawable/Drawable;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    :goto_2
    move v3, v1

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    iget-object v1, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 85
    .line 86
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {v1}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    add-int/lit8 v1, v1, -0x1

    .line 94
    .line 95
    iget-object v3, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    .line 96
    .line 97
    invoke-interface {v3, v14}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationStop(Landroid/graphics/drawable/Drawable;)V

    .line 98
    .line 99
    .line 100
    iput-boolean v2, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_isRunning:Z

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :goto_3
    iget-object v1, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 104
    .line 105
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v1, v14, v0, v3}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->drawFrame(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_6

    .line 113
    .line 114
    iget-object v0, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    .line 115
    .line 116
    invoke-interface {v0, v14, v3}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 117
    .line 118
    .line 119
    iput v3, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->lastDrawnFrameNumber:I

    .line 120
    .line 121
    :cond_6
    if-nez v4, :cond_7

    .line 122
    .line 123
    invoke-direct/range {p0 .. p0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->onFrameDropped()V

    .line 124
    .line 125
    .line 126
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->now()J

    .line 127
    .line 128
    .line 129
    move-result-wide v15

    .line 130
    iget-boolean v0, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_isRunning:Z

    .line 131
    .line 132
    const-wide/16 v5, -0x1

    .line 133
    .line 134
    if-eqz v0, :cond_9

    .line 135
    .line 136
    iget-object v0, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->frameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    .line 137
    .line 138
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    iget-wide v10, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->startTimeMs:J

    .line 142
    .line 143
    sub-long v10, v15, v10

    .line 144
    .line 145
    invoke-interface {v0, v10, v11}, Lcom/facebook/fresco/animation/frame/FrameScheduler;->getTargetRenderTimeForNextFrameMs(J)J

    .line 146
    .line 147
    .line 148
    move-result-wide v0

    .line 149
    cmp-long v7, v0, v5

    .line 150
    .line 151
    if-eqz v7, :cond_8

    .line 152
    .line 153
    iget-wide v5, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->frameSchedulingDelayMs:J

    .line 154
    .line 155
    add-long/2addr v5, v0

    .line 156
    invoke-direct {v14, v5, v6}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->scheduleNextFrame(J)V

    .line 157
    .line 158
    .line 159
    :goto_4
    move-wide/from16 v17, v0

    .line 160
    .line 161
    move-wide/from16 v19, v5

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_8
    iget-object v7, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    .line 165
    .line 166
    invoke-interface {v7, v14}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationStop(Landroid/graphics/drawable/Drawable;)V

    .line 167
    .line 168
    .line 169
    iput-boolean v2, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_isRunning:Z

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_9
    move-wide/from16 v17, v5

    .line 173
    .line 174
    move-wide/from16 v19, v17

    .line 175
    .line 176
    :goto_5
    iget-object v0, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->drawListener:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$DrawListener;

    .line 177
    .line 178
    if-eqz v0, :cond_b

    .line 179
    .line 180
    iget-object v2, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->frameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    .line 181
    .line 182
    if-eqz v2, :cond_a

    .line 183
    .line 184
    iget-boolean v5, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_isRunning:Z

    .line 185
    .line 186
    iget-wide v6, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->startTimeMs:J

    .line 187
    .line 188
    iget-wide v10, v14, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->lastFrameAnimationTimeMs:J

    .line 189
    .line 190
    move-object/from16 v1, p0

    .line 191
    .line 192
    move-wide/from16 v21, v8

    .line 193
    .line 194
    move-wide v14, v15

    .line 195
    move-wide/from16 v16, v17

    .line 196
    .line 197
    move-wide/from16 v18, v19

    .line 198
    .line 199
    invoke-interface/range {v0 .. v19}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$DrawListener;->onDraw(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;Lcom/facebook/fresco/animation/frame/FrameScheduler;IZZJJJJJJJ)V

    .line 200
    .line 201
    .line 202
    move-object/from16 v0, p0

    .line 203
    .line 204
    move-wide/from16 v1, v21

    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 208
    .line 209
    const-string v1, "Required value was null."

    .line 210
    .line 211
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw v0

    .line 215
    :cond_b
    move-object/from16 v0, p0

    .line 216
    .line 217
    move-wide v1, v8

    .line 218
    :goto_6
    iput-wide v1, v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->lastFrameAnimationTimeMs:J

    .line 219
    .line 220
    :goto_7
    return-void
.end method

.method public dropCaches()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final getAnimationBackend()Lcom/facebook/fresco/animation/backend/AnimationBackend;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDroppedFrames()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_droppedFrames:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    return-wide v0
.end method

.method public final getFrameCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    return v0
.end method

.method public final getFrameDurationMs(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameDurationMs(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    :goto_0
    return p1
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getIntrinsicHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getIntrinsicWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    return v0
.end method

.method public final getLoopCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    return v0
.end method

.method public final getLoopDurationMs()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->frameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Lcom/facebook/fresco/animation/frame/FrameScheduler;->getLoopDurationMs()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0

    .line 20
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    move v2, v1

    .line 29
    :goto_0
    if-ge v1, v0, :cond_2

    .line 30
    .line 31
    iget-object v3, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 32
    .line 33
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v3, v1}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameDurationMs(I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    add-int/2addr v2, v3

    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    int-to-long v0, v2

    .line 45
    return-wide v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    return v0
.end method

.method public final getStartTimeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->startTimeMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final isInfiniteAnimation()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->frameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/facebook/fresco/animation/frame/FrameScheduler;->isInfiniteAnimation()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    :cond_0
    return v1
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_isRunning:Z

    .line 2
    .line 3
    return v0
.end method

.method public final jumpToFrame(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->frameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/frame/FrameScheduler;->getTargetRenderTimeMs(I)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->lastFrameAnimationTimeMs:J

    .line 18
    .line 19
    iput p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->pausedLastDrawnFrameNumber:I

    .line 20
    .line 21
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->pausedStartTimeMsDifference:J

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->pausedLastFrameAnimationTimeMsDifference:J

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->now()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->lastFrameAnimationTimeMs:J

    .line 32
    .line 33
    sub-long/2addr v0, v2

    .line 34
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->startTimeMs:J

    .line 35
    .line 36
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->expectedRenderTimeMs:J

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bounds"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setBounds(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_isRunning:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->lastFrameAnimationTimeMs:J

    .line 8
    .line 9
    int-to-long v4, p1

    .line 10
    cmp-long p1, v2, v4

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iput-wide v4, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->lastFrameAnimationTimeMs:J

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_1
    return v1
.end method

.method public final preloadAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->preloadAnimation()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->drawableProperties:Lc3/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lc3/d;

    .line 6
    .line 7
    invoke-direct {v0}, Lc3/d;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->drawableProperties:Lc3/d;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->drawableProperties:Lc3/d;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lc3/d;->b(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setAlpha(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final setAnimationBackend(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V
    .locals 2
    .param p1    # Lcom/facebook/fresco/animation/backend/AnimationBackend;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-interface {v0, v1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setAnimationListener(Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    new-instance p1, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;-><init>(Lcom/facebook/fresco/animation/backend/AnimationInformation;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->frameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    .line 27
    .line 28
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->animationBackendListener:Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;

    .line 34
    .line 35
    invoke-interface {p1, v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setAnimationListener(Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {p1, v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setBounds(Landroid/graphics/Rect;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->drawableProperties:Lc3/d;

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-virtual {p1, p0}, Lc3/d;->a(Landroid/graphics/drawable/Drawable;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    sget-object p1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->Companion:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$Companion;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 60
    .line 61
    invoke-static {p1, v0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$Companion;->access$createSchedulerForBackendAndDelayMethod(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$Companion;Lcom/facebook/fresco/animation/backend/AnimationBackend;)Lcom/facebook/fresco/animation/frame/FrameScheduler;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->frameScheduler:Lcom/facebook/fresco/animation/frame/FrameScheduler;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->stop()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final setAnimationListener(Lcom/facebook/fresco/animation/drawable/AnimationListener;)V
    .locals 0
    .param p1    # Lcom/facebook/fresco/animation/drawable/AnimationListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->NO_OP_LISTENER:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    .line 6
    .line 7
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->drawableProperties:Lc3/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lc3/d;

    .line 6
    .line 7
    invoke-direct {v0}, Lc3/d;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->drawableProperties:Lc3/d;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->drawableProperties:Lc3/d;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lc3/d;->c(Landroid/graphics/ColorFilter;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final setDrawListener(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$DrawListener;)V
    .locals 0
    .param p1    # Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$DrawListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->drawListener:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$DrawListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setFrameSchedulingDelayMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->frameSchedulingDelayMs:J

    .line 2
    .line 3
    return-void
.end method

.method public final setFrameSchedulingOffsetMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->frameSchedulingOffsetMs:J

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_isRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-gt v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_isRunning:Z

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->now()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->pausedStartTimeMsDifference:J

    .line 27
    .line 28
    sub-long v2, v0, v2

    .line 29
    .line 30
    iput-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->startTimeMs:J

    .line 31
    .line 32
    iput-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->expectedRenderTimeMs:J

    .line 33
    .line 34
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->pausedLastFrameAnimationTimeMsDifference:J

    .line 35
    .line 36
    sub-long/2addr v0, v2

    .line 37
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->lastFrameAnimationTimeMs:J

    .line 38
    .line 39
    iget v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->pausedLastDrawnFrameNumber:I

    .line 40
    .line 41
    iput v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->lastDrawnFrameNumber:I

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    .line 47
    .line 48
    invoke-interface {v0, p0}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_isRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->now()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->startTimeMs:J

    .line 11
    .line 12
    sub-long v2, v0, v2

    .line 13
    .line 14
    iput-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->pausedStartTimeMsDifference:J

    .line 15
    .line 16
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->lastFrameAnimationTimeMs:J

    .line 17
    .line 18
    sub-long/2addr v0, v2

    .line 19
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->pausedLastFrameAnimationTimeMsDifference:J

    .line 20
    .line 21
    iget v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->lastDrawnFrameNumber:I

    .line 22
    .line 23
    iput v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->pausedLastDrawnFrameNumber:I

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->_isRunning:Z

    .line 27
    .line 28
    const-wide/16 v0, 0x0

    .line 29
    .line 30
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->startTimeMs:J

    .line 31
    .line 32
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->expectedRenderTimeMs:J

    .line 33
    .line 34
    const-wide/16 v0, -0x1

    .line 35
    .line 36
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->lastFrameAnimationTimeMs:J

    .line 37
    .line 38
    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->lastDrawnFrameNumber:I

    .line 40
    .line 41
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->invalidateRunnable:Ljava/lang/Runnable;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    .line 47
    .line 48
    invoke-interface {v0, p0}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationStop(Landroid/graphics/drawable/Drawable;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
