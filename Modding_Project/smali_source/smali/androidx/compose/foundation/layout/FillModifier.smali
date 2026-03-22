.class final Landroidx/compose/foundation/layout/FillModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "Size.kt"

# interfaces
.implements Landroidx/compose/ui/layout/LayoutModifier;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final direction:Landroidx/compose/foundation/layout/Direction;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fraction:F


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/Direction;FLkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/layout/Direction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/Direction;",
            "F",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "direction"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "inspectorInfo"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p3}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/compose/foundation/layout/FillModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 15
    .line 16
    iput p2, p0, Landroidx/compose/foundation/layout/FillModifier;->fraction:F

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Landroidx/compose/foundation/layout/FillModifier;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/foundation/layout/FillModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 6
    .line 7
    check-cast p1, Landroidx/compose/foundation/layout/FillModifier;

    .line 8
    .line 9
    iget-object v1, p1, Landroidx/compose/foundation/layout/FillModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget v0, p0, Landroidx/compose/foundation/layout/FillModifier;->fraction:F

    .line 14
    .line 15
    iget p1, p1, Landroidx/compose/foundation/layout/FillModifier;->fraction:F

    .line 16
    .line 17
    cmpg-float p1, v0, p1

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/FillModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Landroidx/compose/foundation/layout/FillModifier;->fraction:F

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
    return v0
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
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/foundation/layout/FillModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 18
    .line 19
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Vertical:Landroidx/compose/foundation/layout/Direction;

    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    int-to-float v0, v0

    .line 28
    iget v1, p0, Landroidx/compose/foundation/layout/FillModifier;->fraction:F

    .line 29
    .line 30
    mul-float/2addr v0, v1

    .line 31
    invoke-static {v0}, Lbt/a;->c(F)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static {v0, v1, v2}, Lkotlin/ranges/e;->n(III)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    move v1, v0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    :goto_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedHeight-impl(J)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    iget-object v2, p0, Landroidx/compose/foundation/layout/FillModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 64
    .line 65
    sget-object v3, Landroidx/compose/foundation/layout/Direction;->Horizontal:Landroidx/compose/foundation/layout/Direction;

    .line 66
    .line 67
    if-eq v2, v3, :cond_1

    .line 68
    .line 69
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    int-to-float v2, v2

    .line 74
    iget v3, p0, Landroidx/compose/foundation/layout/FillModifier;->fraction:F

    .line 75
    .line 76
    mul-float/2addr v2, v3

    .line 77
    invoke-static {v2}, Lbt/a;->c(F)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    invoke-static {v2, v3, p3}, Lkotlin/ranges/e;->n(III)I

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    move p4, p3

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 100
    .line 101
    .line 102
    move-result p3

    .line 103
    move p4, p3

    .line 104
    move p3, v2

    .line 105
    :goto_1
    invoke-static {v0, v1, p3, p4}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 106
    .line 107
    .line 108
    move-result-wide p3

    .line 109
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    new-instance v4, Landroidx/compose/foundation/layout/FillModifier$measure$1;

    .line 122
    .line 123
    invoke-direct {v4, p2}, Landroidx/compose/foundation/layout/FillModifier$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    .line 124
    .line 125
    .line 126
    const/4 v5, 0x4

    .line 127
    const/4 v6, 0x0

    .line 128
    const/4 v3, 0x0

    .line 129
    move-object v0, p1

    .line 130
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    return-object p1
.end method
