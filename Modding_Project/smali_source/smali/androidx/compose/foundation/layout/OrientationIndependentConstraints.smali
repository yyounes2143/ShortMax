.class public final Landroidx/compose/foundation/layout/OrientationIndependentConstraints;
.super Ljava/lang/Object;
.source "RowColumnImpl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final crossAxisMax:I

.field private final crossAxisMin:I

.field private final mainAxisMax:I

.field private final mainAxisMin:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMin:I

    .line 4
    iput p2, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMax:I

    .line 5
    iput p3, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMin:I

    .line 6
    iput p4, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMax:I

    return-void
.end method

.method private constructor <init>(JLandroidx/compose/foundation/layout/LayoutOrientation;)V
    .locals 4

    .line 7
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p3, v0, :cond_0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v1

    :goto_0
    if-ne p3, v0, :cond_1

    .line 8
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    :goto_1
    if-ne p3, v0, :cond_2

    .line 9
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v3

    goto :goto_2

    :cond_2
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v3

    :goto_2
    if-ne p3, v0, :cond_3

    .line 10
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p1

    goto :goto_3

    :cond_3
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p1

    .line 11
    :goto_3
    invoke-direct {p0, v1, v2, v3, p1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;-><init>(IIII)V

    return-void
.end method

.method public synthetic constructor <init>(JLandroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;-><init>(JLandroidx/compose/foundation/layout/LayoutOrientation;)V

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/foundation/layout/OrientationIndependentConstraints;IIIIILjava/lang/Object;)Landroidx/compose/foundation/layout/OrientationIndependentConstraints;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget p1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMin:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget p2, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMax:I

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget p3, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMin:I

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget p4, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMax:I

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->copy(IIII)Landroidx/compose/foundation/layout/OrientationIndependentConstraints;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMin:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMax:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMin:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMax:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(IIII)Landroidx/compose/foundation/layout/OrientationIndependentConstraints;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;-><init>(IIII)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
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
    instance-of v1, p1, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;

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
    check-cast p1, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;

    .line 12
    .line 13
    iget v1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMin:I

    .line 14
    .line 15
    iget v3, p1, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMin:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMax:I

    .line 21
    .line 22
    iget v3, p1, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMax:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget v1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMin:I

    .line 28
    .line 29
    iget v3, p1, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMin:I

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget v1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMax:I

    .line 35
    .line 36
    iget p1, p1, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMax:I

    .line 37
    .line 38
    if-eq v1, p1, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    return v0
.end method

.method public final getCrossAxisMax()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMax:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCrossAxisMin()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMin:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMainAxisMax()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMax:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMainAxisMin()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMin:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMin:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMax:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

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
    iget v1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMin:I

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

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
    iget v1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMax:I

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    return v0
.end method

.method public final maxHeight(Landroidx/compose/foundation/layout/LayoutOrientation;)I
    .locals 1
    .param p1    # Landroidx/compose/foundation/layout/LayoutOrientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "orientation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget p1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMax:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget p1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMax:I

    .line 14
    .line 15
    :goto_0
    return p1
.end method

.method public final maxWidth(Landroidx/compose/foundation/layout/LayoutOrientation;)I
    .locals 1
    .param p1    # Landroidx/compose/foundation/layout/LayoutOrientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "orientation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget p1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMax:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget p1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMax:I

    .line 14
    .line 15
    :goto_0
    return p1
.end method

.method public final stretchCrossAxis()Landroidx/compose/foundation/layout/OrientationIndependentConstraints;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMin:I

    .line 4
    .line 5
    iget v2, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMax:I

    .line 6
    .line 7
    iget v3, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMax:I

    .line 8
    .line 9
    const v4, 0x7fffffff

    .line 10
    .line 11
    .line 12
    if-eq v3, v4, :cond_0

    .line 13
    .line 14
    move v4, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v4, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMin:I

    .line 17
    .line 18
    :goto_0
    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;-><init>(IIII)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public final toBoxConstraints-OenEA2s(Landroidx/compose/foundation/layout/LayoutOrientation;)J
    .locals 3
    .param p1    # Landroidx/compose/foundation/layout/LayoutOrientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "orientation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget p1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMin:I

    .line 11
    .line 12
    iget v0, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMax:I

    .line 13
    .line 14
    iget v1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMin:I

    .line 15
    .line 16
    iget v2, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMax:I

    .line 17
    .line 18
    invoke-static {p1, v0, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget p1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMin:I

    .line 24
    .line 25
    iget v0, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMax:I

    .line 26
    .line 27
    iget v1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMin:I

    .line 28
    .line 29
    iget v2, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMax:I

    .line 30
    .line 31
    invoke-static {p1, v0, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    :goto_0
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
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
    const-string v1, "OrientationIndependentConstraints(mainAxisMin="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMin:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", mainAxisMax="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->mainAxisMax:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", crossAxisMin="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMin:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", crossAxisMax="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->crossAxisMax:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x29

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
