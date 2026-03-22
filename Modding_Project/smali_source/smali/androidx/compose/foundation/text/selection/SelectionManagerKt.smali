.class public final Landroidx/compose/foundation/text/selection/SelectionManagerKt;
.super Ljava/lang/Object;
.source "SelectionManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/selection/SelectionManagerKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final calculateSelectionMagnifierCenterAndroid-O0kMr_c(Landroidx/compose/foundation/text/selection/SelectionManager;J)J
    .locals 4
    .param p0    # Landroidx/compose/foundation/text/selection/SelectionManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "manager"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    return-wide p0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, -0x1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    move v1, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    sget-object v3, Landroidx/compose/foundation/text/selection/SelectionManagerKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    aget v1, v3, v1

    .line 35
    .line 36
    :goto_0
    if-eq v1, v2, :cond_5

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    if-eq v1, v2, :cond_4

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    if-eq v1, v2, :cond_3

    .line 43
    .line 44
    const/4 p0, 0x3

    .line 45
    if-eq v1, p0, :cond_2

    .line 46
    .line 47
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 48
    .line 49
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p1, "SelectionContainer does not support cursor"

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-static {p0, p1, p2, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->calculateSelectionMagnifierCenterAndroid_O0kMr_c$getMagnifierCenter(Landroidx/compose/foundation/text/selection/SelectionManager;JLandroidx/compose/foundation/text/selection/Selection$AnchorInfo;Z)J

    .line 67
    .line 68
    .line 69
    move-result-wide p0

    .line 70
    goto :goto_1

    .line 71
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {p0, p1, p2, v0, v2}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->calculateSelectionMagnifierCenterAndroid_O0kMr_c$getMagnifierCenter(Landroidx/compose/foundation/text/selection/SelectionManager;JLandroidx/compose/foundation/text/selection/Selection$AnchorInfo;Z)J

    .line 76
    .line 77
    .line 78
    move-result-wide p0

    .line 79
    :goto_1
    return-wide p0

    .line 80
    :cond_5
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    .line 83
    .line 84
    .line 85
    move-result-wide p0

    .line 86
    return-wide p0
.end method

.method private static final calculateSelectionMagnifierCenterAndroid_O0kMr_c$getMagnifierCenter(Landroidx/compose/foundation/text/selection/SelectionManager;JLandroidx/compose/foundation/text/selection/Selection$AnchorInfo;Z)J
    .locals 6

    .line 1
    invoke-virtual {p0, p3}, Landroidx/compose/foundation/text/selection/SelectionManager;->getAnchorSelectable$foundation_release(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selectable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getContainerLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    return-wide p0

    .line 27
    :cond_1
    invoke-interface {v0}, Landroidx/compose/foundation/text/selection/Selectable;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    .line 36
    .line 37
    .line 38
    move-result-wide p0

    .line 39
    return-wide p0

    .line 40
    :cond_2
    invoke-virtual {p3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    if-eqz p4, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    add-int/lit8 p3, p3, -0x1

    .line 48
    .line 49
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getCurrentDragPosition-_m7T9-E()Landroidx/compose/ui/geometry/Offset;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    invoke-interface {v2, v1, v3, v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    invoke-interface {v0, p3}, Landroidx/compose/foundation/text/selection/Selectable;->getRangeOfLineContaining--jx7JFs(I)J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 73
    .line 74
    .line 75
    move-result p4

    .line 76
    invoke-interface {v0, p4}, Landroidx/compose/foundation/text/selection/Selectable;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    .line 77
    .line 78
    .line 79
    move-result-object p4

    .line 80
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    add-int/lit8 v5, v5, -0x1

    .line 85
    .line 86
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-static {v5, v3}, Lkotlin/ranges/e;->e(II)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-interface {v0, v3}, Landroidx/compose/foundation/text/selection/Selectable;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {p4}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    invoke-virtual {p4}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 111
    .line 112
    .line 113
    move-result p4

    .line 114
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    invoke-static {p4, v3}, Ljava/lang/Math;->max(FF)F

    .line 119
    .line 120
    .line 121
    move-result p4

    .line 122
    invoke-static {p0, v4, p4}, Lkotlin/ranges/e;->m(FFF)F

    .line 123
    .line 124
    .line 125
    move-result p4

    .line 126
    sub-float/2addr p0, p4

    .line 127
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    div-int/lit8 p1, p1, 0x2

    .line 136
    .line 137
    int-to-float p1, p1

    .line 138
    cmpl-float p0, p0, p1

    .line 139
    .line 140
    if-lez p0, :cond_4

    .line 141
    .line 142
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 143
    .line 144
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    .line 145
    .line 146
    .line 147
    move-result-wide p0

    .line 148
    return-wide p0

    .line 149
    :cond_4
    invoke-interface {v0, p3}, Landroidx/compose/foundation/text/selection/Selectable;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    .line 154
    .line 155
    .line 156
    move-result-wide p0

    .line 157
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    invoke-static {p4, p0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 162
    .line 163
    .line 164
    move-result-wide p0

    .line 165
    invoke-interface {v1, v2, p0, p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 166
    .line 167
    .line 168
    move-result-wide p0

    .line 169
    return-wide p0
.end method

.method public static final containsInclusive-Uv8p0NA(Landroidx/compose/ui/geometry/Rect;J)Z
    .locals 3
    .param p0    # Landroidx/compose/ui/geometry/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$containsInclusive"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    cmpg-float v0, v0, v2

    .line 19
    .line 20
    if-gtz v0, :cond_0

    .line 21
    .line 22
    cmpg-float v0, v2, v1

    .line 23
    .line 24
    if-gtz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    cmpg-float p2, v0, p1

    .line 39
    .line 40
    if-gtz p2, :cond_0

    .line 41
    .line 42
    cmpg-float p0, p1, p0

    .line 43
    .line 44
    if-gtz p0, :cond_0

    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p0, 0x0

    .line 49
    :goto_0
    return p0
.end method

.method public static final getCurrentSelectedText(Landroidx/compose/foundation/text/selection/Selectable;Landroidx/compose/foundation/text/selection/Selection;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 5
    .param p0    # Landroidx/compose/foundation/text/selection/Selectable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/text/selection/Selection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "selectable"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "selection"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/Selectable;->getText()Landroidx/compose/ui/text/AnnotatedString;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    cmp-long v1, v1, v3

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    cmp-long v1, v1, v3

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_0
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    cmp-long v1, v1, v3

    .line 62
    .line 63
    if-nez v1, :cond_2

    .line 64
    .line 65
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    .line 66
    .line 67
    .line 68
    move-result-wide v1

    .line 69
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    .line 74
    .line 75
    .line 76
    move-result-wide v3

    .line 77
    cmp-long v1, v1, v3

    .line 78
    .line 79
    if-nez v1, :cond_2

    .line 80
    .line 81
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getHandlesCrossed()Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eqz p0, :cond_1

    .line 86
    .line 87
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/text/AnnotatedString;->subSequence(II)Landroidx/compose/ui/text/AnnotatedString;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/text/AnnotatedString;->subSequence(II)Landroidx/compose/ui/text/AnnotatedString;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    goto :goto_0

    .line 129
    :cond_2
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    .line 130
    .line 131
    .line 132
    move-result-wide v1

    .line 133
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    .line 138
    .line 139
    .line 140
    move-result-wide v3

    .line 141
    cmp-long p0, v1, v3

    .line 142
    .line 143
    const/4 v1, 0x0

    .line 144
    if-nez p0, :cond_4

    .line 145
    .line 146
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getHandlesCrossed()Z

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    if-eqz p0, :cond_3

    .line 151
    .line 152
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    invoke-virtual {v0, v1, p0}, Landroidx/compose/ui/text/AnnotatedString;->subSequence(II)Landroidx/compose/ui/text/AnnotatedString;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    goto :goto_0

    .line 165
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/text/AnnotatedString;->subSequence(II)Landroidx/compose/ui/text/AnnotatedString;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    goto :goto_0

    .line 182
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getHandlesCrossed()Z

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    if-eqz p0, :cond_5

    .line 187
    .line 188
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/text/AnnotatedString;->subSequence(II)Landroidx/compose/ui/text/AnnotatedString;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    goto :goto_0

    .line 205
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    invoke-virtual {v0, v1, p0}, Landroidx/compose/ui/text/AnnotatedString;->subSequence(II)Landroidx/compose/ui/text/AnnotatedString;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    :goto_0
    return-object v0
.end method

.method public static final merge(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection;)Landroidx/compose/foundation/text/selection/Selection;
    .locals 0
    .param p0    # Landroidx/compose/foundation/text/selection/Selection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/text/selection/Selection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/Selection;->merge(Landroidx/compose/foundation/text/selection/Selection;)Landroidx/compose/foundation/text/selection/Selection;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object p1, p0

    .line 11
    :cond_1
    :goto_0
    return-object p1
.end method

.method public static final visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 5
    .param p0    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-interface {p0, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->windowToLocal-MK-Hz9U(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getBottomRight-F1C5BW0()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    invoke-interface {p0, v3, v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->windowToLocal-MK-Hz9U(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/RectKt;->Rect-0a9Yr6o(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method
