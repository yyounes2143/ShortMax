.class final Landroidx/compose/ui/input/pointer/util/VelocityEstimate;
.super Ljava/lang/Object;
.source "VelocityTracker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/input/pointer/util/VelocityEstimate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/input/pointer/util/VelocityEstimate$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final None:Landroidx/compose/ui/input/pointer/util/VelocityEstimate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final confidence:F

.field private final durationMillis:J

.field private final offset:J

.field private final pixelsPerSecond:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/input/pointer/util/VelocityEstimate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->Companion:Landroidx/compose/ui/input/pointer/util/VelocityEstimate$Companion;

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 18
    .line 19
    .line 20
    move-result-wide v8

    .line 21
    const/4 v10, 0x0

    .line 22
    const/high16 v5, 0x3f800000    # 1.0f

    .line 23
    .line 24
    const-wide/16 v6, 0x0

    .line 25
    .line 26
    move-object v2, v0

    .line 27
    invoke-direct/range {v2 .. v10}, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;-><init>(JFJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->None:Landroidx/compose/ui/input/pointer/util/VelocityEstimate;

    .line 31
    .line 32
    return-void
.end method

.method private constructor <init>(JFJJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->pixelsPerSecond:J

    .line 4
    iput p3, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->confidence:F

    .line 5
    iput-wide p4, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->durationMillis:J

    .line 6
    iput-wide p6, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->offset:J

    return-void
.end method

.method public synthetic constructor <init>(JFJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;-><init>(JFJJ)V

    return-void
.end method

.method public static final synthetic access$getNone$cp()Landroidx/compose/ui/input/pointer/util/VelocityEstimate;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->None:Landroidx/compose/ui/input/pointer/util/VelocityEstimate;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic copy-PZAlG8E$default(Landroidx/compose/ui/input/pointer/util/VelocityEstimate;JFJJILjava/lang/Object;)Landroidx/compose/ui/input/pointer/util/VelocityEstimate;
    .locals 8

    .line 1
    move-object v0, p0

    .line 2
    and-int/lit8 v1, p8, 0x1

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-wide v1, v0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->pixelsPerSecond:J

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-wide v1, p1

    .line 10
    :goto_0
    and-int/lit8 v3, p8, 0x2

    .line 11
    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    iget v3, v0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->confidence:F

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v3, p3

    .line 18
    :goto_1
    and-int/lit8 v4, p8, 0x4

    .line 19
    .line 20
    if-eqz v4, :cond_2

    .line 21
    .line 22
    iget-wide v4, v0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->durationMillis:J

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move-wide v4, p4

    .line 26
    :goto_2
    and-int/lit8 v6, p8, 0x8

    .line 27
    .line 28
    if-eqz v6, :cond_3

    .line 29
    .line 30
    iget-wide v6, v0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->offset:J

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_3
    move-wide v6, p6

    .line 34
    :goto_3
    move-wide p1, v1

    .line 35
    move p3, v3

    .line 36
    move-wide p4, v4

    .line 37
    move-wide p6, v6

    .line 38
    invoke-virtual/range {p0 .. p7}, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->copy-PZAlG8E(JFJJ)Landroidx/compose/ui/input/pointer/util/VelocityEstimate;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method


# virtual methods
.method public final component1-F1C5BW0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->pixelsPerSecond:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component2()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->confidence:F

    .line 2
    .line 3
    return v0
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->durationMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component4-F1C5BW0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->offset:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final copy-PZAlG8E(JFJJ)Landroidx/compose/ui/input/pointer/util/VelocityEstimate;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v9, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    move-object v0, v9

    .line 5
    move-wide v1, p1

    .line 6
    move v3, p3

    .line 7
    move-wide v4, p4

    .line 8
    move-wide/from16 v6, p6

    .line 9
    .line 10
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;-><init>(JFJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    .line 12
    .line 13
    return-object v9
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
    instance-of v1, p1, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;

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
    check-cast p1, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;

    .line 12
    .line 13
    iget-wide v3, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->pixelsPerSecond:J

    .line 14
    .line 15
    iget-wide v5, p1, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->pixelsPerSecond:J

    .line 16
    .line 17
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->confidence:F

    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget v3, p1, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->confidence:F

    .line 31
    .line 32
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    return v2

    .line 43
    :cond_3
    iget-wide v3, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->durationMillis:J

    .line 44
    .line 45
    iget-wide v5, p1, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->durationMillis:J

    .line 46
    .line 47
    cmp-long v1, v3, v5

    .line 48
    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    return v2

    .line 52
    :cond_4
    iget-wide v3, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->offset:J

    .line 53
    .line 54
    iget-wide v5, p1, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->offset:J

    .line 55
    .line 56
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_5

    .line 61
    .line 62
    return v2

    .line 63
    :cond_5
    return v0
.end method

.method public final getConfidence()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->confidence:F

    .line 2
    .line 3
    return v0
.end method

.method public final getDurationMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->durationMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getOffset-F1C5BW0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->offset:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPixelsPerSecond-F1C5BW0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->pixelsPerSecond:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->pixelsPerSecond:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->hashCode-impl(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->confidence:F

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
    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->durationMillis:J

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
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->offset:J

    .line 28
    .line 29
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->hashCode-impl(J)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    return v0
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
    const-string v1, "VelocityEstimate(pixelsPerSecond="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->pixelsPerSecond:J

    .line 12
    .line 13
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->toString-impl(J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", confidence="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->confidence:F

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", durationMillis="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->durationMillis:J

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", offset="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->offset:J

    .line 46
    .line 47
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->toString-impl(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const/16 v1, 0x29

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method
