.class public Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;
.super Landroid/graphics/drawable/Drawable;
.source "KAnimatedDrawable2.kt"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lu2/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$DrawListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKAnimatedDrawable2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KAnimatedDrawable2.kt\ncom/facebook/fresco/animation/drawable/KAnimatedDrawable2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,222:1\n1#2:223\n*E\n"
    }
.end annotation


# instance fields
.field private final animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private drawListener:Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$DrawListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final drawableProperties:Lc3/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final invalidateRunnable:Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile isRunning:Z


# direct methods
.method public constructor <init>(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V
    .locals 2
    .param p1    # Lcom/facebook/fresco/animation/backend/AnimationBackend;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "animationBackend"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 10
    .line 11
    new-instance p1, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    .line 12
    .line 13
    new-instance v0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;-><init>(Lcom/facebook/fresco/animation/backend/AnimationInformation;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, v0}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;-><init>(Lcom/facebook/fresco/animation/frame/FrameScheduler;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    .line 24
    .line 25
    new-instance p1, Lcom/facebook/fresco/animation/drawable/BaseAnimationListener;

    .line 26
    .line 27
    invoke-direct {p1}, Lcom/facebook/fresco/animation/drawable/BaseAnimationListener;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    .line 31
    .line 32
    new-instance p1, Lc3/d;

    .line 33
    .line 34
    invoke-direct {p1}, Lc3/d;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p0}, Lc3/d;->a(Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->drawableProperties:Lc3/d;

    .line 41
    .line 42
    new-instance p1, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;-><init>(Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->invalidateRunnable:Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->frameToDraw()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->setRunning(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    .line 30
    .line 31
    invoke-interface {v1, p0}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationStop(Landroid/graphics/drawable/Drawable;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    if-nez v0, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->shouldRepeatAnimation()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    .line 46
    .line 47
    invoke-interface {v1, p0}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationRepeat(Landroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 51
    .line 52
    invoke-interface {v1, p0, p1, v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->drawFrame(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    .line 59
    .line 60
    invoke-interface {p1, p0, v0}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->setLastDrawnFrameNumber(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->onFrameDropped()V

    .line 72
    .line 73
    .line 74
    :goto_1
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->nextRenderTime()J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    const-wide/16 v3, -0x1

    .line 81
    .line 82
    cmp-long p1, v0, v3

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->invalidateRunnable:Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;

    .line 87
    .line 88
    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    .line 93
    .line 94
    invoke-interface {p1, p0}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationStop(Landroid/graphics/drawable/Drawable;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    .line 98
    .line 99
    invoke-virtual {p1, v2}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->setRunning(Z)V

    .line 100
    .line 101
    .line 102
    :goto_2
    return-void
.end method

.method public dropCaches()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getFrameCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getIntrinsicHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getIntrinsicWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->getRunning()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final loopCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final loopDurationMs()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopDurationMs()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setBounds(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->drawableProperties:Lc3/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lc3/d;->b(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setAlpha(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setAnimationBackend(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V
    .locals 1
    .param p1    # Lcom/facebook/fresco/animation/backend/AnimationBackend;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->stop()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1, v0}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setBounds(Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->drawableProperties:Lc3/d;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lc3/d;->a(Landroid/graphics/drawable/Drawable;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 20
    .line 21
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
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

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
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->drawableProperties:Lc3/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lc3/d;->c(Landroid/graphics/ColorFilter;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setDrawListener(Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$DrawListener;)V
    .locals 0
    .param p1    # Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$DrawListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->drawListener:Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$DrawListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setFrameSchedulingDelayMs(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->setFrameSchedulingDelayMs(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setFrameSchedulingOffsetMs(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->setFrameSchedulingOffsetMs(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationBackend:Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->start()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    .line 16
    .line 17
    invoke-interface {v0, p0}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animatedFrameScheduler:Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/fresco/animation/drawable/AnimationFrameScheduler;->stop()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->animationListener:Lcom/facebook/fresco/animation/drawable/AnimationListener;

    .line 7
    .line 8
    invoke-interface {v0, p0}, Lcom/facebook/fresco/animation/drawable/AnimationListener;->onAnimationStop(Landroid/graphics/drawable/Drawable;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;->invalidateRunnable:Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2$invalidateRunnable$1;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
