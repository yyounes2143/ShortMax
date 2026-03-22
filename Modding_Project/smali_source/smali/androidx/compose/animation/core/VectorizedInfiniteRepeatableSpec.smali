.class public final Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;
.super Ljava/lang/Object;
.source "VectorizedAnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/VectorizedAnimationSpec;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroidx/compose/animation/core/AnimationVector;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/VectorizedAnimationSpec<",
        "TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final animation:Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final durationNanos:J

.field private final initialOffsetNanos:J

.field private final repeatMode:Landroidx/compose/animation/core/RepeatMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;)V
    .locals 9
    .annotation runtime Lms/c;
    .end annotation

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repeatMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 12
    invoke-static {v2, v2, v0, v1}, Landroidx/compose/animation/core/StartOffset;->constructor-impl$default(IIILkotlin/jvm/internal/DefaultConstructorMarker;)J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;-><init>(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 10
    sget-object p2, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;-><init>(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;)V

    return-void
.end method

.method private constructor <init>(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec<",
            "TV;>;",
            "Landroidx/compose/animation/core/RepeatMode;",
            "J)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->animation:Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    .line 4
    iput-object p2, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->repeatMode:Landroidx/compose/animation/core/RepeatMode;

    .line 5
    invoke-interface {p1}, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;->getDelayMillis()I

    move-result p2

    invoke-interface {p1}, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;->getDurationMillis()I

    move-result p1

    add-int/2addr p2, p1

    int-to-long p1, p2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    iput-wide p1, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->durationNanos:J

    mul-long/2addr p3, v0

    .line 6
    iput-wide p3, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->initialOffsetNanos:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 7
    sget-object p2, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p5, 0x4

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x2

    .line 8
    invoke-static {p3, p3, p4, p2}, Landroidx/compose/animation/core/StartOffset;->constructor-impl$default(IIILkotlin/jvm/internal/DefaultConstructorMarker;)J

    move-result-wide p3

    :cond_1
    move-wide v3, p3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;-><init>(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;-><init>(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;J)V

    return-void
.end method

.method private final repetitionPlayTimeNanos(J)J
    .locals 8

    .line 1
    iget-wide v0, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->initialOffsetNanos:J

    .line 2
    .line 3
    add-long v2, p1, v0

    .line 4
    .line 5
    const-wide/16 v4, 0x0

    .line 6
    .line 7
    cmp-long v2, v2, v4

    .line 8
    .line 9
    if-gtz v2, :cond_0

    .line 10
    .line 11
    return-wide v4

    .line 12
    :cond_0
    add-long/2addr p1, v0

    .line 13
    iget-wide v0, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->durationNanos:J

    .line 14
    .line 15
    div-long v2, p1, v0

    .line 16
    .line 17
    iget-object v6, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->repeatMode:Landroidx/compose/animation/core/RepeatMode;

    .line 18
    .line 19
    sget-object v7, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    .line 20
    .line 21
    if-eq v6, v7, :cond_2

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    int-to-long v6, v6

    .line 25
    rem-long v6, v2, v6

    .line 26
    .line 27
    cmp-long v4, v6, v4

    .line 28
    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-wide/16 v4, 0x1

    .line 33
    .line 34
    add-long/2addr v2, v4

    .line 35
    mul-long/2addr v2, v0

    .line 36
    sub-long/2addr v2, p1

    .line 37
    return-wide v2

    .line 38
    :cond_2
    :goto_0
    mul-long/2addr v2, v0

    .line 39
    sub-long/2addr p1, v2

    .line 40
    return-wide p1
.end method

.method private final repetitionStartVelocity(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;TV;TV;)TV;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->initialOffsetNanos:J

    .line 2
    .line 3
    add-long/2addr p1, v0

    .line 4
    iget-wide v2, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->durationNanos:J

    .line 5
    .line 6
    cmp-long p1, p1, v2

    .line 7
    .line 8
    if-lez p1, :cond_0

    .line 9
    .line 10
    sub-long v5, v2, v0

    .line 11
    .line 12
    move-object v4, p0

    .line 13
    move-object v7, p3

    .line 14
    move-object v8, p4

    .line 15
    move-object v9, p5

    .line 16
    invoke-virtual/range {v4 .. v9}, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    :cond_0
    return-object p4
.end method


# virtual methods
.method public getDurationNanos(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)J
    .locals 1
    .param p1    # Landroidx/compose/animation/core/AnimationVector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/animation/core/AnimationVector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/animation/core/AnimationVector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;TV;)J"
        }
    .end annotation

    .line 1
    const-string v0, "initialValue"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "targetValue"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "initialVelocity"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-wide p1, 0x7fffffffffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    return-wide p1
.end method

.method public final getDurationNanos$animation_core_release()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->durationNanos:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 10
    .param p3    # Landroidx/compose/animation/core/AnimationVector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/animation/core/AnimationVector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/animation/core/AnimationVector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;TV;TV;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "initialValue"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "targetValue"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "initialVelocity"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->animation:Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    .line 17
    .line 18
    invoke-direct {p0, p1, p2}, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->repetitionPlayTimeNanos(J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    move-object v4, p0

    .line 23
    move-wide v5, p1

    .line 24
    move-object v7, p3

    .line 25
    move-object v8, p5

    .line 26
    move-object v9, p4

    .line 27
    invoke-direct/range {v4 .. v9}, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->repetitionStartVelocity(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    move-object v4, p3

    .line 32
    move-object v5, p4

    .line 33
    invoke-interface/range {v1 .. v6}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 10
    .param p3    # Landroidx/compose/animation/core/AnimationVector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/animation/core/AnimationVector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/animation/core/AnimationVector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;TV;TV;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "initialValue"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "targetValue"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "initialVelocity"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->animation:Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    .line 17
    .line 18
    invoke-direct {p0, p1, p2}, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->repetitionPlayTimeNanos(J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    move-object v4, p0

    .line 23
    move-wide v5, p1

    .line 24
    move-object v7, p3

    .line 25
    move-object v8, p5

    .line 26
    move-object v9, p4

    .line 27
    invoke-direct/range {v4 .. v9}, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;->repetitionStartVelocity(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    move-object v4, p3

    .line 32
    move-object v5, p4

    .line 33
    invoke-interface/range {v1 .. v6}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public isInfinite()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
