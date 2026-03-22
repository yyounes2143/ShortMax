.class public final Landroidx/compose/foundation/gestures/DragGestureDetectorKt;
.super Ljava/lang/Object;
.source "DragGestureDetector.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final defaultTouchSlop:F

.field private static final mouseSlop:F

.field private static final mouseToTouchSlopRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/high16 v0, 0x3fc0000000000000L    # 0.125

    .line 2
    .line 3
    double-to-float v0, v0

    .line 4
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->mouseSlop:F

    .line 9
    .line 10
    const/16 v1, 0x12

    .line 11
    .line 12
    int-to-float v1, v1

    .line 13
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sput v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->defaultTouchSlop:F

    .line 18
    .line 19
    div-float/2addr v0, v1

    .line 20
    sput v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->mouseToTouchSlopRatio:F

    .line 21
    .line 22
    return-void
.end method

.method public static final synthetic access$awaitLongPressOrCancellation(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/ui/input/pointer/PointerInputChange;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->awaitLongPressOrCancellation(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/ui/input/pointer/PointerInputChange;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final awaitDragOrCancellation-rnUCldI(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLrs/c;)Ljava/lang/Object;
    .locals 17
    .param p0    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "J",
            "Lrs/c<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-wide/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    instance-of v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    move-object v3, v2

    .line 10
    check-cast v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;

    .line 11
    .line 12
    iget v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->label:I

    .line 13
    .line 14
    const/high16 v5, -0x80000000

    .line 15
    .line 16
    and-int v6, v4, v5

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    sub-int/2addr v4, v5

    .line 21
    iput v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;-><init>(Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v2, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->label:I

    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    const/4 v7, 0x0

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    if-ne v5, v6, :cond_1

    .line 42
    .line 43
    iget-object v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lkotlin/jvm/internal/Ref$LongRef;

    .line 46
    .line 47
    iget-object v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 50
    .line 51
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move-object/from16 v16, v1

    .line 55
    .line 56
    move-object v1, v0

    .line 57
    move-object/from16 v0, v16

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_2
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v2, v0, v1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    return-object v7

    .line 82
    :cond_3
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    .line 83
    .line 84
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-wide v0, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 88
    .line 89
    move-object/from16 v0, p0

    .line 90
    .line 91
    :goto_1
    iput-object v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 92
    .line 93
    iput-object v2, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 94
    .line 95
    iput v6, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->label:I

    .line 96
    .line 97
    invoke-static {v0, v7, v3, v6, v7}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-ne v1, v4, :cond_4

    .line 102
    .line 103
    return-object v4

    .line 104
    :cond_4
    move-object/from16 v16, v2

    .line 105
    .line 106
    move-object v2, v1

    .line 107
    move-object/from16 v1, v16

    .line 108
    .line 109
    :goto_2
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 110
    .line 111
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    const/4 v9, 0x0

    .line 120
    move v10, v9

    .line 121
    :goto_3
    if-ge v10, v8, :cond_6

    .line 122
    .line 123
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    move-object v12, v11

    .line 128
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 129
    .line 130
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 131
    .line 132
    .line 133
    move-result-wide v12

    .line 134
    iget-wide v14, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 135
    .line 136
    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    if-eqz v12, :cond_5

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_6
    move-object v11, v7

    .line 147
    :goto_4
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 148
    .line 149
    if-nez v11, :cond_7

    .line 150
    .line 151
    move-object v11, v7

    .line 152
    goto :goto_7

    .line 153
    :cond_7
    invoke-static {v11}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-eqz v5, :cond_b

    .line 158
    .line 159
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    :goto_5
    if-ge v9, v5, :cond_9

    .line 168
    .line 169
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    move-object v10, v8

    .line 174
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 175
    .line 176
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    if-eqz v10, :cond_8

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_9
    move-object v8, v7

    .line 187
    :goto_6
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 188
    .line 189
    if-nez v8, :cond_a

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_a
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 193
    .line 194
    .line 195
    move-result-wide v8

    .line 196
    iput-wide v8, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 197
    .line 198
    goto :goto_8

    .line 199
    :cond_b
    invoke-static {v11}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChangedIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-eqz v2, :cond_d

    .line 204
    .line 205
    :goto_7
    if-eqz v11, :cond_c

    .line 206
    .line 207
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-nez v0, :cond_c

    .line 212
    .line 213
    move-object v7, v11

    .line 214
    :cond_c
    return-object v7

    .line 215
    :cond_d
    :goto_8
    move-object v2, v1

    .line 216
    goto :goto_1
.end method

.method private static final awaitDragOrUp-jO51t88(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {p0, v1, p4, v2, v1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 12
    .line 13
    .line 14
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    move v5, v0

    .line 25
    :goto_1
    if-ge v5, v4, :cond_2

    .line 26
    .line 27
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    move-object v7, v6

    .line 32
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 33
    .line 34
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 35
    .line 36
    .line 37
    move-result-wide v7

    .line 38
    invoke-static {v7, v8, p1, p2}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-object v6, v1

    .line 49
    :goto_2
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 50
    .line 51
    if-eqz v6, :cond_7

    .line 52
    .line 53
    invoke-static {v6}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_6

    .line 58
    .line 59
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    :goto_3
    if-ge v0, p2, :cond_4

    .line 68
    .line 69
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    move-object v3, v2

    .line 74
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 75
    .line 76
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    move-object v1, v2

    .line 83
    goto :goto_4

    .line 84
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_4
    :goto_4
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 88
    .line 89
    if-nez v1, :cond_5

    .line 90
    .line 91
    return-object v6

    .line 92
    :cond_5
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 93
    .line 94
    .line 95
    move-result-wide p1

    .line 96
    goto :goto_0

    .line 97
    :cond_6
    invoke-interface {p3, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Ljava/lang/Boolean;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    .line 109
    return-object v6

    .line 110
    :cond_7
    return-object v1
.end method

.method public static final awaitHorizontalDragOrCancellation-rnUCldI(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLrs/c;)Ljava/lang/Object;
    .locals 17
    .param p0    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "J",
            "Lrs/c<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-wide/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    instance-of v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    move-object v3, v2

    .line 10
    check-cast v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1;

    .line 11
    .line 12
    iget v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1;->label:I

    .line 13
    .line 14
    const/high16 v5, -0x80000000

    .line 15
    .line 16
    and-int v6, v4, v5

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    sub-int/2addr v4, v5

    .line 21
    iput v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1;-><init>(Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v2, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1;->label:I

    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    const/4 v7, 0x0

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    if-ne v5, v6, :cond_1

    .line 42
    .line 43
    iget-object v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lkotlin/jvm/internal/Ref$LongRef;

    .line 46
    .line 47
    iget-object v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 50
    .line 51
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move-object/from16 v16, v1

    .line 55
    .line 56
    move-object v1, v0

    .line 57
    move-object/from16 v0, v16

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_2
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v2, v0, v1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    return-object v7

    .line 82
    :cond_3
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    .line 83
    .line 84
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-wide v0, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 88
    .line 89
    move-object/from16 v0, p0

    .line 90
    .line 91
    :goto_1
    iput-object v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 92
    .line 93
    iput-object v2, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 94
    .line 95
    iput v6, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1;->label:I

    .line 96
    .line 97
    invoke-static {v0, v7, v3, v6, v7}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-ne v1, v4, :cond_4

    .line 102
    .line 103
    return-object v4

    .line 104
    :cond_4
    move-object/from16 v16, v2

    .line 105
    .line 106
    move-object v2, v1

    .line 107
    move-object/from16 v1, v16

    .line 108
    .line 109
    :goto_2
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 110
    .line 111
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    const/4 v9, 0x0

    .line 120
    move v10, v9

    .line 121
    :goto_3
    if-ge v10, v8, :cond_6

    .line 122
    .line 123
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    move-object v12, v11

    .line 128
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 129
    .line 130
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 131
    .line 132
    .line 133
    move-result-wide v12

    .line 134
    iget-wide v14, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 135
    .line 136
    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    if-eqz v12, :cond_5

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_6
    move-object v11, v7

    .line 147
    :goto_4
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 148
    .line 149
    if-nez v11, :cond_7

    .line 150
    .line 151
    move-object v11, v7

    .line 152
    goto :goto_7

    .line 153
    :cond_7
    invoke-static {v11}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-eqz v5, :cond_b

    .line 158
    .line 159
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    :goto_5
    if-ge v9, v5, :cond_9

    .line 168
    .line 169
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    move-object v10, v8

    .line 174
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 175
    .line 176
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    if-eqz v10, :cond_8

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_9
    move-object v8, v7

    .line 187
    :goto_6
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 188
    .line 189
    if-nez v8, :cond_a

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_a
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 193
    .line 194
    .line 195
    move-result-wide v8

    .line 196
    iput-wide v8, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 197
    .line 198
    goto :goto_8

    .line 199
    :cond_b
    invoke-static {v11}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChangeIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)J

    .line 200
    .line 201
    .line 202
    move-result-wide v12

    .line 203
    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    const/4 v5, 0x0

    .line 208
    cmpg-float v2, v2, v5

    .line 209
    .line 210
    if-nez v2, :cond_c

    .line 211
    .line 212
    move v9, v6

    .line 213
    :cond_c
    if-nez v9, :cond_e

    .line 214
    .line 215
    :goto_7
    if-eqz v11, :cond_d

    .line 216
    .line 217
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-nez v0, :cond_d

    .line 222
    .line 223
    move-object v7, v11

    .line 224
    :cond_d
    return-object v7

    .line 225
    :cond_e
    :goto_8
    move-object v2, v1

    .line 226
    goto/16 :goto_1
.end method

.method public static final awaitHorizontalPointerSlopOrCancellation-gDDlDlE(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 20
    .param p0    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "JI",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-wide/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v2, p5

    .line 4
    .line 5
    instance-of v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    move-object v3, v2

    .line 10
    check-cast v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;

    .line 11
    .line 12
    iget v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->label:I

    .line 13
    .line 14
    const/high16 v5, -0x80000000

    .line 15
    .line 16
    and-int v6, v4, v5

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    sub-int/2addr v4, v5

    .line 21
    iput v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;-><init>(Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v2, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->label:I

    .line 36
    .line 37
    const/4 v7, 0x2

    .line 38
    const/4 v8, 0x1

    .line 39
    const/4 v9, 0x0

    .line 40
    if-eqz v5, :cond_3

    .line 41
    .line 42
    if-eq v5, v8, :cond_2

    .line 43
    .line 44
    if-ne v5, v7, :cond_1

    .line 45
    .line 46
    iget v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->F$1:F

    .line 47
    .line 48
    iget v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->F$0:F

    .line 49
    .line 50
    iget-object v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 53
    .line 54
    iget-object v10, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v10, Lkotlin/jvm/internal/Ref$LongRef;

    .line 57
    .line 58
    iget-object v11, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v11, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 61
    .line 62
    iget-object v12, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v12, Lkotlin/jvm/functions/Function2;

    .line 65
    .line 66
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    move v2, v0

    .line 70
    move-object v0, v11

    .line 71
    move-object v11, v10

    .line 72
    move-object v10, v3

    .line 73
    move v3, v1

    .line 74
    move-object v1, v12

    .line 75
    goto/16 :goto_9

    .line 76
    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :cond_2
    iget v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->F$1:F

    .line 86
    .line 87
    iget v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->F$0:F

    .line 88
    .line 89
    iget-object v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v5, Lkotlin/jvm/internal/Ref$LongRef;

    .line 92
    .line 93
    iget-object v10, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v10, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 96
    .line 97
    iget-object v11, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 100
    .line 101
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    move-object/from16 v18, v3

    .line 105
    .line 106
    move v3, v0

    .line 107
    move-object v0, v10

    .line 108
    move-object/from16 v10, v18

    .line 109
    .line 110
    move-object/from16 v19, v5

    .line 111
    .line 112
    move v5, v1

    .line 113
    move-object v1, v11

    .line 114
    move-object/from16 v11, v19

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-static {v2, v0, v1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_4

    .line 129
    .line 130
    goto/16 :goto_a

    .line 131
    .line 132
    :cond_4
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    move/from16 v5, p3

    .line 137
    .line 138
    invoke-static {v2, v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->pointerSlop-E8SPZFQ(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    new-instance v5, Lkotlin/jvm/internal/Ref$LongRef;

    .line 143
    .line 144
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-wide v0, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 148
    .line 149
    move-object/from16 v0, p0

    .line 150
    .line 151
    move-object/from16 v1, p4

    .line 152
    .line 153
    move-object v10, v5

    .line 154
    move-object v5, v3

    .line 155
    move v3, v2

    .line 156
    const/4 v2, 0x0

    .line 157
    :goto_1
    iput-object v1, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 158
    .line 159
    iput-object v0, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 160
    .line 161
    iput-object v10, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object v9, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    .line 164
    .line 165
    iput v3, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->F$0:F

    .line 166
    .line 167
    iput v2, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->F$1:F

    .line 168
    .line 169
    iput v8, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->label:I

    .line 170
    .line 171
    invoke-static {v0, v9, v5, v8, v9}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    if-ne v11, v4, :cond_5

    .line 176
    .line 177
    return-object v4

    .line 178
    :cond_5
    move/from16 v18, v3

    .line 179
    .line 180
    move v3, v2

    .line 181
    move-object v2, v11

    .line 182
    move-object v11, v10

    .line 183
    move-object v10, v5

    .line 184
    move/from16 v5, v18

    .line 185
    .line 186
    :goto_2
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 187
    .line 188
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 193
    .line 194
    .line 195
    move-result v13

    .line 196
    const/4 v14, 0x0

    .line 197
    move v15, v14

    .line 198
    :goto_3
    if-ge v15, v13, :cond_7

    .line 199
    .line 200
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v16

    .line 204
    move-object/from16 v17, v16

    .line 205
    .line 206
    check-cast v17, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 207
    .line 208
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 209
    .line 210
    .line 211
    move-result-wide v8

    .line 212
    iget-wide v6, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 213
    .line 214
    invoke-static {v8, v9, v6, v7}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    if-eqz v6, :cond_6

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_6
    add-int/lit8 v15, v15, 0x1

    .line 222
    .line 223
    const/4 v7, 0x2

    .line 224
    const/4 v8, 0x1

    .line 225
    const/4 v9, 0x0

    .line 226
    goto :goto_3

    .line 227
    :cond_7
    const/16 v16, 0x0

    .line 228
    .line 229
    :goto_4
    move-object/from16 v6, v16

    .line 230
    .line 231
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 232
    .line 233
    if-nez v6, :cond_8

    .line 234
    .line 235
    :goto_5
    const/4 v9, 0x0

    .line 236
    goto/16 :goto_a

    .line 237
    .line 238
    :cond_8
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 239
    .line 240
    .line 241
    move-result v7

    .line 242
    if-eqz v7, :cond_9

    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_9
    invoke-static {v6}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    if-eqz v7, :cond_d

    .line 250
    .line 251
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    :goto_6
    if-ge v14, v6, :cond_b

    .line 260
    .line 261
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    move-object v8, v7

    .line 266
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 267
    .line 268
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    if-eqz v8, :cond_a

    .line 273
    .line 274
    goto :goto_7

    .line 275
    :cond_a
    add-int/lit8 v14, v14, 0x1

    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_b
    const/4 v7, 0x0

    .line 279
    :goto_7
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 280
    .line 281
    if-nez v7, :cond_c

    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_c
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 285
    .line 286
    .line 287
    move-result-wide v6

    .line 288
    iput-wide v6, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 289
    .line 290
    move v2, v3

    .line 291
    move v3, v5

    .line 292
    move-object v5, v10

    .line 293
    move-object v10, v11

    .line 294
    const/4 v7, 0x2

    .line 295
    :goto_8
    const/4 v8, 0x1

    .line 296
    const/4 v9, 0x0

    .line 297
    goto/16 :goto_1

    .line 298
    .line 299
    :cond_d
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 300
    .line 301
    .line 302
    move-result-wide v7

    .line 303
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPosition-F1C5BW0()J

    .line 304
    .line 305
    .line 306
    move-result-wide v12

    .line 307
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    sub-float/2addr v2, v7

    .line 316
    add-float/2addr v2, v3

    .line 317
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    cmpg-float v3, v3, v5

    .line 322
    .line 323
    if-gez v3, :cond_10

    .line 324
    .line 325
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 326
    .line 327
    iput-object v1, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 328
    .line 329
    iput-object v0, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 330
    .line 331
    iput-object v11, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 332
    .line 333
    iput-object v6, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    .line 334
    .line 335
    iput v5, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->F$0:F

    .line 336
    .line 337
    iput v2, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->F$1:F

    .line 338
    .line 339
    const/4 v7, 0x2

    .line 340
    iput v7, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->label:I

    .line 341
    .line 342
    invoke-interface {v0, v3, v10}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    if-ne v3, v4, :cond_e

    .line 347
    .line 348
    return-object v4

    .line 349
    :cond_e
    move v3, v5

    .line 350
    move-object v5, v6

    .line 351
    :goto_9
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 352
    .line 353
    .line 354
    move-result v5

    .line 355
    if-eqz v5, :cond_f

    .line 356
    .line 357
    goto :goto_5

    .line 358
    :cond_f
    move-object v5, v10

    .line 359
    move-object v10, v11

    .line 360
    goto :goto_8

    .line 361
    :cond_10
    const/4 v7, 0x2

    .line 362
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    mul-float/2addr v3, v5

    .line 367
    sub-float/2addr v2, v3

    .line 368
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->c(F)Ljava/lang/Float;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    invoke-interface {v1, v6, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    if-eqz v2, :cond_11

    .line 380
    .line 381
    move-object v9, v6

    .line 382
    :goto_a
    return-object v9

    .line 383
    :cond_11
    move v3, v5

    .line 384
    move-object v5, v10

    .line 385
    move-object v10, v11

    .line 386
    const/4 v2, 0x0

    .line 387
    goto :goto_8
.end method

.method public static final awaitHorizontalTouchSlopOrCancellation-jO51t88(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 20
    .param p0    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-wide/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v2, p4

    .line 4
    .line 5
    instance-of v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    move-object v3, v2

    .line 10
    check-cast v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;

    .line 11
    .line 12
    iget v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->label:I

    .line 13
    .line 14
    const/high16 v5, -0x80000000

    .line 15
    .line 16
    and-int v6, v4, v5

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    sub-int/2addr v4, v5

    .line 21
    iput v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;-><init>(Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v2, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->label:I

    .line 36
    .line 37
    const/4 v7, 0x2

    .line 38
    const/4 v8, 0x1

    .line 39
    const/4 v9, 0x0

    .line 40
    if-eqz v5, :cond_3

    .line 41
    .line 42
    if-eq v5, v8, :cond_2

    .line 43
    .line 44
    if-ne v5, v7, :cond_1

    .line 45
    .line 46
    iget v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->F$1:F

    .line 47
    .line 48
    iget v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->F$0:F

    .line 49
    .line 50
    iget-object v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 53
    .line 54
    iget-object v10, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v10, Lkotlin/jvm/internal/Ref$LongRef;

    .line 57
    .line 58
    iget-object v11, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v11, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 61
    .line 62
    iget-object v12, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v12, Lkotlin/jvm/functions/Function2;

    .line 65
    .line 66
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    move v2, v0

    .line 70
    move-object v0, v11

    .line 71
    move-object v11, v10

    .line 72
    move-object v10, v3

    .line 73
    move v3, v1

    .line 74
    move-object v1, v12

    .line 75
    goto/16 :goto_9

    .line 76
    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :cond_2
    iget v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->F$1:F

    .line 86
    .line 87
    iget v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->F$0:F

    .line 88
    .line 89
    iget-object v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v5, Lkotlin/jvm/internal/Ref$LongRef;

    .line 92
    .line 93
    iget-object v10, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v10, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 96
    .line 97
    iget-object v11, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 100
    .line 101
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    move-object/from16 v18, v3

    .line 105
    .line 106
    move v3, v0

    .line 107
    move-object v0, v10

    .line 108
    move-object/from16 v10, v18

    .line 109
    .line 110
    move-object/from16 v19, v5

    .line 111
    .line 112
    move v5, v1

    .line 113
    move-object v1, v11

    .line 114
    move-object/from16 v11, v19

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    .line 121
    .line 122
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getTouch-T8wyACA()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-static {v5, v0, v1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_4

    .line 135
    .line 136
    goto/16 :goto_a

    .line 137
    .line 138
    :cond_4
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-static {v5, v2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->pointerSlop-E8SPZFQ(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    new-instance v5, Lkotlin/jvm/internal/Ref$LongRef;

    .line 147
    .line 148
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 149
    .line 150
    .line 151
    iput-wide v0, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 152
    .line 153
    move-object/from16 v0, p0

    .line 154
    .line 155
    move-object/from16 v1, p3

    .line 156
    .line 157
    move-object v10, v5

    .line 158
    move-object v5, v3

    .line 159
    move v3, v2

    .line 160
    const/4 v2, 0x0

    .line 161
    :goto_1
    iput-object v1, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object v0, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 164
    .line 165
    iput-object v10, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 166
    .line 167
    iput-object v9, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    .line 168
    .line 169
    iput v3, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->F$0:F

    .line 170
    .line 171
    iput v2, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->F$1:F

    .line 172
    .line 173
    iput v8, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->label:I

    .line 174
    .line 175
    invoke-static {v0, v9, v5, v8, v9}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    if-ne v11, v4, :cond_5

    .line 180
    .line 181
    return-object v4

    .line 182
    :cond_5
    move/from16 v18, v3

    .line 183
    .line 184
    move v3, v2

    .line 185
    move-object v2, v11

    .line 186
    move-object v11, v10

    .line 187
    move-object v10, v5

    .line 188
    move/from16 v5, v18

    .line 189
    .line 190
    :goto_2
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 191
    .line 192
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v12

    .line 196
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 197
    .line 198
    .line 199
    move-result v13

    .line 200
    const/4 v14, 0x0

    .line 201
    move v15, v14

    .line 202
    :goto_3
    if-ge v15, v13, :cond_7

    .line 203
    .line 204
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v16

    .line 208
    move-object/from16 v17, v16

    .line 209
    .line 210
    check-cast v17, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 211
    .line 212
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 213
    .line 214
    .line 215
    move-result-wide v8

    .line 216
    iget-wide v6, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 217
    .line 218
    invoke-static {v8, v9, v6, v7}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    if-eqz v6, :cond_6

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_6
    add-int/lit8 v15, v15, 0x1

    .line 226
    .line 227
    const/4 v7, 0x2

    .line 228
    const/4 v8, 0x1

    .line 229
    const/4 v9, 0x0

    .line 230
    goto :goto_3

    .line 231
    :cond_7
    const/16 v16, 0x0

    .line 232
    .line 233
    :goto_4
    move-object/from16 v6, v16

    .line 234
    .line 235
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 236
    .line 237
    if-nez v6, :cond_8

    .line 238
    .line 239
    :goto_5
    const/4 v9, 0x0

    .line 240
    goto/16 :goto_a

    .line 241
    .line 242
    :cond_8
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    if-eqz v7, :cond_9

    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_9
    invoke-static {v6}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    if-eqz v7, :cond_d

    .line 254
    .line 255
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    :goto_6
    if-ge v14, v6, :cond_b

    .line 264
    .line 265
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    move-object v8, v7

    .line 270
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 271
    .line 272
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 273
    .line 274
    .line 275
    move-result v8

    .line 276
    if-eqz v8, :cond_a

    .line 277
    .line 278
    goto :goto_7

    .line 279
    :cond_a
    add-int/lit8 v14, v14, 0x1

    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_b
    const/4 v7, 0x0

    .line 283
    :goto_7
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 284
    .line 285
    if-nez v7, :cond_c

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_c
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 289
    .line 290
    .line 291
    move-result-wide v6

    .line 292
    iput-wide v6, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 293
    .line 294
    move v2, v3

    .line 295
    move v3, v5

    .line 296
    move-object v5, v10

    .line 297
    move-object v10, v11

    .line 298
    const/4 v7, 0x2

    .line 299
    :goto_8
    const/4 v8, 0x1

    .line 300
    const/4 v9, 0x0

    .line 301
    goto/16 :goto_1

    .line 302
    .line 303
    :cond_d
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 304
    .line 305
    .line 306
    move-result-wide v7

    .line 307
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPosition-F1C5BW0()J

    .line 308
    .line 309
    .line 310
    move-result-wide v12

    .line 311
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 316
    .line 317
    .line 318
    move-result v7

    .line 319
    sub-float/2addr v2, v7

    .line 320
    add-float/2addr v2, v3

    .line 321
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    cmpg-float v3, v3, v5

    .line 326
    .line 327
    if-gez v3, :cond_10

    .line 328
    .line 329
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 330
    .line 331
    iput-object v1, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 332
    .line 333
    iput-object v0, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 334
    .line 335
    iput-object v11, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 336
    .line 337
    iput-object v6, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    .line 338
    .line 339
    iput v5, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->F$0:F

    .line 340
    .line 341
    iput v2, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->F$1:F

    .line 342
    .line 343
    const/4 v7, 0x2

    .line 344
    iput v7, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;->label:I

    .line 345
    .line 346
    invoke-interface {v0, v3, v10}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    if-ne v3, v4, :cond_e

    .line 351
    .line 352
    return-object v4

    .line 353
    :cond_e
    move v3, v5

    .line 354
    move-object v5, v6

    .line 355
    :goto_9
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    if-eqz v5, :cond_f

    .line 360
    .line 361
    goto :goto_5

    .line 362
    :cond_f
    move-object v5, v10

    .line 363
    move-object v10, v11

    .line 364
    goto :goto_8

    .line 365
    :cond_10
    const/4 v7, 0x2

    .line 366
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    mul-float/2addr v3, v5

    .line 371
    sub-float/2addr v2, v3

    .line 372
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->c(F)Ljava/lang/Float;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-interface {v1, v6, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-eqz v2, :cond_11

    .line 384
    .line 385
    move-object v9, v6

    .line 386
    :goto_a
    return-object v9

    .line 387
    :cond_11
    move v3, v5

    .line 388
    move-object v5, v10

    .line 389
    move-object v10, v11

    .line 390
    const/4 v2, 0x0

    .line 391
    goto :goto_8
.end method

.method private static final awaitLongPressOrCancellation(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/ui/input/pointer/PointerInputChange;Lrs/c;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 42
    .line 43
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 46
    .line 47
    :try_start_0
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 63
    .line 64
    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 68
    .line 69
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 73
    .line 74
    invoke-interface {p0}, Landroidx/compose/ui/input/pointer/PointerInputScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-interface {v5}, Landroidx/compose/ui/platform/ViewConfiguration;->getLongPressTimeoutMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v5

    .line 82
    :try_start_1
    new-instance v7, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;

    .line 83
    .line 84
    invoke-direct {v7, p0, v2, p2, v3}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V

    .line 85
    .line 86
    .line 87
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 88
    .line 89
    iput-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 90
    .line 91
    iput v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->label:I

    .line 92
    .line 93
    invoke-static {v5, v6, v7, v0}, Lkotlinx/coroutines/TimeoutKt;->c(JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    if-ne p0, v1, :cond_4

    .line 98
    .line 99
    return-object v1

    .line 100
    :catch_0
    move-object p0, p2

    .line 101
    :catch_1
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 104
    .line 105
    if-nez p0, :cond_3

    .line 106
    .line 107
    move-object v3, p1

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    move-object v3, p0

    .line 110
    :cond_4
    :goto_1
    return-object v3
.end method

.method public static final awaitPointerSlopOrCancellation-gDDlDlE(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 19
    .param p0    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "JI",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-wide/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v2, p5

    .line 4
    .line 5
    instance-of v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    move-object v3, v2

    .line 10
    check-cast v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;

    .line 11
    .line 12
    iget v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->label:I

    .line 13
    .line 14
    const/high16 v5, -0x80000000

    .line 15
    .line 16
    and-int v6, v4, v5

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    sub-int/2addr v4, v5

    .line 21
    iput v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;-><init>(Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v2, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->label:I

    .line 36
    .line 37
    const/4 v6, 0x2

    .line 38
    const/4 v7, 0x1

    .line 39
    const/4 v8, 0x0

    .line 40
    if-eqz v5, :cond_3

    .line 41
    .line 42
    if-eq v5, v7, :cond_2

    .line 43
    .line 44
    if-ne v5, v6, :cond_1

    .line 45
    .line 46
    iget v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->F$0:F

    .line 47
    .line 48
    iget-wide v9, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->J$0:J

    .line 49
    .line 50
    iget-object v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 53
    .line 54
    iget-object v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v5, Lkotlin/jvm/internal/Ref$LongRef;

    .line 57
    .line 58
    iget-object v11, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 61
    .line 62
    iget-object v12, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v12, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 65
    .line 66
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    move v2, v0

    .line 70
    move v7, v6

    .line 71
    move-object v0, v12

    .line 72
    goto/16 :goto_a

    .line 73
    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 77
    .line 78
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0

    .line 82
    :cond_2
    iget v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->F$0:F

    .line 83
    .line 84
    iget-wide v9, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->J$0:J

    .line 85
    .line 86
    iget-object v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v1, Lkotlin/jvm/internal/Ref$LongRef;

    .line 89
    .line 90
    iget-object v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 93
    .line 94
    iget-object v11, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v11, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 97
    .line 98
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    move-object/from16 v18, v3

    .line 102
    .line 103
    move v3, v0

    .line 104
    move-object v0, v11

    .line 105
    move-wide v10, v9

    .line 106
    move-object v9, v1

    .line 107
    move-object v1, v5

    .line 108
    :goto_1
    move-object/from16 v5, v18

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_3
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-static {v2, v0, v1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_4

    .line 123
    .line 124
    return-object v8

    .line 125
    :cond_4
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 126
    .line 127
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 128
    .line 129
    .line 130
    move-result-wide v9

    .line 131
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    move/from16 v5, p3

    .line 136
    .line 137
    invoke-static {v2, v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->pointerSlop-E8SPZFQ(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    new-instance v5, Lkotlin/jvm/internal/Ref$LongRef;

    .line 142
    .line 143
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 144
    .line 145
    .line 146
    iput-wide v0, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 147
    .line 148
    move-object/from16 v0, p0

    .line 149
    .line 150
    move-object/from16 v1, p4

    .line 151
    .line 152
    :goto_2
    iput-object v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 153
    .line 154
    iput-object v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 155
    .line 156
    iput-object v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 157
    .line 158
    iput-object v8, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    .line 159
    .line 160
    iput-wide v9, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->J$0:J

    .line 161
    .line 162
    iput v2, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->F$0:F

    .line 163
    .line 164
    iput v7, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->label:I

    .line 165
    .line 166
    invoke-static {v0, v8, v3, v7, v8}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    if-ne v11, v4, :cond_5

    .line 171
    .line 172
    return-object v4

    .line 173
    :cond_5
    move-object/from16 v18, v3

    .line 174
    .line 175
    move v3, v2

    .line 176
    move-object v2, v11

    .line 177
    move-wide v10, v9

    .line 178
    move-object v9, v5

    .line 179
    goto :goto_1

    .line 180
    :goto_3
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 181
    .line 182
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object v12

    .line 186
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 187
    .line 188
    .line 189
    move-result v13

    .line 190
    const/4 v15, 0x0

    .line 191
    :goto_4
    if-ge v15, v13, :cond_7

    .line 192
    .line 193
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v16

    .line 197
    move-object/from16 v17, v16

    .line 198
    .line 199
    check-cast v17, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 200
    .line 201
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 202
    .line 203
    .line 204
    move-result-wide v6

    .line 205
    move/from16 v17, v15

    .line 206
    .line 207
    iget-wide v14, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 208
    .line 209
    invoke-static {v6, v7, v14, v15}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    if-eqz v6, :cond_6

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_6
    add-int/lit8 v15, v17, 0x1

    .line 217
    .line 218
    const/4 v6, 0x2

    .line 219
    const/4 v7, 0x1

    .line 220
    goto :goto_4

    .line 221
    :cond_7
    move-object/from16 v16, v8

    .line 222
    .line 223
    :goto_5
    move-object/from16 v6, v16

    .line 224
    .line 225
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 226
    .line 227
    if-nez v6, :cond_8

    .line 228
    .line 229
    return-object v8

    .line 230
    :cond_8
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 231
    .line 232
    .line 233
    move-result v7

    .line 234
    if-eqz v7, :cond_9

    .line 235
    .line 236
    return-object v8

    .line 237
    :cond_9
    invoke-static {v6}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    if-eqz v7, :cond_d

    .line 242
    .line 243
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    const/4 v14, 0x0

    .line 252
    :goto_6
    if-ge v14, v6, :cond_b

    .line 253
    .line 254
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    move-object v12, v7

    .line 259
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 260
    .line 261
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 262
    .line 263
    .line 264
    move-result v12

    .line 265
    if-eqz v12, :cond_a

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_a
    add-int/lit8 v14, v14, 0x1

    .line 269
    .line 270
    goto :goto_6

    .line 271
    :cond_b
    move-object v7, v8

    .line 272
    :goto_7
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 273
    .line 274
    if-nez v7, :cond_c

    .line 275
    .line 276
    return-object v8

    .line 277
    :cond_c
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 278
    .line 279
    .line 280
    move-result-wide v6

    .line 281
    iput-wide v6, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 282
    .line 283
    move v2, v3

    .line 284
    move-object v3, v5

    .line 285
    move-object v5, v9

    .line 286
    move-wide v9, v10

    .line 287
    const/4 v6, 0x2

    .line 288
    :goto_8
    const/4 v7, 0x1

    .line 289
    goto/16 :goto_2

    .line 290
    .line 291
    :cond_d
    invoke-static {v6}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChange(Landroidx/compose/ui/input/pointer/PointerInputChange;)J

    .line 292
    .line 293
    .line 294
    move-result-wide v12

    .line 295
    invoke-static {v10, v11, v12, v13}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    .line 296
    .line 297
    .line 298
    move-result-wide v10

    .line 299
    invoke-static {v10, v11}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    cmpl-float v7, v2, v3

    .line 304
    .line 305
    if-ltz v7, :cond_f

    .line 306
    .line 307
    invoke-static {v10, v11, v2}, Landroidx/compose/ui/geometry/Offset;->div-tuRUvjQ(JF)J

    .line 308
    .line 309
    .line 310
    move-result-wide v12

    .line 311
    invoke-static {v12, v13, v3}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(JF)J

    .line 312
    .line 313
    .line 314
    move-result-wide v12

    .line 315
    invoke-static {v10, v11, v12, v13}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 316
    .line 317
    .line 318
    move-result-wide v12

    .line 319
    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-interface {v1, v6, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-eqz v2, :cond_e

    .line 331
    .line 332
    const/4 v14, 0x1

    .line 333
    goto :goto_9

    .line 334
    :cond_e
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 335
    .line 336
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 337
    .line 338
    .line 339
    move-result-wide v10

    .line 340
    :cond_f
    const/4 v14, 0x0

    .line 341
    :goto_9
    if-eqz v14, :cond_10

    .line 342
    .line 343
    return-object v6

    .line 344
    :cond_10
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 345
    .line 346
    iput-object v0, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 347
    .line 348
    iput-object v1, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 349
    .line 350
    iput-object v9, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 351
    .line 352
    iput-object v6, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    .line 353
    .line 354
    iput-wide v10, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->J$0:J

    .line 355
    .line 356
    iput v3, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->F$0:F

    .line 357
    .line 358
    const/4 v7, 0x2

    .line 359
    iput v7, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->label:I

    .line 360
    .line 361
    invoke-interface {v0, v2, v5}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    if-ne v2, v4, :cond_11

    .line 366
    .line 367
    return-object v4

    .line 368
    :cond_11
    move v2, v3

    .line 369
    move-object v3, v5

    .line 370
    move-object v5, v9

    .line 371
    move-wide v9, v10

    .line 372
    move-object v11, v1

    .line 373
    move-object v1, v6

    .line 374
    :goto_a
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-eqz v1, :cond_12

    .line 379
    .line 380
    return-object v8

    .line 381
    :cond_12
    move v6, v7

    .line 382
    move-object v1, v11

    .line 383
    goto :goto_8
.end method

.method private static final awaitPointerSlopOrCancellation-pn7EDYM(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "JI",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Ljava/lang/Float;",
            ">;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    move-wide/from16 v4, p1

    .line 12
    .line 13
    invoke-static {v3, v4, v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    return-object v6

    .line 21
    :cond_0
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    move/from16 v7, p3

    .line 26
    .line 27
    invoke-static {v3, v7}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->pointerSlop-E8SPZFQ(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v7, 0x0

    .line 32
    :cond_1
    move v8, v7

    .line 33
    :cond_2
    :goto_0
    const/4 v9, 0x0

    .line 34
    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 35
    .line 36
    .line 37
    const/4 v10, 0x1

    .line 38
    invoke-static {v0, v6, v2, v10, v6}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v11

    .line 42
    invoke-static {v10}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 43
    .line 44
    .line 45
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 46
    .line 47
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v13

    .line 55
    move v14, v9

    .line 56
    :goto_1
    if-ge v14, v13, :cond_4

    .line 57
    .line 58
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v15

    .line 62
    move-object/from16 v16, v15

    .line 63
    .line 64
    check-cast v16, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 65
    .line 66
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 67
    .line 68
    .line 69
    move-result-wide v9

    .line 70
    invoke-static {v9, v10, v4, v5}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    if-eqz v9, :cond_3

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    add-int/lit8 v14, v14, 0x1

    .line 78
    .line 79
    const/4 v9, 0x0

    .line 80
    const/4 v10, 0x1

    .line 81
    goto :goto_1

    .line 82
    :cond_4
    move-object v15, v6

    .line 83
    :goto_2
    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 84
    .line 85
    if-eqz v15, :cond_b

    .line 86
    .line 87
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    if-eqz v9, :cond_5

    .line 92
    .line 93
    return-object v6

    .line 94
    :cond_5
    invoke-static {v15}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-eqz v9, :cond_9

    .line 99
    .line 100
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    const/4 v9, 0x0

    .line 109
    :goto_3
    if-ge v9, v5, :cond_7

    .line 110
    .line 111
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    move-object v11, v10

    .line 116
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 117
    .line 118
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    if-eqz v11, :cond_6

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_7
    move-object v10, v6

    .line 129
    :goto_4
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 130
    .line 131
    if-nez v10, :cond_8

    .line 132
    .line 133
    return-object v6

    .line 134
    :cond_8
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 135
    .line 136
    .line 137
    move-result-wide v4

    .line 138
    goto :goto_0

    .line 139
    :cond_9
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 140
    .line 141
    .line 142
    move-result-wide v9

    .line 143
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPosition-F1C5BW0()J

    .line 144
    .line 145
    .line 146
    move-result-wide v11

    .line 147
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    invoke-interface {v1, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    check-cast v9, Ljava/lang/Number;

    .line 156
    .line 157
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    invoke-interface {v1, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    check-cast v10, Ljava/lang/Number;

    .line 170
    .line 171
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    .line 172
    .line 173
    .line 174
    move-result v10

    .line 175
    sub-float/2addr v9, v10

    .line 176
    add-float/2addr v8, v9

    .line 177
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    cmpg-float v9, v9, v3

    .line 182
    .line 183
    if-gez v9, :cond_a

    .line 184
    .line 185
    sget-object v9, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 186
    .line 187
    const/4 v10, 0x0

    .line 188
    invoke-static {v10}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 189
    .line 190
    .line 191
    invoke-interface {v0, v9, v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    const/4 v9, 0x1

    .line 195
    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    if-eqz v9, :cond_2

    .line 203
    .line 204
    return-object v6

    .line 205
    :cond_a
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    mul-float/2addr v9, v3

    .line 210
    sub-float/2addr v8, v9

    .line 211
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    move-object/from16 v9, p4

    .line 216
    .line 217
    invoke-interface {v9, v15, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 221
    .line 222
    .line 223
    move-result v8

    .line 224
    if-eqz v8, :cond_1

    .line 225
    .line 226
    return-object v15

    .line 227
    :cond_b
    return-object v6
.end method

.method public static final awaitTouchSlopOrCancellation-jO51t88(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p0    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getTouch-T8wyACA()I

    .line 4
    .line 5
    .line 6
    move-result v4

    .line 7
    move-object v1, p0

    .line 8
    move-wide v2, p1

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->awaitPointerSlopOrCancellation-gDDlDlE(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final awaitVerticalDragOrCancellation-rnUCldI(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLrs/c;)Ljava/lang/Object;
    .locals 17
    .param p0    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "J",
            "Lrs/c<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-wide/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    instance-of v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalDragOrCancellation$1;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    move-object v3, v2

    .line 10
    check-cast v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalDragOrCancellation$1;

    .line 11
    .line 12
    iget v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalDragOrCancellation$1;->label:I

    .line 13
    .line 14
    const/high16 v5, -0x80000000

    .line 15
    .line 16
    and-int v6, v4, v5

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    sub-int/2addr v4, v5

    .line 21
    iput v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalDragOrCancellation$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalDragOrCancellation$1;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalDragOrCancellation$1;-><init>(Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v2, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalDragOrCancellation$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalDragOrCancellation$1;->label:I

    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    const/4 v7, 0x0

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    if-ne v5, v6, :cond_1

    .line 42
    .line 43
    iget-object v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalDragOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lkotlin/jvm/internal/Ref$LongRef;

    .line 46
    .line 47
    iget-object v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalDragOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 50
    .line 51
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move-object/from16 v16, v1

    .line 55
    .line 56
    move-object v1, v0

    .line 57
    move-object/from16 v0, v16

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_2
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v2, v0, v1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    return-object v7

    .line 82
    :cond_3
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    .line 83
    .line 84
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-wide v0, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 88
    .line 89
    move-object/from16 v0, p0

    .line 90
    .line 91
    :goto_1
    iput-object v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalDragOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 92
    .line 93
    iput-object v2, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalDragOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 94
    .line 95
    iput v6, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalDragOrCancellation$1;->label:I

    .line 96
    .line 97
    invoke-static {v0, v7, v3, v6, v7}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-ne v1, v4, :cond_4

    .line 102
    .line 103
    return-object v4

    .line 104
    :cond_4
    move-object/from16 v16, v2

    .line 105
    .line 106
    move-object v2, v1

    .line 107
    move-object/from16 v1, v16

    .line 108
    .line 109
    :goto_2
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 110
    .line 111
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    const/4 v9, 0x0

    .line 120
    move v10, v9

    .line 121
    :goto_3
    if-ge v10, v8, :cond_6

    .line 122
    .line 123
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    move-object v12, v11

    .line 128
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 129
    .line 130
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 131
    .line 132
    .line 133
    move-result-wide v12

    .line 134
    iget-wide v14, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 135
    .line 136
    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    if-eqz v12, :cond_5

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_6
    move-object v11, v7

    .line 147
    :goto_4
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 148
    .line 149
    if-nez v11, :cond_7

    .line 150
    .line 151
    move-object v11, v7

    .line 152
    goto :goto_7

    .line 153
    :cond_7
    invoke-static {v11}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-eqz v5, :cond_b

    .line 158
    .line 159
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    :goto_5
    if-ge v9, v5, :cond_9

    .line 168
    .line 169
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    move-object v10, v8

    .line 174
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 175
    .line 176
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    if-eqz v10, :cond_8

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_9
    move-object v8, v7

    .line 187
    :goto_6
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 188
    .line 189
    if-nez v8, :cond_a

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_a
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 193
    .line 194
    .line 195
    move-result-wide v8

    .line 196
    iput-wide v8, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 197
    .line 198
    goto :goto_8

    .line 199
    :cond_b
    invoke-static {v11}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChangeIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)J

    .line 200
    .line 201
    .line 202
    move-result-wide v12

    .line 203
    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    const/4 v5, 0x0

    .line 208
    cmpg-float v2, v2, v5

    .line 209
    .line 210
    if-nez v2, :cond_c

    .line 211
    .line 212
    move v9, v6

    .line 213
    :cond_c
    if-nez v9, :cond_e

    .line 214
    .line 215
    :goto_7
    if-eqz v11, :cond_d

    .line 216
    .line 217
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-nez v0, :cond_d

    .line 222
    .line 223
    move-object v7, v11

    .line 224
    :cond_d
    return-object v7

    .line 225
    :cond_e
    :goto_8
    move-object v2, v1

    .line 226
    goto/16 :goto_1
.end method

.method public static final awaitVerticalPointerSlopOrCancellation-gDDlDlE(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 20
    .param p0    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "JI",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-wide/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v2, p5

    .line 4
    .line 5
    instance-of v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    move-object v3, v2

    .line 10
    check-cast v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;

    .line 11
    .line 12
    iget v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->label:I

    .line 13
    .line 14
    const/high16 v5, -0x80000000

    .line 15
    .line 16
    and-int v6, v4, v5

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    sub-int/2addr v4, v5

    .line 21
    iput v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;-><init>(Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v2, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->label:I

    .line 36
    .line 37
    const/4 v7, 0x2

    .line 38
    const/4 v8, 0x1

    .line 39
    const/4 v9, 0x0

    .line 40
    if-eqz v5, :cond_3

    .line 41
    .line 42
    if-eq v5, v8, :cond_2

    .line 43
    .line 44
    if-ne v5, v7, :cond_1

    .line 45
    .line 46
    iget v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->F$1:F

    .line 47
    .line 48
    iget v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->F$0:F

    .line 49
    .line 50
    iget-object v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 53
    .line 54
    iget-object v10, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v10, Lkotlin/jvm/internal/Ref$LongRef;

    .line 57
    .line 58
    iget-object v11, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v11, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 61
    .line 62
    iget-object v12, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v12, Lkotlin/jvm/functions/Function2;

    .line 65
    .line 66
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    move v2, v0

    .line 70
    move-object v0, v11

    .line 71
    move-object v11, v10

    .line 72
    move-object v10, v3

    .line 73
    move v3, v1

    .line 74
    move-object v1, v12

    .line 75
    goto/16 :goto_9

    .line 76
    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :cond_2
    iget v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->F$1:F

    .line 86
    .line 87
    iget v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->F$0:F

    .line 88
    .line 89
    iget-object v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v5, Lkotlin/jvm/internal/Ref$LongRef;

    .line 92
    .line 93
    iget-object v10, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v10, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 96
    .line 97
    iget-object v11, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 100
    .line 101
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    move-object/from16 v18, v3

    .line 105
    .line 106
    move v3, v0

    .line 107
    move-object v0, v10

    .line 108
    move-object/from16 v10, v18

    .line 109
    .line 110
    move-object/from16 v19, v5

    .line 111
    .line 112
    move v5, v1

    .line 113
    move-object v1, v11

    .line 114
    move-object/from16 v11, v19

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-static {v2, v0, v1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_4

    .line 129
    .line 130
    goto/16 :goto_a

    .line 131
    .line 132
    :cond_4
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    move/from16 v5, p3

    .line 137
    .line 138
    invoke-static {v2, v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->pointerSlop-E8SPZFQ(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    new-instance v5, Lkotlin/jvm/internal/Ref$LongRef;

    .line 143
    .line 144
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-wide v0, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 148
    .line 149
    move-object/from16 v0, p0

    .line 150
    .line 151
    move-object/from16 v1, p4

    .line 152
    .line 153
    move-object v10, v5

    .line 154
    move-object v5, v3

    .line 155
    move v3, v2

    .line 156
    const/4 v2, 0x0

    .line 157
    :goto_1
    iput-object v1, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 158
    .line 159
    iput-object v0, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 160
    .line 161
    iput-object v10, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object v9, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    .line 164
    .line 165
    iput v3, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->F$0:F

    .line 166
    .line 167
    iput v2, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->F$1:F

    .line 168
    .line 169
    iput v8, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->label:I

    .line 170
    .line 171
    invoke-static {v0, v9, v5, v8, v9}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    if-ne v11, v4, :cond_5

    .line 176
    .line 177
    return-object v4

    .line 178
    :cond_5
    move/from16 v18, v3

    .line 179
    .line 180
    move v3, v2

    .line 181
    move-object v2, v11

    .line 182
    move-object v11, v10

    .line 183
    move-object v10, v5

    .line 184
    move/from16 v5, v18

    .line 185
    .line 186
    :goto_2
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 187
    .line 188
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 193
    .line 194
    .line 195
    move-result v13

    .line 196
    const/4 v14, 0x0

    .line 197
    move v15, v14

    .line 198
    :goto_3
    if-ge v15, v13, :cond_7

    .line 199
    .line 200
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v16

    .line 204
    move-object/from16 v17, v16

    .line 205
    .line 206
    check-cast v17, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 207
    .line 208
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 209
    .line 210
    .line 211
    move-result-wide v8

    .line 212
    iget-wide v6, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 213
    .line 214
    invoke-static {v8, v9, v6, v7}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    if-eqz v6, :cond_6

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_6
    add-int/lit8 v15, v15, 0x1

    .line 222
    .line 223
    const/4 v7, 0x2

    .line 224
    const/4 v8, 0x1

    .line 225
    const/4 v9, 0x0

    .line 226
    goto :goto_3

    .line 227
    :cond_7
    const/16 v16, 0x0

    .line 228
    .line 229
    :goto_4
    move-object/from16 v6, v16

    .line 230
    .line 231
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 232
    .line 233
    if-nez v6, :cond_8

    .line 234
    .line 235
    :goto_5
    const/4 v9, 0x0

    .line 236
    goto/16 :goto_a

    .line 237
    .line 238
    :cond_8
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 239
    .line 240
    .line 241
    move-result v7

    .line 242
    if-eqz v7, :cond_9

    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_9
    invoke-static {v6}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    if-eqz v7, :cond_d

    .line 250
    .line 251
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    :goto_6
    if-ge v14, v6, :cond_b

    .line 260
    .line 261
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    move-object v8, v7

    .line 266
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 267
    .line 268
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    if-eqz v8, :cond_a

    .line 273
    .line 274
    goto :goto_7

    .line 275
    :cond_a
    add-int/lit8 v14, v14, 0x1

    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_b
    const/4 v7, 0x0

    .line 279
    :goto_7
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 280
    .line 281
    if-nez v7, :cond_c

    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_c
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 285
    .line 286
    .line 287
    move-result-wide v6

    .line 288
    iput-wide v6, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 289
    .line 290
    move v2, v3

    .line 291
    move v3, v5

    .line 292
    move-object v5, v10

    .line 293
    move-object v10, v11

    .line 294
    const/4 v7, 0x2

    .line 295
    :goto_8
    const/4 v8, 0x1

    .line 296
    const/4 v9, 0x0

    .line 297
    goto/16 :goto_1

    .line 298
    .line 299
    :cond_d
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 300
    .line 301
    .line 302
    move-result-wide v7

    .line 303
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPosition-F1C5BW0()J

    .line 304
    .line 305
    .line 306
    move-result-wide v12

    .line 307
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    sub-float/2addr v2, v7

    .line 316
    add-float/2addr v2, v3

    .line 317
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    cmpg-float v3, v3, v5

    .line 322
    .line 323
    if-gez v3, :cond_10

    .line 324
    .line 325
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 326
    .line 327
    iput-object v1, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 328
    .line 329
    iput-object v0, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 330
    .line 331
    iput-object v11, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 332
    .line 333
    iput-object v6, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    .line 334
    .line 335
    iput v5, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->F$0:F

    .line 336
    .line 337
    iput v2, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->F$1:F

    .line 338
    .line 339
    const/4 v7, 0x2

    .line 340
    iput v7, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;->label:I

    .line 341
    .line 342
    invoke-interface {v0, v3, v10}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    if-ne v3, v4, :cond_e

    .line 347
    .line 348
    return-object v4

    .line 349
    :cond_e
    move v3, v5

    .line 350
    move-object v5, v6

    .line 351
    :goto_9
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 352
    .line 353
    .line 354
    move-result v5

    .line 355
    if-eqz v5, :cond_f

    .line 356
    .line 357
    goto :goto_5

    .line 358
    :cond_f
    move-object v5, v10

    .line 359
    move-object v10, v11

    .line 360
    goto :goto_8

    .line 361
    :cond_10
    const/4 v7, 0x2

    .line 362
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    mul-float/2addr v3, v5

    .line 367
    sub-float/2addr v2, v3

    .line 368
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->c(F)Ljava/lang/Float;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    invoke-interface {v1, v6, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    if-eqz v2, :cond_11

    .line 380
    .line 381
    move-object v9, v6

    .line 382
    :goto_a
    return-object v9

    .line 383
    :cond_11
    move v3, v5

    .line 384
    move-object v5, v10

    .line 385
    move-object v10, v11

    .line 386
    const/4 v2, 0x0

    .line 387
    goto :goto_8
.end method

.method public static final awaitVerticalTouchSlopOrCancellation-jO51t88(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 20
    .param p0    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-wide/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v2, p4

    .line 4
    .line 5
    instance-of v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    move-object v3, v2

    .line 10
    check-cast v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;

    .line 11
    .line 12
    iget v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->label:I

    .line 13
    .line 14
    const/high16 v5, -0x80000000

    .line 15
    .line 16
    and-int v6, v4, v5

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    sub-int/2addr v4, v5

    .line 21
    iput v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;-><init>(Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v2, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->label:I

    .line 36
    .line 37
    const/4 v7, 0x2

    .line 38
    const/4 v8, 0x1

    .line 39
    const/4 v9, 0x0

    .line 40
    if-eqz v5, :cond_3

    .line 41
    .line 42
    if-eq v5, v8, :cond_2

    .line 43
    .line 44
    if-ne v5, v7, :cond_1

    .line 45
    .line 46
    iget v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->F$1:F

    .line 47
    .line 48
    iget v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->F$0:F

    .line 49
    .line 50
    iget-object v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 53
    .line 54
    iget-object v10, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v10, Lkotlin/jvm/internal/Ref$LongRef;

    .line 57
    .line 58
    iget-object v11, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v11, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 61
    .line 62
    iget-object v12, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v12, Lkotlin/jvm/functions/Function2;

    .line 65
    .line 66
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    move v2, v0

    .line 70
    move-object v0, v11

    .line 71
    move-object v11, v10

    .line 72
    move-object v10, v3

    .line 73
    move v3, v1

    .line 74
    move-object v1, v12

    .line 75
    goto/16 :goto_9

    .line 76
    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :cond_2
    iget v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->F$1:F

    .line 86
    .line 87
    iget v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->F$0:F

    .line 88
    .line 89
    iget-object v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v5, Lkotlin/jvm/internal/Ref$LongRef;

    .line 92
    .line 93
    iget-object v10, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v10, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 96
    .line 97
    iget-object v11, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 100
    .line 101
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    move-object/from16 v18, v3

    .line 105
    .line 106
    move v3, v0

    .line 107
    move-object v0, v10

    .line 108
    move-object/from16 v10, v18

    .line 109
    .line 110
    move-object/from16 v19, v5

    .line 111
    .line 112
    move v5, v1

    .line 113
    move-object v1, v11

    .line 114
    move-object/from16 v11, v19

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    .line 121
    .line 122
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getTouch-T8wyACA()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-static {v5, v0, v1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_4

    .line 135
    .line 136
    goto/16 :goto_a

    .line 137
    .line 138
    :cond_4
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-static {v5, v2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->pointerSlop-E8SPZFQ(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    new-instance v5, Lkotlin/jvm/internal/Ref$LongRef;

    .line 147
    .line 148
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 149
    .line 150
    .line 151
    iput-wide v0, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 152
    .line 153
    move-object/from16 v0, p0

    .line 154
    .line 155
    move-object/from16 v1, p3

    .line 156
    .line 157
    move-object v10, v5

    .line 158
    move-object v5, v3

    .line 159
    move v3, v2

    .line 160
    const/4 v2, 0x0

    .line 161
    :goto_1
    iput-object v1, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object v0, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 164
    .line 165
    iput-object v10, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 166
    .line 167
    iput-object v9, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    .line 168
    .line 169
    iput v3, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->F$0:F

    .line 170
    .line 171
    iput v2, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->F$1:F

    .line 172
    .line 173
    iput v8, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->label:I

    .line 174
    .line 175
    invoke-static {v0, v9, v5, v8, v9}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    if-ne v11, v4, :cond_5

    .line 180
    .line 181
    return-object v4

    .line 182
    :cond_5
    move/from16 v18, v3

    .line 183
    .line 184
    move v3, v2

    .line 185
    move-object v2, v11

    .line 186
    move-object v11, v10

    .line 187
    move-object v10, v5

    .line 188
    move/from16 v5, v18

    .line 189
    .line 190
    :goto_2
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 191
    .line 192
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v12

    .line 196
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 197
    .line 198
    .line 199
    move-result v13

    .line 200
    const/4 v14, 0x0

    .line 201
    move v15, v14

    .line 202
    :goto_3
    if-ge v15, v13, :cond_7

    .line 203
    .line 204
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v16

    .line 208
    move-object/from16 v17, v16

    .line 209
    .line 210
    check-cast v17, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 211
    .line 212
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 213
    .line 214
    .line 215
    move-result-wide v8

    .line 216
    iget-wide v6, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 217
    .line 218
    invoke-static {v8, v9, v6, v7}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    if-eqz v6, :cond_6

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_6
    add-int/lit8 v15, v15, 0x1

    .line 226
    .line 227
    const/4 v7, 0x2

    .line 228
    const/4 v8, 0x1

    .line 229
    const/4 v9, 0x0

    .line 230
    goto :goto_3

    .line 231
    :cond_7
    const/16 v16, 0x0

    .line 232
    .line 233
    :goto_4
    move-object/from16 v6, v16

    .line 234
    .line 235
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 236
    .line 237
    if-nez v6, :cond_8

    .line 238
    .line 239
    :goto_5
    const/4 v9, 0x0

    .line 240
    goto/16 :goto_a

    .line 241
    .line 242
    :cond_8
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    if-eqz v7, :cond_9

    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_9
    invoke-static {v6}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    if-eqz v7, :cond_d

    .line 254
    .line 255
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    :goto_6
    if-ge v14, v6, :cond_b

    .line 264
    .line 265
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    move-object v8, v7

    .line 270
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 271
    .line 272
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 273
    .line 274
    .line 275
    move-result v8

    .line 276
    if-eqz v8, :cond_a

    .line 277
    .line 278
    goto :goto_7

    .line 279
    :cond_a
    add-int/lit8 v14, v14, 0x1

    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_b
    const/4 v7, 0x0

    .line 283
    :goto_7
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 284
    .line 285
    if-nez v7, :cond_c

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_c
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 289
    .line 290
    .line 291
    move-result-wide v6

    .line 292
    iput-wide v6, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 293
    .line 294
    move v2, v3

    .line 295
    move v3, v5

    .line 296
    move-object v5, v10

    .line 297
    move-object v10, v11

    .line 298
    const/4 v7, 0x2

    .line 299
    :goto_8
    const/4 v8, 0x1

    .line 300
    const/4 v9, 0x0

    .line 301
    goto/16 :goto_1

    .line 302
    .line 303
    :cond_d
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 304
    .line 305
    .line 306
    move-result-wide v7

    .line 307
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPosition-F1C5BW0()J

    .line 308
    .line 309
    .line 310
    move-result-wide v12

    .line 311
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 316
    .line 317
    .line 318
    move-result v7

    .line 319
    sub-float/2addr v2, v7

    .line 320
    add-float/2addr v2, v3

    .line 321
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    cmpg-float v3, v3, v5

    .line 326
    .line 327
    if-gez v3, :cond_10

    .line 328
    .line 329
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 330
    .line 331
    iput-object v1, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 332
    .line 333
    iput-object v0, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 334
    .line 335
    iput-object v11, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 336
    .line 337
    iput-object v6, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    .line 338
    .line 339
    iput v5, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->F$0:F

    .line 340
    .line 341
    iput v2, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->F$1:F

    .line 342
    .line 343
    const/4 v7, 0x2

    .line 344
    iput v7, v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;->label:I

    .line 345
    .line 346
    invoke-interface {v0, v3, v10}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    if-ne v3, v4, :cond_e

    .line 351
    .line 352
    return-object v4

    .line 353
    :cond_e
    move v3, v5

    .line 354
    move-object v5, v6

    .line 355
    :goto_9
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    if-eqz v5, :cond_f

    .line 360
    .line 361
    goto :goto_5

    .line 362
    :cond_f
    move-object v5, v10

    .line 363
    move-object v10, v11

    .line 364
    goto :goto_8

    .line 365
    :cond_10
    const/4 v7, 0x2

    .line 366
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    mul-float/2addr v3, v5

    .line 371
    sub-float/2addr v2, v3

    .line 372
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->c(F)Ljava/lang/Float;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-interface {v1, v6, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-eqz v2, :cond_11

    .line 384
    .line 385
    move-object v9, v6

    .line 386
    :goto_a
    return-object v9

    .line 387
    :cond_11
    move v3, v5

    .line 388
    move-object v5, v10

    .line 389
    move-object v10, v11

    .line 390
    const/4 v2, 0x0

    .line 391
    goto :goto_8
.end method

.method public static final detectDragGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p0    # Landroidx/compose/ui/input/pointer/PointerInputScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v6, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, v6

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p4

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v6, p5}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->forEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-ne p0, p1, :cond_0

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method public static synthetic detectDragGestures$default(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    sget-object p1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$2;->INSTANCE:Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$2;

    .line 6
    .line 7
    :cond_0
    move-object v1, p1

    .line 8
    and-int/lit8 p1, p6, 0x2

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    sget-object p2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$3;->INSTANCE:Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$3;

    .line 13
    .line 14
    :cond_1
    move-object v2, p2

    .line 15
    and-int/lit8 p1, p6, 0x4

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    sget-object p3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$4;->INSTANCE:Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$4;

    .line 20
    .line 21
    :cond_2
    move-object v3, p3

    .line 22
    move-object v0, p0

    .line 23
    move-object v4, p4

    .line 24
    move-object v5, p5

    .line 25
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->detectDragGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static final detectDragGesturesAfterLongPress(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p0    # Landroidx/compose/ui/input/pointer/PointerInputScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v6, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, v6

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p3

    .line 7
    move-object v3, p2

    .line 8
    move-object v4, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v6, p5}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->forEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-ne p0, p1, :cond_0

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method public static synthetic detectDragGesturesAfterLongPress$default(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    sget-object p1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$2;->INSTANCE:Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$2;

    .line 6
    .line 7
    :cond_0
    move-object v1, p1

    .line 8
    and-int/lit8 p1, p6, 0x2

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    sget-object p2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$3;->INSTANCE:Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$3;

    .line 13
    .line 14
    :cond_1
    move-object v2, p2

    .line 15
    and-int/lit8 p1, p6, 0x4

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    sget-object p3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$4;->INSTANCE:Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$4;

    .line 20
    .line 21
    :cond_2
    move-object v3, p3

    .line 22
    move-object v0, p0

    .line 23
    move-object v4, p4

    .line 24
    move-object v5, p5

    .line 25
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->detectDragGesturesAfterLongPress(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static final detectHorizontalDragGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p0    # Landroidx/compose/ui/input/pointer/PointerInputScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v6, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectHorizontalDragGestures$5;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, v6

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p4

    .line 7
    move-object v3, p2

    .line 8
    move-object v4, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectHorizontalDragGestures$5;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v6, p5}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->forEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-ne p0, p1, :cond_0

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method public static synthetic detectHorizontalDragGestures$default(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    sget-object p1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectHorizontalDragGestures$2;->INSTANCE:Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectHorizontalDragGestures$2;

    .line 6
    .line 7
    :cond_0
    move-object v1, p1

    .line 8
    and-int/lit8 p1, p6, 0x2

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    sget-object p2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectHorizontalDragGestures$3;->INSTANCE:Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectHorizontalDragGestures$3;

    .line 13
    .line 14
    :cond_1
    move-object v2, p2

    .line 15
    and-int/lit8 p1, p6, 0x4

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    sget-object p3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectHorizontalDragGestures$4;->INSTANCE:Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectHorizontalDragGestures$4;

    .line 20
    .line 21
    :cond_2
    move-object v3, p3

    .line 22
    move-object v0, p0

    .line 23
    move-object v4, p4

    .line 24
    move-object v5, p5

    .line 25
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->detectHorizontalDragGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static final detectVerticalDragGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p0    # Landroidx/compose/ui/input/pointer/PointerInputScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v6, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, v6

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p4

    .line 7
    move-object v3, p2

    .line 8
    move-object v4, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v6, p5}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->forEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-ne p0, p1, :cond_0

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method public static synthetic detectVerticalDragGestures$default(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    sget-object p1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$2;->INSTANCE:Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$2;

    .line 6
    .line 7
    :cond_0
    move-object v1, p1

    .line 8
    and-int/lit8 p1, p6, 0x2

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    sget-object p2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$3;->INSTANCE:Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$3;

    .line 13
    .line 14
    :cond_1
    move-object v2, p2

    .line 15
    and-int/lit8 p1, p6, 0x4

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    sget-object p3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$4;->INSTANCE:Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$4;

    .line 20
    .line 21
    :cond_2
    move-object v3, p3

    .line 22
    move-object v0, p0

    .line 23
    move-object v4, p4

    .line 24
    move-object v5, p5

    .line 25
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->detectVerticalDragGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method private static final drag-VnAYq1g(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-wide v1, p1

    .line 6
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x1

    .line 21
    move-object v5, p0

    .line 22
    move-object/from16 v6, p6

    .line 23
    .line 24
    invoke-static {p0, v3, v6, v4, v3}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 29
    .line 30
    .line 31
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 32
    .line 33
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    move v10, v0

    .line 42
    :goto_1
    if-ge v10, v9, :cond_2

    .line 43
    .line 44
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v11

    .line 48
    move-object v12, v11

    .line 49
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 50
    .line 51
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 52
    .line 53
    .line 54
    move-result-wide v12

    .line 55
    invoke-static {v12, v13, v1, v2}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 56
    .line 57
    .line 58
    move-result v12

    .line 59
    if-eqz v12, :cond_1

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move-object v11, v3

    .line 66
    :goto_2
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 67
    .line 68
    if-eqz v11, :cond_8

    .line 69
    .line 70
    invoke-static {v11}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-eqz v8, :cond_6

    .line 75
    .line 76
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    :goto_3
    if-ge v0, v2, :cond_4

    .line 85
    .line 86
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    move-object v7, v4

    .line 91
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 92
    .line 93
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-eqz v7, :cond_3

    .line 98
    .line 99
    move-object v3, v4

    .line 100
    goto :goto_4

    .line 101
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    :goto_4
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 105
    .line 106
    if-nez v3, :cond_5

    .line 107
    .line 108
    move-object/from16 v7, p4

    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_5
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 112
    .line 113
    .line 114
    move-result-wide v1

    .line 115
    goto :goto_0

    .line 116
    :cond_6
    move-object/from16 v7, p4

    .line 117
    .line 118
    invoke-interface {v7, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    check-cast v3, Ljava/lang/Number;

    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    const/4 v8, 0x0

    .line 129
    cmpg-float v3, v3, v8

    .line 130
    .line 131
    if-nez v3, :cond_7

    .line 132
    .line 133
    move v0, v4

    .line 134
    :cond_7
    if-nez v0, :cond_0

    .line 135
    .line 136
    :goto_5
    move-object v3, v11

    .line 137
    goto :goto_6

    .line 138
    :cond_8
    move-object/from16 v7, p4

    .line 139
    .line 140
    :goto_6
    if-eqz v3, :cond_b

    .line 141
    .line 142
    move-object/from16 v0, p5

    .line 143
    .line 144
    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Ljava/lang/Boolean;

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_9

    .line 155
    .line 156
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 157
    .line 158
    return-object v0

    .line 159
    :cond_9
    invoke-static {v3}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_a

    .line 164
    .line 165
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 166
    .line 167
    return-object v0

    .line 168
    :cond_a
    move-object/from16 v1, p3

    .line 169
    .line 170
    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 174
    .line 175
    .line 176
    move-result-wide v2

    .line 177
    move-wide v1, v2

    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 181
    .line 182
    return-object v0
.end method

.method public static final drag-jO51t88(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p0    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p4, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;

    .line 21
    .line 22
    invoke-direct {v0, p4}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->L$1:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 41
    .line 42
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 45
    .line 46
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    move-object p3, p0

    .line 50
    move-object p0, p1

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :goto_1
    iput-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    iput-object p3, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->L$1:Ljava/lang/Object;

    .line 66
    .line 67
    iput v3, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->label:I

    .line 68
    .line 69
    invoke-static {p0, p1, p2, v0}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->awaitDragOrCancellation-rnUCldI(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLrs/c;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    if-ne p4, v1, :cond_3

    .line 74
    .line 75
    return-object v1

    .line 76
    :cond_3
    :goto_2
    check-cast p4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 77
    .line 78
    if-nez p4, :cond_4

    .line 79
    .line 80
    const/4 p0, 0x0

    .line 81
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :cond_4
    invoke-static {p4}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_5

    .line 91
    .line 92
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :cond_5
    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 101
    .line 102
    .line 103
    move-result-wide p1

    .line 104
    goto :goto_1
.end method

.method public static final horizontalDrag-jO51t88(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 18
    .param p0    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;

    .line 9
    .line 10
    iget v2, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->label:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;-><init>(Lrs/c;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v3, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->label:I

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x1

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    if-ne v3, v6, :cond_1

    .line 41
    .line 42
    iget-object v3, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->L$3:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v3, Lkotlin/jvm/internal/Ref$LongRef;

    .line 45
    .line 46
    iget-object v7, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->L$2:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v7, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 49
    .line 50
    iget-object v8, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->L$1:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v8, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 53
    .line 54
    iget-object v9, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move-object/from16 v16, v3

    .line 62
    .line 63
    move-object v3, v1

    .line 64
    move-object v1, v9

    .line 65
    move-object/from16 v9, v16

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    move-wide/from16 v7, p1

    .line 84
    .line 85
    invoke-static {v0, v7, v8}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    goto/16 :goto_a

    .line 96
    .line 97
    :cond_3
    move-object/from16 v0, p0

    .line 98
    .line 99
    move-object v3, v1

    .line 100
    move-object/from16 v1, p3

    .line 101
    .line 102
    :goto_1
    new-instance v9, Lkotlin/jvm/internal/Ref$LongRef;

    .line 103
    .line 104
    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-wide v7, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 108
    .line 109
    move-object v7, v0

    .line 110
    :goto_2
    iput-object v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->L$0:Ljava/lang/Object;

    .line 111
    .line 112
    iput-object v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->L$1:Ljava/lang/Object;

    .line 113
    .line 114
    iput-object v7, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->L$2:Ljava/lang/Object;

    .line 115
    .line 116
    iput-object v9, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->L$3:Ljava/lang/Object;

    .line 117
    .line 118
    iput v6, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->label:I

    .line 119
    .line 120
    invoke-static {v7, v4, v3, v6, v4}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    if-ne v8, v2, :cond_4

    .line 125
    .line 126
    return-object v2

    .line 127
    :cond_4
    move-object/from16 v16, v8

    .line 128
    .line 129
    move-object v8, v0

    .line 130
    move-object/from16 v0, v16

    .line 131
    .line 132
    :goto_3
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 133
    .line 134
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    move v12, v5

    .line 143
    :goto_4
    if-ge v12, v11, :cond_6

    .line 144
    .line 145
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    move-object v14, v13

    .line 150
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 151
    .line 152
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 153
    .line 154
    .line 155
    move-result-wide v14

    .line 156
    move-object/from16 p0, v7

    .line 157
    .line 158
    iget-wide v6, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 159
    .line 160
    invoke-static {v14, v15, v6, v7}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-eqz v6, :cond_5

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 168
    .line 169
    move-object/from16 v7, p0

    .line 170
    .line 171
    const/4 v6, 0x1

    .line 172
    goto :goto_4

    .line 173
    :cond_6
    move-object/from16 p0, v7

    .line 174
    .line 175
    move-object v13, v4

    .line 176
    :goto_5
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 177
    .line 178
    if-nez v13, :cond_7

    .line 179
    .line 180
    move-object v13, v4

    .line 181
    goto :goto_9

    .line 182
    :cond_7
    invoke-static {v13}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    if-eqz v6, :cond_c

    .line 187
    .line 188
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    move v7, v5

    .line 197
    :goto_6
    if-ge v7, v6, :cond_9

    .line 198
    .line 199
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    move-object v11, v10

    .line 204
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 205
    .line 206
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    if-eqz v11, :cond_8

    .line 211
    .line 212
    goto :goto_7

    .line 213
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_9
    move-object v10, v4

    .line 217
    :goto_7
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 218
    .line 219
    if-nez v10, :cond_a

    .line 220
    .line 221
    goto :goto_9

    .line 222
    :cond_a
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 223
    .line 224
    .line 225
    move-result-wide v6

    .line 226
    iput-wide v6, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 227
    .line 228
    :cond_b
    const/4 v0, 0x1

    .line 229
    goto :goto_b

    .line 230
    :cond_c
    invoke-static {v13}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChangeIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)J

    .line 231
    .line 232
    .line 233
    move-result-wide v6

    .line 234
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    const/4 v6, 0x0

    .line 239
    cmpg-float v0, v0, v6

    .line 240
    .line 241
    if-nez v0, :cond_d

    .line 242
    .line 243
    const/4 v0, 0x1

    .line 244
    goto :goto_8

    .line 245
    :cond_d
    move v0, v5

    .line 246
    :goto_8
    if-nez v0, :cond_b

    .line 247
    .line 248
    :goto_9
    if-nez v13, :cond_e

    .line 249
    .line 250
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    goto :goto_a

    .line 255
    :cond_e
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_f

    .line 260
    .line 261
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    goto :goto_a

    .line 266
    :cond_f
    invoke-static {v13}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_10

    .line 271
    .line 272
    const/4 v0, 0x1

    .line 273
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    :goto_a
    return-object v0

    .line 278
    :cond_10
    const/4 v0, 0x1

    .line 279
    invoke-interface {v1, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 283
    .line 284
    .line 285
    move-result-wide v6

    .line 286
    move-wide/from16 v16, v6

    .line 287
    .line 288
    move v6, v0

    .line 289
    move-object v0, v8

    .line 290
    move-wide/from16 v7, v16

    .line 291
    .line 292
    goto/16 :goto_1

    .line 293
    .line 294
    :goto_b
    move-object/from16 v7, p0

    .line 295
    .line 296
    move v6, v0

    .line 297
    move-object v0, v8

    .line 298
    goto/16 :goto_2
.end method

.method private static final isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    move-object v4, v3

    .line 18
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 19
    .line 20
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    invoke-static {v4, v5, p1, p2}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v3, 0x0

    .line 35
    :goto_1
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-ne p1, p0, :cond_2

    .line 45
    .line 46
    move v1, p0

    .line 47
    :cond_2
    xor-int/2addr p0, v1

    .line 48
    return p0
.end method

.method public static final pointerSlop-E8SPZFQ(Landroidx/compose/ui/platform/ViewConfiguration;I)F
    .locals 1
    .param p0    # Landroidx/compose/ui/platform/ViewConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$pointerSlop"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getMouse-T8wyACA()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {p1, v0}, Landroidx/compose/ui/input/pointer/PointerType;->equals-impl0(II)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-interface {p0}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    sget p1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->mouseToTouchSlopRatio:F

    .line 23
    .line 24
    mul-float/2addr p0, p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {p0}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    :goto_0
    return p0
.end method

.method public static final verticalDrag-jO51t88(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 18
    .param p0    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$verticalDrag$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$verticalDrag$1;

    .line 9
    .line 10
    iget v2, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$verticalDrag$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$verticalDrag$1;->label:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$verticalDrag$1;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$verticalDrag$1;-><init>(Lrs/c;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$verticalDrag$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v3, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$verticalDrag$1;->label:I

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x1

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    if-ne v3, v6, :cond_1

    .line 41
    .line 42
    iget-object v3, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$verticalDrag$1;->L$3:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v3, Lkotlin/jvm/internal/Ref$LongRef;

    .line 45
    .line 46
    iget-object v7, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$verticalDrag$1;->L$2:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v7, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 49
    .line 50
    iget-object v8, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$verticalDrag$1;->L$1:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v8, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 53
    .line 54
    iget-object v9, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$verticalDrag$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move-object/from16 v16, v3

    .line 62
    .line 63
    move-object v3, v1

    .line 64
    move-object v1, v9

    .line 65
    move-object/from16 v9, v16

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    move-wide/from16 v7, p1

    .line 84
    .line 85
    invoke-static {v0, v7, v8}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    goto/16 :goto_a

    .line 96
    .line 97
    :cond_3
    move-object/from16 v0, p0

    .line 98
    .line 99
    move-object v3, v1

    .line 100
    move-object/from16 v1, p3

    .line 101
    .line 102
    :goto_1
    new-instance v9, Lkotlin/jvm/internal/Ref$LongRef;

    .line 103
    .line 104
    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-wide v7, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 108
    .line 109
    move-object v7, v0

    .line 110
    :goto_2
    iput-object v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$verticalDrag$1;->L$0:Ljava/lang/Object;

    .line 111
    .line 112
    iput-object v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$verticalDrag$1;->L$1:Ljava/lang/Object;

    .line 113
    .line 114
    iput-object v7, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$verticalDrag$1;->L$2:Ljava/lang/Object;

    .line 115
    .line 116
    iput-object v9, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$verticalDrag$1;->L$3:Ljava/lang/Object;

    .line 117
    .line 118
    iput v6, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$verticalDrag$1;->label:I

    .line 119
    .line 120
    invoke-static {v7, v4, v3, v6, v4}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    if-ne v8, v2, :cond_4

    .line 125
    .line 126
    return-object v2

    .line 127
    :cond_4
    move-object/from16 v16, v8

    .line 128
    .line 129
    move-object v8, v0

    .line 130
    move-object/from16 v0, v16

    .line 131
    .line 132
    :goto_3
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 133
    .line 134
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    move v12, v5

    .line 143
    :goto_4
    if-ge v12, v11, :cond_6

    .line 144
    .line 145
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    move-object v14, v13

    .line 150
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 151
    .line 152
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 153
    .line 154
    .line 155
    move-result-wide v14

    .line 156
    move-object/from16 p0, v7

    .line 157
    .line 158
    iget-wide v6, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 159
    .line 160
    invoke-static {v14, v15, v6, v7}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-eqz v6, :cond_5

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 168
    .line 169
    move-object/from16 v7, p0

    .line 170
    .line 171
    const/4 v6, 0x1

    .line 172
    goto :goto_4

    .line 173
    :cond_6
    move-object/from16 p0, v7

    .line 174
    .line 175
    move-object v13, v4

    .line 176
    :goto_5
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 177
    .line 178
    if-nez v13, :cond_7

    .line 179
    .line 180
    move-object v13, v4

    .line 181
    goto :goto_9

    .line 182
    :cond_7
    invoke-static {v13}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    if-eqz v6, :cond_c

    .line 187
    .line 188
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    move v7, v5

    .line 197
    :goto_6
    if-ge v7, v6, :cond_9

    .line 198
    .line 199
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    move-object v11, v10

    .line 204
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 205
    .line 206
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    if-eqz v11, :cond_8

    .line 211
    .line 212
    goto :goto_7

    .line 213
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_9
    move-object v10, v4

    .line 217
    :goto_7
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 218
    .line 219
    if-nez v10, :cond_a

    .line 220
    .line 221
    goto :goto_9

    .line 222
    :cond_a
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 223
    .line 224
    .line 225
    move-result-wide v6

    .line 226
    iput-wide v6, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 227
    .line 228
    :cond_b
    const/4 v0, 0x1

    .line 229
    goto :goto_b

    .line 230
    :cond_c
    invoke-static {v13}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChangeIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)J

    .line 231
    .line 232
    .line 233
    move-result-wide v6

    .line 234
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    const/4 v6, 0x0

    .line 239
    cmpg-float v0, v0, v6

    .line 240
    .line 241
    if-nez v0, :cond_d

    .line 242
    .line 243
    const/4 v0, 0x1

    .line 244
    goto :goto_8

    .line 245
    :cond_d
    move v0, v5

    .line 246
    :goto_8
    if-nez v0, :cond_b

    .line 247
    .line 248
    :goto_9
    if-nez v13, :cond_e

    .line 249
    .line 250
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    goto :goto_a

    .line 255
    :cond_e
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_f

    .line 260
    .line 261
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    goto :goto_a

    .line 266
    :cond_f
    invoke-static {v13}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_10

    .line 271
    .line 272
    const/4 v0, 0x1

    .line 273
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    :goto_a
    return-object v0

    .line 278
    :cond_10
    const/4 v0, 0x1

    .line 279
    invoke-interface {v1, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 283
    .line 284
    .line 285
    move-result-wide v6

    .line 286
    move-wide/from16 v16, v6

    .line 287
    .line 288
    move v6, v0

    .line 289
    move-object v0, v8

    .line 290
    move-wide/from16 v7, v16

    .line 291
    .line 292
    goto/16 :goto_1

    .line 293
    .line 294
    :goto_b
    move-object/from16 v7, p0

    .line 295
    .line 296
    move v6, v0

    .line 297
    move-object v0, v8

    .line 298
    goto/16 :goto_2
.end method
