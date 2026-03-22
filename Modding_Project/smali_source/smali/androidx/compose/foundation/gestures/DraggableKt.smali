.class public final Landroidx/compose/foundation/gestures/DraggableKt;
.super Ljava/lang/Object;
.source "Draggable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final DraggableState(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/DraggableState;
    .locals 1
    .param p0    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/foundation/gestures/DraggableState;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "onDelta"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/foundation/gestures/DefaultDraggableState;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroidx/compose/foundation/gestures/DefaultDraggableState;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static final synthetic access$awaitDownAndSlop(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/Orientation;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/gestures/DraggableKt;->awaitDownAndSlop(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/Orientation;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$awaitDrag(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/Pair;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/h;ZLandroidx/compose/foundation/gestures/Orientation;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/foundation/gestures/DraggableKt;->awaitDrag(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/Pair;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/h;ZLandroidx/compose/foundation/gestures/Orientation;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$toFloat-3MmeM6k(JLandroidx/compose/foundation/gestures/Orientation;)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt;->toFloat-3MmeM6k(JLandroidx/compose/foundation/gestures/Orientation;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$toFloat-sF-c-tU(JLandroidx/compose/foundation/gestures/Orientation;)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt;->toFloat-sF-c-tU(JLandroidx/compose/foundation/gestures/Orientation;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final awaitDownAndSlop(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/Orientation;Lrs/c;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Landroidx/compose/ui/input/pointer/util/VelocityTracker;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Lrs/c<",
            "-",
            "Lkotlin/Pair<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Float;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

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
    iput v1, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object p5, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;

    .line 22
    .line 23
    invoke-direct {v0, p5}, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;-><init>(Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object v0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget v2, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x4

    .line 37
    const/4 v5, 0x3

    .line 38
    const/4 v6, 0x2

    .line 39
    const/4 v7, 0x1

    .line 40
    const/4 v8, 0x0

    .line 41
    if-eqz v2, :cond_5

    .line 42
    .line 43
    if-eq v2, v7, :cond_4

    .line 44
    .line 45
    if-eq v2, v6, :cond_3

    .line 46
    .line 47
    if-eq v2, v5, :cond_2

    .line 48
    .line 49
    if-ne v2, v4, :cond_1

    .line 50
    .line 51
    iget-object p0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_5

    .line 59
    .line 60
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_2
    iget-object p0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p0, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 71
    .line 72
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_3
    iget-object p0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p0, Landroidx/compose/foundation/gestures/Orientation;

    .line 80
    .line 81
    iget-object p1, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p1, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 84
    .line 85
    iget-object p2, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 88
    .line 89
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :cond_4
    iget-object p0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$4:Ljava/lang/Object;

    .line 95
    .line 96
    move-object p4, p0

    .line 97
    check-cast p4, Landroidx/compose/foundation/gestures/Orientation;

    .line 98
    .line 99
    iget-object p0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$3:Ljava/lang/Object;

    .line 100
    .line 101
    move-object p3, p0

    .line 102
    check-cast p3, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 103
    .line 104
    iget-object p0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    .line 105
    .line 106
    move-object p2, p0

    .line 107
    check-cast p2, Landroidx/compose/runtime/State;

    .line 108
    .line 109
    iget-object p0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    .line 110
    .line 111
    move-object p1, p0

    .line 112
    check-cast p1, Landroidx/compose/runtime/State;

    .line 113
    .line 114
    iget-object p0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p0, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 117
    .line 118
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 126
    .line 127
    iput-object p0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    .line 128
    .line 129
    iput-object p1, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    .line 130
    .line 131
    iput-object p2, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    .line 132
    .line 133
    iput-object p3, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$3:Ljava/lang/Object;

    .line 134
    .line 135
    iput-object p4, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$4:Ljava/lang/Object;

    .line 136
    .line 137
    iput v7, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    .line 138
    .line 139
    invoke-static {p0, v0, v3, p5}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDownOnPass(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;ZLrs/c;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-ne v0, v1, :cond_6

    .line 144
    .line 145
    return-object v1

    .line 146
    :cond_6
    :goto_2
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 147
    .line 148
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 153
    .line 154
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Ljava/lang/Boolean;

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-nez p1, :cond_7

    .line 165
    .line 166
    goto/16 :goto_7

    .line 167
    .line 168
    :cond_7
    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 173
    .line 174
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Ljava/lang/Boolean;

    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-eqz p1, :cond_8

    .line 185
    .line 186
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 187
    .line 188
    .line 189
    invoke-static {p3, v0}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->addPointerInputChange(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 190
    .line 191
    .line 192
    const/4 p0, 0x0

    .line 193
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/a;->c(F)Ljava/lang/Float;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-static {v0, p0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    goto/16 :goto_7

    .line 202
    .line 203
    :cond_8
    iput-object p0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    .line 204
    .line 205
    iput-object p3, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    .line 206
    .line 207
    iput-object p4, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    .line 208
    .line 209
    iput-object v8, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$3:Ljava/lang/Object;

    .line 210
    .line 211
    iput-object v8, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$4:Ljava/lang/Object;

    .line 212
    .line 213
    iput v6, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    .line 214
    .line 215
    invoke-static {p0, v3, p5}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLrs/c;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    if-ne v0, v1, :cond_9

    .line 220
    .line 221
    return-object v1

    .line 222
    :cond_9
    move-object p2, p0

    .line 223
    move-object p1, p3

    .line 224
    move-object p0, p4

    .line 225
    :goto_3
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 226
    .line 227
    invoke-static {p1, v0}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->addPointerInputChange(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 228
    .line 229
    .line 230
    new-instance v2, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 231
    .line 232
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 233
    .line 234
    .line 235
    new-instance p4, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$postPointerSlop$1;

    .line 236
    .line 237
    invoke-direct {p4, p1, v2}, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$postPointerSlop$1;-><init>(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlin/jvm/internal/Ref$FloatRef;)V

    .line 238
    .line 239
    .line 240
    sget-object p1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 241
    .line 242
    if-ne p0, p1, :cond_b

    .line 243
    .line 244
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 245
    .line 246
    .line 247
    move-result-wide v3

    .line 248
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    .line 249
    .line 250
    .line 251
    move-result p3

    .line 252
    iput-object v2, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    .line 253
    .line 254
    iput-object v8, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    .line 255
    .line 256
    iput-object v8, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    .line 257
    .line 258
    iput v5, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    .line 259
    .line 260
    move-object p0, p2

    .line 261
    move-wide p1, v3

    .line 262
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->awaitVerticalPointerSlopOrCancellation-gDDlDlE(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    if-ne v0, v1, :cond_a

    .line 267
    .line 268
    return-object v1

    .line 269
    :cond_a
    move-object p0, v2

    .line 270
    :goto_4
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 271
    .line 272
    goto :goto_6

    .line 273
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 274
    .line 275
    .line 276
    move-result-wide v5

    .line 277
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    .line 278
    .line 279
    .line 280
    move-result p3

    .line 281
    iput-object v2, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    .line 282
    .line 283
    iput-object v8, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    .line 284
    .line 285
    iput-object v8, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    .line 286
    .line 287
    iput v4, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    .line 288
    .line 289
    move-object p0, p2

    .line 290
    move-wide p1, v5

    .line 291
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->awaitHorizontalPointerSlopOrCancellation-gDDlDlE(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    if-ne v0, v1, :cond_c

    .line 296
    .line 297
    return-object v1

    .line 298
    :cond_c
    move-object p0, v2

    .line 299
    :goto_5
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 300
    .line 301
    :goto_6
    if-eqz v0, :cond_d

    .line 302
    .line 303
    iget p0, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 304
    .line 305
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/a;->c(F)Ljava/lang/Float;

    .line 306
    .line 307
    .line 308
    move-result-object p0

    .line 309
    invoke-static {v0, p0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 310
    .line 311
    .line 312
    move-result-object v8

    .line 313
    :cond_d
    :goto_7
    return-object v8
.end method

.method private static final awaitDrag(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/Pair;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/h;ZLandroidx/compose/foundation/gestures/Orientation;Lrs/c;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Lkotlin/Pair<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/ui/input/pointer/util/VelocityTracker;",
            "Lkotlinx/coroutines/channels/h<",
            "-",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;Z",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 16
    .line 17
    invoke-static {v0, p5}, Landroidx/compose/foundation/gestures/DraggableKt;->toOffset(FLandroidx/compose/foundation/gestures/Orientation;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    invoke-static {v5, v6, p5}, Landroidx/compose/foundation/gestures/DraggableKt;->toFloat-3MmeM6k(JLandroidx/compose/foundation/gestures/Orientation;)F

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-static {v1, v2, v5}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(JF)J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    invoke-static {v3, v4, v1, v2}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    new-instance v3, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-direct {v3, v1, v2, v4}, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p3, v3}, Lkotlinx/coroutines/channels/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    new-instance v3, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    .line 55
    .line 56
    if-eqz p4, :cond_0

    .line 57
    .line 58
    const/4 v5, -0x1

    .line 59
    int-to-float v5, v5

    .line 60
    mul-float/2addr v0, v5

    .line 61
    :cond_0
    invoke-direct {v3, v0, v1, v2, v4}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;-><init>(FJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p3, v3}, Lkotlinx/coroutines/channels/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;

    .line 68
    .line 69
    invoke-direct {v0, p2, p5, p3, p4}, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;-><init>(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/Orientation;Lkotlinx/coroutines/channels/h;Z)V

    .line 70
    .line 71
    .line 72
    sget-object p2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 73
    .line 74
    if-ne p5, p2, :cond_1

    .line 75
    .line 76
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 77
    .line 78
    .line 79
    move-result-wide p1

    .line 80
    invoke-static {p0, p1, p2, v0, p6}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->verticalDrag-jO51t88(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 86
    .line 87
    .line 88
    move-result-wide p1

    .line 89
    invoke-static {p0, p1, p2, v0, p6}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->horizontalDrag-jO51t88(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0
.end method

.method public static final draggable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLat/n;Lat/n;Z)Landroidx/compose/ui/Modifier;
    .locals 12
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/gestures/DraggableState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/gestures/Orientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/gestures/DraggableState;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Z",
            "Lat/n<",
            "-",
            "Lgt/g0;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lat/n<",
            "-",
            "Lgt/g0;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;Z)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p1

    const-string v1, "<this>"

    move-object v2, p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "state"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "orientation"

    move-object v5, p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onDragStarted"

    move-object/from16 v9, p6

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onDragStopped"

    move-object/from16 v10, p7

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v3, Landroidx/compose/foundation/gestures/DraggableKt$draggable$3;

    invoke-direct {v3, p1}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$3;-><init>(Landroidx/compose/foundation/gestures/DraggableState;)V

    sget-object v4, Landroidx/compose/foundation/gestures/DraggableKt$draggable$4;->INSTANCE:Landroidx/compose/foundation/gestures/DraggableKt$draggable$4;

    new-instance v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$5;

    move/from16 v0, p5

    invoke-direct {v8, v0}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$5;-><init>(Z)V

    move v6, p3

    move-object/from16 v7, p4

    move/from16 v11, p8

    invoke-static/range {v2 .. v11}, Landroidx/compose/foundation/gestures/DraggableKt;->draggable(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lat/n;Lat/n;Z)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static final draggable(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lat/n;Lat/n;Z)Landroidx/compose/ui/Modifier;
    .locals 16
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/gestures/Orientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/foundation/gestures/PointerAwareDraggableState;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lat/n<",
            "-",
            "Lgt/g0;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lat/n<",
            "-",
            "Lgt/g0;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;Z)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "stateFactory"

    move-object/from16 v12, p1

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "canDrag"

    move-object/from16 v13, p2

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "orientation"

    move-object/from16 v14, p3

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "startDragImmediately"

    move-object/from16 v15, p6

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onDragStarted"

    move-object/from16 v11, p7

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onDragStopped"

    move-object/from16 v10, p8

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$$inlined$debugInspectorInfo$1;

    move-object v2, v1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p9

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p1

    invoke-direct/range {v2 .. v11}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$$inlined$debugInspectorInfo$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lat/n;Lat/n;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 3
    :goto_0
    new-instance v11, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;

    move-object v2, v11

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p2

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object v12, v11

    move/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lat/n;Lat/n;Landroidx/compose/foundation/gestures/Orientation;ZZ)V

    invoke-static {v0, v1, v12}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lat/n;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic draggable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLat/n;Lat/n;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 11

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v7, v3

    goto :goto_2

    :cond_2
    move/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 1
    new-instance v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$1;

    invoke-direct {v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$1;-><init>(Lrs/c;)V

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 2
    new-instance v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$2;

    invoke-direct {v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$2;-><init>(Lrs/c;)V

    move-object v9, v1

    goto :goto_4

    :cond_4
    move-object/from16 v9, p7

    :goto_4
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    move v10, v3

    goto :goto_5

    :cond_5
    move/from16 v10, p8

    :goto_5
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 3
    invoke-static/range {v2 .. v10}, Landroidx/compose/foundation/gestures/DraggableKt;->draggable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLat/n;Lat/n;Z)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic draggable$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lat/n;Lat/n;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 12

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v6, v1

    goto :goto_0

    :cond_0
    move/from16 v6, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object/from16 v7, p5

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    .line 4
    new-instance v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$6;

    invoke-direct {v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$6;-><init>(Lrs/c;)V

    move-object v9, v1

    goto :goto_2

    :cond_2
    move-object/from16 v9, p7

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    .line 5
    new-instance v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$7;

    invoke-direct {v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$7;-><init>(Lrs/c;)V

    move-object v10, v1

    goto :goto_3

    :cond_3
    move-object/from16 v10, p8

    :goto_3
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v11, v0

    goto :goto_4

    :cond_4
    move/from16 v11, p9

    :goto_4
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v8, p6

    .line 6
    invoke-static/range {v2 .. v11}, Landroidx/compose/foundation/gestures/DraggableKt;->draggable(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lat/n;Lat/n;Z)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static final rememberDraggableState(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/DraggableState;
    .locals 1
    .param p0    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/foundation/gestures/DraggableState;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "onDelta"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, -0xaec199d

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 10
    .line 11
    .line 12
    and-int/lit8 p2, p2, 0xe

    .line 13
    .line 14
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const p2, -0x1d58f75c

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-ne p2, v0, :cond_0

    .line 35
    .line 36
    new-instance p2, Landroidx/compose/foundation/gestures/DraggableKt$rememberDraggableState$1$1;

    .line 37
    .line 38
    invoke-direct {p2, p0}, Landroidx/compose/foundation/gestures/DraggableKt$rememberDraggableState$1$1;-><init>(Landroidx/compose/runtime/State;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p2}, Landroidx/compose/foundation/gestures/DraggableKt;->DraggableState(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/DraggableState;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 49
    .line 50
    .line 51
    check-cast p2, Landroidx/compose/foundation/gestures/DraggableState;

    .line 52
    .line 53
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 54
    .line 55
    .line 56
    return-object p2
.end method

.method private static final toFloat-3MmeM6k(JLandroidx/compose/foundation/gestures/Orientation;)F
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    :goto_0
    return p0
.end method

.method private static final toFloat-sF-c-tU(JLandroidx/compose/foundation/gestures/Orientation;)F
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    :goto_0
    return p0
.end method

.method private static final toOffset(FLandroidx/compose/foundation/gestures/Orientation;)J
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    invoke-static {v1, p0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 12
    .line 13
    .line 14
    move-result-wide p0

    .line 15
    :goto_0
    return-wide p0
.end method
