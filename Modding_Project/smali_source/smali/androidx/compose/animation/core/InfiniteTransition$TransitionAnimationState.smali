.class public final Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;
.super Ljava/lang/Object;
.source "InfiniteTransition.kt"

# interfaces
.implements Landroidx/compose/runtime/State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/core/InfiniteTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TransitionAnimationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Landroidx/compose/animation/core/AnimationVector;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/State<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private animation:Landroidx/compose/animation/core/TargetBasedAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TargetBasedAnimation<",
            "TT;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private animationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private initialValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private isFinished:Z

.field private playTimeNanosOffset:J

.field private startOnTheNextFrame:Z

.field private targetValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/animation/core/InfiniteTransition;

.field private final typeConverter:Landroidx/compose/animation/core/TwoWayConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final value$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/InfiniteTransition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;)V
    .locals 8
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/animation/core/TwoWayConverter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "typeConverter"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "animationSpec"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->initialValue:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p3, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->targetValue:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p4, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    .line 21
    .line 22
    iput-object p5, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    const/4 p3, 0x2

    .line 26
    invoke-static {p2, p1, p3, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/MutableState;

    .line 31
    .line 32
    new-instance p1, Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 33
    .line 34
    iget-object v1, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 35
    .line 36
    iget-object v3, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->initialValue:Ljava/lang/Object;

    .line 37
    .line 38
    iget-object v4, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->targetValue:Ljava/lang/Object;

    .line 39
    .line 40
    const/16 v6, 0x10

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    move-object v0, p1

    .line 45
    move-object v2, p4

    .line 46
    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/core/TargetBasedAnimation;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->animation:Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final getAnimation()Landroidx/compose/animation/core/TargetBasedAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/TargetBasedAnimation<",
            "TT;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->animation:Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInitialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->initialValue:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlayTimeNanosOffset()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->playTimeNanosOffset:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getStartOnTheNextFrame()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->startOnTheNextFrame:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getTargetValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->targetValue:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTypeConverter()Landroidx/compose/animation/core/TwoWayConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final isFinished()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->isFinished:Z

    .line 2
    .line 3
    return v0
.end method

.method public final onPlayTimeChanged(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroidx/compose/animation/core/InfiniteTransition;->access$setRefreshChildNeeded(Landroidx/compose/animation/core/InfiniteTransition;Z)V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->startOnTheNextFrame:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput-boolean v1, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->startOnTheNextFrame:Z

    .line 12
    .line 13
    iput-wide p1, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->playTimeNanosOffset:J

    .line 14
    .line 15
    :cond_0
    iget-wide v0, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->playTimeNanosOffset:J

    .line 16
    .line 17
    sub-long/2addr p1, v0

    .line 18
    iget-object v0, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->animation:Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Landroidx/compose/animation/core/TargetBasedAnimation;->getValueFromNanos(J)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->setValue$animation_core_release(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->animation:Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 28
    .line 29
    invoke-interface {v0, p1, p2}, Landroidx/compose/animation/core/Animation;->isFinishedFromNanos(J)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput-boolean p1, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->isFinished:Z

    .line 34
    .line 35
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->startOnTheNextFrame:Z

    .line 3
    .line 4
    return-void
.end method

.method public final setAnimation(Landroidx/compose/animation/core/TargetBasedAnimation;)V
    .locals 1
    .param p1    # Landroidx/compose/animation/core/TargetBasedAnimation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/TargetBasedAnimation<",
            "TT;TV;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->animation:Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 7
    .line 8
    return-void
.end method

.method public final setAnimationSpec(Landroidx/compose/animation/core/AnimationSpec;)V
    .locals 1
    .param p1    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 7
    .line 8
    return-void
.end method

.method public final setFinished(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->isFinished:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setInitialValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->initialValue:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public final setPlayTimeNanosOffset(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->playTimeNanosOffset:J

    .line 2
    .line 3
    return-void
.end method

.method public final setStartOnTheNextFrame(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->startOnTheNextFrame:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setTargetValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->targetValue:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public setValue$animation_core_release(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final skipToEnd()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->animation:Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/animation/core/TargetBasedAnimation;->getTargetValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->setValue$animation_core_release(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->startOnTheNextFrame:Z

    .line 12
    .line 13
    return-void
.end method

.method public final updateValues(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;)V
    .locals 9
    .param p3    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "animationSpec"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->initialValue:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->targetValue:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p3, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    .line 15
    .line 16
    const/16 v7, 0x10

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    move-object v1, v0

    .line 21
    move-object v2, p3

    .line 22
    move-object v4, p1

    .line 23
    move-object v5, p2

    .line 24
    invoke-direct/range {v1 .. v8}, Landroidx/compose/animation/core/TargetBasedAnimation;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->animation:Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    .line 30
    .line 31
    const/4 p2, 0x1

    .line 32
    invoke-static {p1, p2}, Landroidx/compose/animation/core/InfiniteTransition;->access$setRefreshChildNeeded(Landroidx/compose/animation/core/InfiniteTransition;Z)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->isFinished:Z

    .line 37
    .line 38
    iput-boolean p2, p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->startOnTheNextFrame:Z

    .line 39
    .line 40
    return-void
.end method
