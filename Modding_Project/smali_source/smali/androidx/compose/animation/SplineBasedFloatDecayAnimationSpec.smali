.class public final Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;
.super Ljava/lang/Object;
.source "SplineBasedFloatDecayAnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/FloatDecayAnimationSpec;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final flingCalculator:Landroidx/compose/animation/FlingCalculator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/unit/Density;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "density"

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
    new-instance v0, Landroidx/compose/animation/FlingCalculator;

    .line 10
    .line 11
    invoke-static {}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->getPlatformFlingScrollFriction()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-direct {v0, v1, p1}, Landroidx/compose/animation/FlingCalculator;-><init>(FLandroidx/compose/ui/unit/Density;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->flingCalculator:Landroidx/compose/animation/FlingCalculator;

    .line 19
    .line 20
    return-void
.end method

.method private final flingDistance(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->flingCalculator:Landroidx/compose/animation/FlingCalculator;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/animation/FlingCalculator;->flingDistance(F)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    mul-float/2addr v0, p1

    .line 12
    return v0
.end method


# virtual methods
.method public getAbsVelocityThreshold()F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getDurationNanos(FF)J
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->flingCalculator:Landroidx/compose/animation/FlingCalculator;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroidx/compose/animation/FlingCalculator;->flingDuration(F)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    const-wide/32 v0, 0xf4240

    .line 8
    .line 9
    .line 10
    mul-long/2addr p1, v0

    .line 11
    return-wide p1
.end method

.method public getTargetValue(FF)F
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->flingDistance(F)F

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    add-float/2addr p1, p2

    .line 6
    return p1
.end method

.method public getValueFromNanos(JFF)F
    .locals 2

    .line 1
    const-wide/32 v0, 0xf4240

    .line 2
    .line 3
    .line 4
    div-long/2addr p1, v0

    .line 5
    iget-object v0, p0, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->flingCalculator:Landroidx/compose/animation/FlingCalculator;

    .line 6
    .line 7
    invoke-virtual {v0, p4}, Landroidx/compose/animation/FlingCalculator;->flingInfo(F)Landroidx/compose/animation/FlingCalculator$FlingInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    invoke-virtual {p4, p1, p2}, Landroidx/compose/animation/FlingCalculator$FlingInfo;->position(J)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    add-float/2addr p3, p1

    .line 16
    return p3
.end method

.method public getVelocityFromNanos(JFF)F
    .locals 2

    .line 1
    const-wide/32 v0, 0xf4240

    .line 2
    .line 3
    .line 4
    div-long/2addr p1, v0

    .line 5
    iget-object p3, p0, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->flingCalculator:Landroidx/compose/animation/FlingCalculator;

    .line 6
    .line 7
    invoke-virtual {p3, p4}, Landroidx/compose/animation/FlingCalculator;->flingInfo(F)Landroidx/compose/animation/FlingCalculator$FlingInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-virtual {p3, p1, p2}, Landroidx/compose/animation/FlingCalculator$FlingInfo;->velocity(J)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method
