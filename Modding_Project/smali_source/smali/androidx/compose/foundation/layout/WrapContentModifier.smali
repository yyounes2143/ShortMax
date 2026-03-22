.class final Landroidx/compose/foundation/layout/WrapContentModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "Size.kt"

# interfaces
.implements Landroidx/compose/ui/layout/LayoutModifier;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final align:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final alignmentCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final direction:Landroidx/compose/foundation/layout/Direction;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final unbounded:Z


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/Direction;ZLkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/layout/Direction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/Direction;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "-",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;",
            "Ljava/lang/Object;",
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
    const-string v0, "alignmentCallback"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "align"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "inspectorInfo"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p5}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 25
    .line 26
    iput-boolean p2, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->unbounded:Z

    .line 27
    .line 28
    iput-object p3, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->alignmentCallback:Lkotlin/jvm/functions/Function2;

    .line 29
    .line 30
    iput-object p4, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->align:Ljava/lang/Object;

    .line 31
    .line 32
    return-void
.end method

.method public static final synthetic access$getAlignmentCallback$p(Landroidx/compose/foundation/layout/WrapContentModifier;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->alignmentCallback:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Landroidx/compose/foundation/layout/WrapContentModifier;

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
    iget-object v0, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 8
    .line 9
    check-cast p1, Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 10
    .line 11
    iget-object v2, p1, Landroidx/compose/foundation/layout/WrapContentModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget-boolean v0, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->unbounded:Z

    .line 16
    .line 17
    iget-boolean v2, p1, Landroidx/compose/foundation/layout/WrapContentModifier;->unbounded:Z

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->align:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object p1, p1, Landroidx/compose/foundation/layout/WrapContentModifier;->align:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->direction:Landroidx/compose/foundation/layout/Direction;

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
    iget-boolean v1, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->unbounded:Z

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

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
    iget-object v1, p0, Landroidx/compose/foundation/layout/WrapContentModifier;->align:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 14
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
    move-object v6, p0

    .line 2
    move-object/from16 v0, p2

    .line 3
    .line 4
    const-string v1, "$this$measure"

    .line 5
    .line 6
    move-object v7, p1

    .line 7
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "measurable"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v6, Landroidx/compose/foundation/layout/WrapContentModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 16
    .line 17
    sget-object v2, Landroidx/compose/foundation/layout/Direction;->Vertical:Landroidx/compose/foundation/layout/Direction;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    move v1, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :goto_0
    iget-object v4, v6, Landroidx/compose/foundation/layout/WrapContentModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 29
    .line 30
    sget-object v5, Landroidx/compose/foundation/layout/Direction;->Horizontal:Landroidx/compose/foundation/layout/Direction;

    .line 31
    .line 32
    if-eq v4, v5, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    :goto_1
    iget-object v4, v6, Landroidx/compose/foundation/layout/WrapContentModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 40
    .line 41
    const v8, 0x7fffffff

    .line 42
    .line 43
    .line 44
    if-eq v4, v2, :cond_2

    .line 45
    .line 46
    iget-boolean v2, v6, Landroidx/compose/foundation/layout/WrapContentModifier;->unbounded:Z

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    move v2, v8

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    :goto_2
    iget-object v4, v6, Landroidx/compose/foundation/layout/WrapContentModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 57
    .line 58
    if-eq v4, v5, :cond_3

    .line 59
    .line 60
    iget-boolean v4, v6, Landroidx/compose/foundation/layout/WrapContentModifier;->unbounded:Z

    .line 61
    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    :goto_3
    invoke-static {v1, v2, v3, v8}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-static {v0, v1, v2}, Lkotlin/ranges/e;->n(III)I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-static {v0, v1, v2}, Lkotlin/ranges/e;->n(III)I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    new-instance v11, Landroidx/compose/foundation/layout/WrapContentModifier$measure$1;

    .line 110
    .line 111
    move-object v0, v11

    .line 112
    move-object v1, p0

    .line 113
    move v2, v8

    .line 114
    move v4, v9

    .line 115
    move-object v5, p1

    .line 116
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/WrapContentModifier$measure$1;-><init>(Landroidx/compose/foundation/layout/WrapContentModifier;ILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/MeasureScope;)V

    .line 117
    .line 118
    .line 119
    const/4 v12, 0x4

    .line 120
    const/4 v13, 0x0

    .line 121
    const/4 v10, 0x0

    .line 122
    move-object v7, p1

    .line 123
    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    return-object v0
.end method
