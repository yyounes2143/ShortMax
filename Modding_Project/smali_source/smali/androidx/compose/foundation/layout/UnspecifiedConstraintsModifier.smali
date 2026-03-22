.class final Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "Size.kt"

# interfaces
.implements Landroidx/compose/ui/layout/LayoutModifier;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final minHeight:F

.field private final minWidth:F


# direct methods
.method private constructor <init>(FFLkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p3}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 6
    iput p1, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minWidth:F

    .line 7
    iput p2, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minHeight:F

    return-void
.end method

.method public synthetic constructor <init>(FFLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 2
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p1

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 3
    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p2

    :cond_1
    const/4 p4, 0x0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;-><init>(FFLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(FFLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;-><init>(FFLkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minWidth:F

    .line 8
    .line 9
    check-cast p1, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;

    .line 10
    .line 11
    iget v2, p1, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minWidth:F

    .line 12
    .line 13
    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget v0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minHeight:F

    .line 20
    .line 21
    iget p1, p1, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minHeight:F

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    :cond_1
    return v1
.end method

.method public final getMinHeight-D9Ej5fM()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minHeight:F

    .line 2
    .line 3
    return v0
.end method

.method public final getMinWidth-D9Ej5fM()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minWidth:F

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minWidth:F

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minHeight:F

    .line 10
    .line 11
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "measurable"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    iget p3, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minHeight:F

    .line 16
    .line 17
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {p3, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    if-nez p3, :cond_0

    .line 28
    .line 29
    iget p3, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minHeight:F

    .line 30
    .line 31
    invoke-interface {p1, p3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    :goto_0
    invoke-static {p2, p1}, Lkotlin/ranges/e;->e(II)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "measurable"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    iget p3, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minWidth:F

    .line 16
    .line 17
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {p3, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    if-nez p3, :cond_0

    .line 28
    .line 29
    iget p3, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minWidth:F

    .line 30
    .line 31
    invoke-interface {p1, p3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    :goto_0
    invoke-static {p2, p1}, Lkotlin/ranges/e;->e(II)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7
    .param p1    # Landroidx/compose/ui/layout/MeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/Measurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$measure"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "measurable"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minWidth:F

    .line 12
    .line 13
    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    iget v0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minWidth:F

    .line 33
    .line 34
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {v0, v3}, Lkotlin/ranges/e;->j(II)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-static {v0, v2}, Lkotlin/ranges/e;->e(II)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    :goto_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    iget v4, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minHeight:F

    .line 60
    .line 61
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-static {v4, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_1

    .line 70
    .line 71
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_1

    .line 76
    .line 77
    iget v1, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minHeight:F

    .line 78
    .line 79
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    invoke-static {v1, v4}, Lkotlin/ranges/e;->j(II)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-static {v1, v2}, Lkotlin/ranges/e;->e(II)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    :goto_1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    invoke-static {v0, v3, v1, p3}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 105
    .line 106
    .line 107
    move-result-wide p3

    .line 108
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    new-instance v4, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier$measure$1;

    .line 121
    .line 122
    invoke-direct {v4, p2}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    .line 123
    .line 124
    .line 125
    const/4 v5, 0x4

    .line 126
    const/4 v6, 0x0

    .line 127
    const/4 v3, 0x0

    .line 128
    move-object v0, p1

    .line 129
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    return-object p1
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "measurable"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    iget p3, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minHeight:F

    .line 16
    .line 17
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {p3, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    if-nez p3, :cond_0

    .line 28
    .line 29
    iget p3, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minHeight:F

    .line 30
    .line 31
    invoke-interface {p1, p3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    :goto_0
    invoke-static {p2, p1}, Lkotlin/ranges/e;->e(II)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "measurable"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    iget p3, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minWidth:F

    .line 16
    .line 17
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {p3, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    if-nez p3, :cond_0

    .line 28
    .line 29
    iget p3, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minWidth:F

    .line 30
    .line 31
    invoke-interface {p1, p3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    :goto_0
    invoke-static {p2, p1}, Lkotlin/ranges/e;->e(II)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method
