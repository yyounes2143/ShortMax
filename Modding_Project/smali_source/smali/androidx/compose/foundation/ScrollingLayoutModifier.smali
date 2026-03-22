.class final Landroidx/compose/foundation/ScrollingLayoutModifier;
.super Ljava/lang/Object;
.source "Scroll.kt"

# interfaces
.implements Landroidx/compose/ui/layout/LayoutModifier;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final isReversed:Z

.field private final isVertical:Z

.field private final overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scrollerState:Landroidx/compose/foundation/ScrollState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/ScrollState;ZZLandroidx/compose/foundation/OverscrollEffect;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/ScrollState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/OverscrollEffect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scrollerState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "overscrollEffect"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->scrollerState:Landroidx/compose/foundation/ScrollState;

    .line 15
    .line 16
    iput-boolean p2, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isReversed:Z

    .line 17
    .line 18
    iput-boolean p3, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isVertical:Z

    .line 19
    .line 20
    iput-object p4, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/foundation/ScrollingLayoutModifier;Landroidx/compose/foundation/ScrollState;ZZLandroidx/compose/foundation/OverscrollEffect;ILjava/lang/Object;)Landroidx/compose/foundation/ScrollingLayoutModifier;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->scrollerState:Landroidx/compose/foundation/ScrollState;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget-boolean p2, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isReversed:Z

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget-boolean p3, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isVertical:Z

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/ScrollingLayoutModifier;->copy(Landroidx/compose/foundation/ScrollState;ZZLandroidx/compose/foundation/OverscrollEffect;)Landroidx/compose/foundation/ScrollingLayoutModifier;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/compose/foundation/ScrollState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->scrollerState:Landroidx/compose/foundation/ScrollState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isReversed:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isVertical:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component4()Landroidx/compose/foundation/OverscrollEffect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Landroidx/compose/foundation/ScrollState;ZZLandroidx/compose/foundation/OverscrollEffect;)Landroidx/compose/foundation/ScrollingLayoutModifier;
    .locals 1
    .param p1    # Landroidx/compose/foundation/ScrollState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/OverscrollEffect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "scrollerState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "overscrollEffect"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/compose/foundation/ScrollingLayoutModifier;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/ScrollingLayoutModifier;-><init>(Landroidx/compose/foundation/ScrollState;ZZLandroidx/compose/foundation/OverscrollEffect;)V

    .line 14
    .line 15
    .line 16
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
    instance-of v1, p1, Landroidx/compose/foundation/ScrollingLayoutModifier;

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
    check-cast p1, Landroidx/compose/foundation/ScrollingLayoutModifier;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->scrollerState:Landroidx/compose/foundation/ScrollState;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/compose/foundation/ScrollingLayoutModifier;->scrollerState:Landroidx/compose/foundation/ScrollState;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isReversed:Z

    .line 25
    .line 26
    iget-boolean v3, p1, Landroidx/compose/foundation/ScrollingLayoutModifier;->isReversed:Z

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isVertical:Z

    .line 32
    .line 33
    iget-boolean v3, p1, Landroidx/compose/foundation/ScrollingLayoutModifier;->isVertical:Z

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-object v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 39
    .line 40
    iget-object p1, p1, Landroidx/compose/foundation/ScrollingLayoutModifier;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 41
    .line 42
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    return v0
.end method

.method public final getOverscrollEffect()Landroidx/compose/foundation/OverscrollEffect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getScrollerState()Landroidx/compose/foundation/ScrollState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->scrollerState:Landroidx/compose/foundation/ScrollState;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->scrollerState:Landroidx/compose/foundation/ScrollState;

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
    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isReversed:Z

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    :cond_0
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isVertical:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v2, v1

    .line 24
    :goto_0
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    return v0
.end method

.method public final isReversed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isReversed:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isVertical()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isVertical:Z

    .line 2
    .line 3
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
    const-string p1, "measurable"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
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
    const-string p1, "measurable"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 10
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
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isVertical:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 19
    .line 20
    :goto_0
    invoke-static {p3, p4, v0}, Landroidx/compose/foundation/CheckScrollableContainerConstraintsKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isVertical:Z

    .line 24
    .line 25
    const v1, 0x7fffffff

    .line 26
    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    move v7, v1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    move v7, v0

    .line 37
    :goto_1
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isVertical:Z

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    :cond_2
    move v5, v1

    .line 46
    const/4 v8, 0x5

    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v4, 0x0

    .line 49
    const/4 v6, 0x0

    .line 50
    move-wide v2, p3

    .line 51
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {v0, v1}, Lkotlin/ranges/e;->j(II)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    invoke-static {v0, p3}, Lkotlin/ranges/e;->j(II)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    sub-int/2addr p3, v4

    .line 88
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 89
    .line 90
    .line 91
    move-result p4

    .line 92
    sub-int/2addr p4, v3

    .line 93
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isVertical:Z

    .line 94
    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    move p3, p4

    .line 99
    :goto_2
    iget-object p4, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 100
    .line 101
    if-eqz p3, :cond_4

    .line 102
    .line 103
    const/4 v0, 0x1

    .line 104
    goto :goto_3

    .line 105
    :cond_4
    const/4 v0, 0x0

    .line 106
    :goto_3
    invoke-interface {p4, v0}, Landroidx/compose/foundation/OverscrollEffect;->setEnabled(Z)V

    .line 107
    .line 108
    .line 109
    new-instance v6, Landroidx/compose/foundation/ScrollingLayoutModifier$measure$1;

    .line 110
    .line 111
    invoke-direct {v6, p0, p3, p2}, Landroidx/compose/foundation/ScrollingLayoutModifier$measure$1;-><init>(Landroidx/compose/foundation/ScrollingLayoutModifier;ILandroidx/compose/ui/layout/Placeable;)V

    .line 112
    .line 113
    .line 114
    const/4 v7, 0x4

    .line 115
    const/4 v8, 0x0

    .line 116
    const/4 v5, 0x0

    .line 117
    move-object v2, p1

    .line 118
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
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
    const-string p1, "measurable"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
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
    const-string p1, "measurable"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
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
    const-string v1, "ScrollingLayoutModifier(scrollerState="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->scrollerState:Landroidx/compose/foundation/ScrollState;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", isReversed="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isReversed:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", isVertical="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isVertical:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", overscrollEffect="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
