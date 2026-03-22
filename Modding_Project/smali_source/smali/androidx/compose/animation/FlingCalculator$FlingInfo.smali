.class public final Landroidx/compose/animation/FlingCalculator$FlingInfo;
.super Ljava/lang/Object;
.source "FlingCalculator.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/FlingCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlingInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final distance:F

.field private final duration:J

.field private final initialVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(FFJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/animation/FlingCalculator$FlingInfo;FFJILjava/lang/Object;)Landroidx/compose/animation/FlingCalculator$FlingInfo;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget p1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget p2, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p5, p5, 0x4

    .line 14
    .line 15
    if-eqz p5, :cond_2

    .line 16
    .line 17
    iget-wide p3, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/animation/FlingCalculator$FlingInfo;->copy(FFJ)Landroidx/compose/animation/FlingCalculator$FlingInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    .line 2
    .line 3
    return v0
.end method

.method public final component2()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    .line 2
    .line 3
    return v0
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final copy(FFJ)Landroidx/compose/animation/FlingCalculator$FlingInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/animation/FlingCalculator$FlingInfo;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/animation/FlingCalculator$FlingInfo;-><init>(FFJ)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/compose/animation/FlingCalculator$FlingInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/compose/animation/FlingCalculator$FlingInfo;

    .line 12
    .line 13
    iget v1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget v3, p1, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    iget v1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget v3, p1, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    .line 39
    .line 40
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    return v2

    .line 51
    :cond_3
    iget-wide v3, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    .line 52
    .line 53
    iget-wide v5, p1, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    .line 54
    .line 55
    cmp-long p1, v3, v5

    .line 56
    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    return v2

    .line 60
    :cond_4
    return v0
.end method

.method public final getDistance()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    .line 2
    .line 3
    return v0
.end method

.method public final getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getInitialVelocity()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-wide v1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public final position(J)F
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-lez v2, :cond_0

    .line 8
    .line 9
    long-to-float p1, p1

    .line 10
    long-to-float p2, v0

    .line 11
    div-float/2addr p1, p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    .line 15
    :goto_0
    iget p2, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    .line 16
    .line 17
    iget v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    mul-float/2addr p2, v0

    .line 24
    sget-object v0, Landroidx/compose/animation/AndroidFlingSpline;->INSTANCE:Landroidx/compose/animation/AndroidFlingSpline;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroidx/compose/animation/AndroidFlingSpline;->flingPosition(F)Landroidx/compose/animation/AndroidFlingSpline$FlingResult;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroidx/compose/animation/AndroidFlingSpline$FlingResult;->getDistanceCoefficient()F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    mul-float/2addr p2, p1

    .line 35
    return p2
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "FlingInfo(initialVelocity="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", distance="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", duration="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x29

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public final velocity(J)F
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-lez v2, :cond_0

    .line 8
    .line 9
    long-to-float p1, p1

    .line 10
    long-to-float p2, v0

    .line 11
    div-float/2addr p1, p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    .line 15
    :goto_0
    sget-object p2, Landroidx/compose/animation/AndroidFlingSpline;->INSTANCE:Landroidx/compose/animation/AndroidFlingSpline;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroidx/compose/animation/AndroidFlingSpline;->flingPosition(F)Landroidx/compose/animation/AndroidFlingSpline$FlingResult;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroidx/compose/animation/AndroidFlingSpline$FlingResult;->getVelocityCoefficient()F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget p2, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    .line 26
    .line 27
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    mul-float/2addr p1, p2

    .line 32
    iget p2, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    .line 33
    .line 34
    mul-float/2addr p1, p2

    .line 35
    iget-wide v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    .line 36
    .line 37
    long-to-float p2, v0

    .line 38
    div-float/2addr p1, p2

    .line 39
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 40
    .line 41
    mul-float/2addr p1, p2

    .line 42
    return p1
.end method
