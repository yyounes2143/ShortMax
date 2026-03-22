.class public final Landroidx/compose/ui/node/LayoutNodeAlignmentLines;
.super Ljava/lang/Object;
.source "LayoutNodeAlignmentLines.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final alignmentLines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dirty:Z

.field private final layoutNode:Landroidx/compose/ui/node/LayoutNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private previousUsedDuringParentLayout:Z

.field private queryOwner:Landroidx/compose/ui/node/LayoutNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private usedByModifierLayout:Z

.field private usedByModifierMeasurement:Z

.field private usedDuringParentLayout:Z

.field private usedDuringParentMeasurement:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "layoutNode"

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
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->dirty:Z

    .line 13
    .line 14
    new-instance p1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->alignmentLines:Ljava/util/Map;

    .line 20
    .line 21
    return-void
.end method

.method private static final recalculate$addAlignmentLine(Landroidx/compose/ui/node/LayoutNodeAlignmentLines;Landroidx/compose/ui/layout/AlignmentLine;ILandroidx/compose/ui/node/LayoutNodeWrapper;)V
    .locals 2

    .line 1
    int-to-float p2, p2

    .line 2
    invoke-static {p2, p2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {p3, v0, v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->toParentPosition-MK-Hz9U(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-virtual {p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrappedBy$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 18
    .line 19
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->getInnerLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getMeasureResult()Landroidx/compose/ui/layout/MeasureResult;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-interface {p2}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p3, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    int-to-float p2, p2

    .line 48
    invoke-static {p2, p2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    instance-of p2, p1, Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 54
    .line 55
    if-eqz p2, :cond_2

    .line 56
    .line 57
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-static {p2}, Lbt/a;->c(F)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-static {p2}, Lbt/a;->c(F)I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    :goto_1
    iget-object p3, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->alignmentLines:Ljava/util/Map;

    .line 75
    .line 76
    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->alignmentLines:Ljava/util/Map;

    .line 83
    .line 84
    invoke-static {p0, p1}, Lkotlin/collections/p0;->j(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    check-cast p0, Ljava/lang/Number;

    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    invoke-static {p1, p0, p2}, Landroidx/compose/ui/layout/AlignmentLineKt;->merge(Landroidx/compose/ui/layout/AlignmentLine;II)I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-interface {p3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    return-void
.end method


# virtual methods
.method public final getDirty$ui_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->dirty:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getLastCalculation()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->alignmentLines:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPreviousUsedDuringParentLayout$ui_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->previousUsedDuringParentLayout:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getQueried$ui_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedDuringParentMeasurement:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->previousUsedDuringParentLayout:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedByModifierMeasurement:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedByModifierLayout:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public final getRequired$ui_release()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->recalculateQueryOwner$ui_release()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->queryOwner:Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final getUsedByModifierLayout$ui_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedByModifierLayout:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getUsedByModifierMeasurement$ui_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedByModifierMeasurement:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getUsedDuringParentLayout$ui_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedDuringParentLayout:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getUsedDuringParentMeasurement$ui_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedDuringParentMeasurement:Z

    .line 2
    .line 3
    return v0
.end method

.method public final recalculate()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->alignmentLines:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-lez v1, :cond_5

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move v3, v2

    .line 24
    :cond_0
    aget-object v4, v0, v3

    .line 25
    .line 26
    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    .line 27
    .line 28
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_4

    .line 33
    .line 34
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getAlignmentLines$ui_release()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iget-boolean v5, v5, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->dirty:Z

    .line 39
    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->layoutChildren$ui_release()V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getAlignmentLines$ui_release()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    iget-object v5, v5, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->alignmentLines:Ljava/util/Map;

    .line 50
    .line 51
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_2

    .line 64
    .line 65
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Ljava/util/Map$Entry;

    .line 70
    .line 71
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    check-cast v7, Landroidx/compose/ui/layout/AlignmentLine;

    .line 76
    .line 77
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    check-cast v6, Ljava/lang/Number;

    .line 82
    .line 83
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getInnerLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-static {p0, v7, v6, v8}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->recalculate$addAlignmentLine(Landroidx/compose/ui/node/LayoutNodeAlignmentLines;Landroidx/compose/ui/layout/AlignmentLine;ILandroidx/compose/ui/node/LayoutNodeWrapper;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getInnerLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrappedBy$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :goto_1
    iget-object v5, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 107
    .line 108
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getInnerLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-nez v5, :cond_4

    .line 117
    .line 118
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getMeasureResult()Landroidx/compose/ui/layout/MeasureResult;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-interface {v5}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    check-cast v5, Ljava/lang/Iterable;

    .line 131
    .line 132
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    if-eqz v6, :cond_3

    .line 141
    .line 142
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    check-cast v6, Landroidx/compose/ui/layout/AlignmentLine;

    .line 147
    .line 148
    invoke-virtual {v4, v6}, Landroidx/compose/ui/node/LayoutNodeWrapper;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    invoke-static {p0, v6, v7, v4}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->recalculate$addAlignmentLine(Landroidx/compose/ui/node/LayoutNodeAlignmentLines;Landroidx/compose/ui/layout/AlignmentLine;ILandroidx/compose/ui/node/LayoutNodeWrapper;)V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_3
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrappedBy$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 165
    .line 166
    if-lt v3, v1, :cond_0

    .line 167
    .line 168
    :cond_5
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->alignmentLines:Ljava/util/Map;

    .line 169
    .line 170
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 171
    .line 172
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getInnerLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getMeasureResult()Landroidx/compose/ui/layout/MeasureResult;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 185
    .line 186
    .line 187
    iput-boolean v2, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->dirty:Z

    .line 188
    .line 189
    return-void
.end method

.method public final recalculateQueryOwner$ui_release()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->getQueried$ui_release()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getAlignmentLines$ui_release()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->queryOwner:Landroidx/compose/ui/node/LayoutNode;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getAlignmentLines$ui_release()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->getQueried$ui_release()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->queryOwner:Landroidx/compose/ui/node/LayoutNode;

    .line 39
    .line 40
    if-eqz v0, :cond_6

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getAlignmentLines$ui_release()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->getQueried$ui_release()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getAlignmentLines$ui_release()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->recalculateQueryOwner$ui_release()V

    .line 66
    .line 67
    .line 68
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getAlignmentLines$ui_release()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->queryOwner:Landroidx/compose/ui/node/LayoutNode;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    const/4 v0, 0x0

    .line 84
    :goto_0
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->queryOwner:Landroidx/compose/ui/node/LayoutNode;

    .line 85
    .line 86
    :cond_6
    :goto_1
    return-void
.end method

.method public final reset$ui_release()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->dirty:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedDuringParentMeasurement:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->previousUsedDuringParentLayout:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedDuringParentLayout:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedByModifierMeasurement:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedByModifierLayout:Z

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->queryOwner:Landroidx/compose/ui/node/LayoutNode;

    .line 17
    .line 18
    return-void
.end method

.method public final setDirty$ui_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->dirty:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPreviousUsedDuringParentLayout$ui_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->previousUsedDuringParentLayout:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setUsedByModifierLayout$ui_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedByModifierLayout:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setUsedByModifierMeasurement$ui_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedByModifierMeasurement:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setUsedDuringParentLayout$ui_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedDuringParentLayout:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setUsedDuringParentMeasurement$ui_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedDuringParentMeasurement:Z

    .line 2
    .line 3
    return-void
.end method
