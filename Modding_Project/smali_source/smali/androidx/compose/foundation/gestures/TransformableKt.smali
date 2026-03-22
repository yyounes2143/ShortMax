.class public final Landroidx/compose/foundation/gestures/TransformableKt;
.super Ljava/lang/Object;
.source "Transformable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final synthetic access$awaitTwoDowns(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformableKt;->awaitTwoDowns(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$detectZoom(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/TransformableKt;->detectZoom(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final awaitTwoDowns(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLrs/c;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Z",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;

    .line 9
    .line 10
    iget v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;->label:I

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
    iput v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;->label:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;-><init>(Lrs/c;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, v1, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v3, v1, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;->label:I

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x1

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    if-ne v3, v5, :cond_1

    .line 40
    .line 41
    iget-boolean v3, v1, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;->Z$0:Z

    .line 42
    .line 43
    iget-object v6, v1, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;->L$1:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 46
    .line 47
    iget-object v7, v1, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v7, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move/from16 v16, v3

    .line 55
    .line 56
    move-object v3, v1

    .line 57
    move/from16 v1, v16

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
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 72
    .line 73
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 74
    .line 75
    .line 76
    move-object v6, v0

    .line 77
    move-object v3, v1

    .line 78
    move-object/from16 v0, p0

    .line 79
    .line 80
    move/from16 v1, p1

    .line 81
    .line 82
    :goto_1
    iput-object v0, v3, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    iput-object v6, v3, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;->L$1:Ljava/lang/Object;

    .line 85
    .line 86
    iput-boolean v1, v3, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;->Z$0:Z

    .line 87
    .line 88
    iput v5, v3, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;->label:I

    .line 89
    .line 90
    invoke-static {v0, v4, v3, v5, v4}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    if-ne v7, v2, :cond_3

    .line 95
    .line 96
    return-object v2

    .line 97
    :cond_3
    move-object/from16 v16, v7

    .line 98
    .line 99
    move-object v7, v0

    .line 100
    move-object/from16 v0, v16

    .line 101
    .line 102
    :goto_2
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 103
    .line 104
    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    .line 105
    .line 106
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 107
    .line 108
    .line 109
    iget-object v9, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 110
    .line 111
    if-eqz v9, :cond_4

    .line 112
    .line 113
    move v9, v5

    .line 114
    goto :goto_3

    .line 115
    :cond_4
    const/4 v9, 0x0

    .line 116
    :goto_3
    iput v9, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 117
    .line 118
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    const/4 v11, 0x0

    .line 127
    :goto_4
    if-ge v11, v9, :cond_b

    .line 128
    .line 129
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 134
    .line 135
    if-eqz v1, :cond_5

    .line 136
    .line 137
    invoke-static {v12}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToDown(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 138
    .line 139
    .line 140
    move-result v13

    .line 141
    goto :goto_5

    .line 142
    :cond_5
    invoke-static {v12}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 143
    .line 144
    .line 145
    move-result v13

    .line 146
    :goto_5
    if-eqz v1, :cond_6

    .line 147
    .line 148
    invoke-static {v12}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUp(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 149
    .line 150
    .line 151
    move-result v14

    .line 152
    goto :goto_6

    .line 153
    :cond_6
    invoke-static {v12}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 154
    .line 155
    .line 156
    move-result v14

    .line 157
    :goto_6
    if-eqz v14, :cond_9

    .line 158
    .line 159
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 160
    .line 161
    .line 162
    move-result-wide v14

    .line 163
    iget-object v10, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 164
    .line 165
    if-nez v10, :cond_7

    .line 166
    .line 167
    const/4 v4, 0x0

    .line 168
    goto :goto_7

    .line 169
    :cond_7
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerId;

    .line 170
    .line 171
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerId;->unbox-impl()J

    .line 172
    .line 173
    .line 174
    move-result-wide v4

    .line 175
    invoke-static {v4, v5, v14, v15}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    :goto_7
    if-eqz v4, :cond_8

    .line 180
    .line 181
    const/4 v4, 0x0

    .line 182
    iput-object v4, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 183
    .line 184
    iget v5, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 185
    .line 186
    const/4 v10, 0x1

    .line 187
    sub-int/2addr v5, v10

    .line 188
    iput v5, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 189
    .line 190
    goto :goto_8

    .line 191
    :cond_8
    const/4 v4, 0x0

    .line 192
    const/4 v10, 0x1

    .line 193
    goto :goto_8

    .line 194
    :cond_9
    move v10, v5

    .line 195
    :goto_8
    if-eqz v13, :cond_a

    .line 196
    .line 197
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 198
    .line 199
    .line 200
    move-result-wide v12

    .line 201
    invoke-static {v12, v13}, Landroidx/compose/ui/input/pointer/PointerId;->box-impl(J)Landroidx/compose/ui/input/pointer/PointerId;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    iput-object v5, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 206
    .line 207
    iget v5, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 208
    .line 209
    add-int/2addr v5, v10

    .line 210
    iput v5, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 211
    .line 212
    :cond_a
    add-int/lit8 v11, v11, 0x1

    .line 213
    .line 214
    move v5, v10

    .line 215
    goto :goto_4

    .line 216
    :cond_b
    move v10, v5

    .line 217
    iget v0, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 218
    .line 219
    if-le v0, v10, :cond_c

    .line 220
    .line 221
    move v0, v10

    .line 222
    goto :goto_9

    .line 223
    :cond_c
    const/4 v0, 0x0

    .line 224
    :goto_9
    if-eqz v0, :cond_d

    .line 225
    .line 226
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 227
    .line 228
    return-object v0

    .line 229
    :cond_d
    move-object v0, v7

    .line 230
    move v5, v10

    .line 231
    goto/16 :goto_1
.end method

.method static synthetic awaitTwoDowns$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p4, 0x1

    .line 2
    and-int/2addr p3, p4

    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    move p1, p4

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformableKt;->awaitTwoDowns(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLrs/c;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static final detectZoom(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lrs/c;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Landroidx/compose/foundation/gestures/TransformableState;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    instance-of v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;

    .line 11
    .line 12
    iget v3, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;-><init>(Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    const/4 v6, 0x1

    .line 39
    const/4 v7, 0x0

    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    if-eq v4, v6, :cond_2

    .line 43
    .line 44
    if-ne v4, v5, :cond_1

    .line 45
    .line 46
    :try_start_0
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_2
    iget v0, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$0:F

    .line 60
    .line 61
    iget-object v4, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$7:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 64
    .line 65
    iget-object v6, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$6:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 68
    .line 69
    iget-object v8, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$5:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v8, Lkotlin/jvm/internal/Ref$LongRef;

    .line 72
    .line 73
    iget-object v9, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$4:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v9, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 76
    .line 77
    iget-object v10, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$3:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v10, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 80
    .line 81
    iget-object v11, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$2:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v11, Landroidx/compose/runtime/State;

    .line 84
    .line 85
    iget-object v12, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$1:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v12, Landroidx/compose/runtime/State;

    .line 88
    .line 89
    iget-object v13, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$0:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 92
    .line 93
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    move/from16 v18, v0

    .line 97
    .line 98
    move-object/from16 v19, v4

    .line 99
    .line 100
    move-object v1, v6

    .line 101
    move-object/from16 v17, v8

    .line 102
    .line 103
    move-object v15, v9

    .line 104
    move-object/from16 v16, v10

    .line 105
    .line 106
    move-object v14, v11

    .line 107
    move-object/from16 v20, v12

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    new-instance v10, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 114
    .line 115
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 116
    .line 117
    .line 118
    new-instance v9, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 119
    .line 120
    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 121
    .line 122
    .line 123
    const/high16 v1, 0x3f800000    # 1.0f

    .line 124
    .line 125
    iput v1, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 126
    .line 127
    new-instance v8, Lkotlin/jvm/internal/Ref$LongRef;

    .line 128
    .line 129
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 130
    .line 131
    .line 132
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 133
    .line 134
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 135
    .line 136
    .line 137
    move-result-wide v11

    .line 138
    iput-wide v11, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 139
    .line 140
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 141
    .line 142
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-interface {v4}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    new-instance v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 154
    .line 155
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 156
    .line 157
    .line 158
    new-instance v12, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$2;

    .line 159
    .line 160
    invoke-direct {v12, v7}, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$2;-><init>(Lrs/c;)V

    .line 161
    .line 162
    .line 163
    iput-object v0, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$0:Ljava/lang/Object;

    .line 164
    .line 165
    move-object/from16 v13, p1

    .line 166
    .line 167
    iput-object v13, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$1:Ljava/lang/Object;

    .line 168
    .line 169
    move-object/from16 v14, p2

    .line 170
    .line 171
    iput-object v14, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$2:Ljava/lang/Object;

    .line 172
    .line 173
    iput-object v10, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$3:Ljava/lang/Object;

    .line 174
    .line 175
    iput-object v9, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$4:Ljava/lang/Object;

    .line 176
    .line 177
    iput-object v8, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$5:Ljava/lang/Object;

    .line 178
    .line 179
    iput-object v1, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$6:Ljava/lang/Object;

    .line 180
    .line 181
    iput-object v11, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$7:Ljava/lang/Object;

    .line 182
    .line 183
    iput v4, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$0:F

    .line 184
    .line 185
    iput v6, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    .line 186
    .line 187
    invoke-interface {v0, v12, v2}, Landroidx/compose/ui/input/pointer/PointerInputScope;->awaitPointerEventScope(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    if-ne v6, v3, :cond_4

    .line 192
    .line 193
    return-object v3

    .line 194
    :cond_4
    move/from16 v18, v4

    .line 195
    .line 196
    move-object/from16 v17, v8

    .line 197
    .line 198
    move-object v15, v9

    .line 199
    move-object/from16 v16, v10

    .line 200
    .line 201
    move-object/from16 v19, v11

    .line 202
    .line 203
    move-object/from16 v20, v13

    .line 204
    .line 205
    move-object v13, v0

    .line 206
    :goto_1
    :try_start_1
    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    check-cast v0, Landroidx/compose/foundation/gestures/TransformableState;

    .line 211
    .line 212
    sget-object v4, Landroidx/compose/foundation/MutatePriority;->UserInput:Landroidx/compose/foundation/MutatePriority;

    .line 213
    .line 214
    new-instance v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3;

    .line 215
    .line 216
    const/16 v21, 0x0

    .line 217
    .line 218
    move-object v12, v6

    .line 219
    move-object v14, v1

    .line 220
    invoke-direct/range {v12 .. v21}, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$LongRef;FLkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/runtime/State;Lrs/c;)V

    .line 221
    .line 222
    .line 223
    iput-object v7, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$0:Ljava/lang/Object;

    .line 224
    .line 225
    iput-object v7, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$1:Ljava/lang/Object;

    .line 226
    .line 227
    iput-object v7, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$2:Ljava/lang/Object;

    .line 228
    .line 229
    iput-object v7, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$3:Ljava/lang/Object;

    .line 230
    .line 231
    iput-object v7, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$4:Ljava/lang/Object;

    .line 232
    .line 233
    iput-object v7, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$5:Ljava/lang/Object;

    .line 234
    .line 235
    iput-object v7, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$6:Ljava/lang/Object;

    .line 236
    .line 237
    iput-object v7, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$7:Ljava/lang/Object;

    .line 238
    .line 239
    iput v5, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    .line 240
    .line 241
    invoke-interface {v0, v4, v6, v2}, Landroidx/compose/foundation/gestures/TransformableState;->transform(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    if-ne v0, v3, :cond_5

    .line 246
    .line 247
    return-object v3

    .line 248
    :catch_0
    :cond_5
    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 249
    .line 250
    return-object v0
.end method

.method public static final transformable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/TransformableState;ZZ)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/gestures/TransformableState;
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
    const-string v0, "state"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$$inlined$debugInspectorInfo$1;

    .line 18
    .line 19
    invoke-direct {v0, p1, p3, p2}, Landroidx/compose/foundation/gestures/TransformableKt$transformable$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/foundation/gestures/TransformableState;ZZ)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    new-instance v1, Landroidx/compose/foundation/gestures/TransformableKt$transformable$2;

    .line 28
    .line 29
    invoke-direct {v1, p1, p2, p3}, Landroidx/compose/foundation/gestures/TransformableKt$transformable$2;-><init>(Landroidx/compose/foundation/gestures/TransformableState;ZZ)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lat/n;)Landroidx/compose/ui/Modifier;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static synthetic transformable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/TransformableState;ZZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    const/4 p3, 0x1

    .line 11
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/TransformableKt;->transformable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/TransformableState;ZZ)Landroidx/compose/ui/Modifier;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
