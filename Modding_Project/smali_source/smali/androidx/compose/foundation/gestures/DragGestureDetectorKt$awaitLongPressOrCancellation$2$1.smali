.class final Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "DragGestureDetector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$2$1"
    f = "DragGestureDetector.kt"
    l = {
        0x2f6,
        0x307
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $currentDown:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $longPress:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;"
        }
    .end annotation
.end field

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->$currentDown:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->$longPress:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->$currentDown:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->$longPress:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    if-eq v2, v6, :cond_1

    .line 15
    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->I$0:I

    .line 19
    .line 20
    iget-object v7, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->L$1:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 23
    .line 24
    iget-object v8, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v8, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 27
    .line 28
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    move-object/from16 v4, p1

    .line 32
    .line 33
    goto/16 :goto_6

    .line 34
    .line 35
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v1

    .line 43
    :cond_1
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->I$0:I

    .line 44
    .line 45
    iget-object v7, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v7, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 48
    .line 49
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    move-object/from16 v8, p1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 61
    .line 62
    move-object v7, v2

    .line 63
    const/4 v2, 0x0

    .line 64
    :goto_0
    if-nez v2, :cond_12

    .line 65
    .line 66
    sget-object v8, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 67
    .line 68
    iput-object v7, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->L$0:Ljava/lang/Object;

    .line 69
    .line 70
    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->L$1:Ljava/lang/Object;

    .line 71
    .line 72
    iput v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->I$0:I

    .line 73
    .line 74
    iput v6, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->label:I

    .line 75
    .line 76
    invoke-interface {v7, v8, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    if-ne v8, v1, :cond_3

    .line 81
    .line 82
    return-object v1

    .line 83
    :cond_3
    :goto_1
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 84
    .line 85
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    const/4 v11, 0x0

    .line 94
    :goto_2
    if-ge v11, v10, :cond_5

    .line 95
    .line 96
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 101
    .line 102
    invoke-static {v12}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    if-nez v12, :cond_4

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    move v2, v6

    .line 113
    :goto_3
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    const/4 v11, 0x0

    .line 122
    :goto_4
    if-ge v11, v10, :cond_8

    .line 123
    .line 124
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v12

    .line 128
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 129
    .line 130
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 131
    .line 132
    .line 133
    move-result v13

    .line 134
    if-nez v13, :cond_7

    .line 135
    .line 136
    invoke-interface {v7}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getSize-YbymL2g()J

    .line 137
    .line 138
    .line 139
    move-result-wide v13

    .line 140
    invoke-interface {v7}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getExtendedTouchPadding-NH-jbRc()J

    .line 141
    .line 142
    .line 143
    move-result-wide v4

    .line 144
    invoke-static {v12, v13, v14, v4, v5}, Landroidx/compose/ui/input/pointer/PointerEventKt;->isOutOfBounds-jwHxaWs(Landroidx/compose/ui/input/pointer/PointerInputChange;JJ)Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-eqz v4, :cond_6

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_6
    add-int/lit8 v11, v11, 0x1

    .line 152
    .line 153
    const/4 v4, 0x0

    .line 154
    goto :goto_4

    .line 155
    :cond_7
    :goto_5
    move v2, v6

    .line 156
    :cond_8
    sget-object v4, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 157
    .line 158
    iput-object v7, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->L$0:Ljava/lang/Object;

    .line 159
    .line 160
    iput-object v8, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->L$1:Ljava/lang/Object;

    .line 161
    .line 162
    iput v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->I$0:I

    .line 163
    .line 164
    iput v3, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->label:I

    .line 165
    .line 166
    invoke-interface {v7, v4, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    if-ne v4, v1, :cond_9

    .line 171
    .line 172
    return-object v1

    .line 173
    :cond_9
    move-object v15, v8

    .line 174
    move-object v8, v7

    .line 175
    move-object v7, v15

    .line 176
    :goto_6
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 177
    .line 178
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    const/4 v9, 0x0

    .line 187
    :goto_7
    if-ge v9, v5, :cond_b

    .line 188
    .line 189
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 194
    .line 195
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    if-eqz v10, :cond_a

    .line 200
    .line 201
    move v2, v6

    .line 202
    goto :goto_8

    .line 203
    :cond_a
    add-int/lit8 v9, v9, 0x1

    .line 204
    .line 205
    goto :goto_7

    .line 206
    :cond_b
    :goto_8
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->$currentDown:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 207
    .line 208
    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 211
    .line 212
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 213
    .line 214
    .line 215
    move-result-wide v4

    .line 216
    invoke-static {v7, v4, v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->access$isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    if-nez v4, :cond_e

    .line 221
    .line 222
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->$longPress:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 223
    .line 224
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    iget-object v7, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->$currentDown:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 229
    .line 230
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 231
    .line 232
    .line 233
    move-result v9

    .line 234
    const/4 v10, 0x0

    .line 235
    :goto_9
    if-ge v10, v9, :cond_d

    .line 236
    .line 237
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v11

    .line 241
    move-object v12, v11

    .line 242
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 243
    .line 244
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 245
    .line 246
    .line 247
    move-result-wide v12

    .line 248
    iget-object v14, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 251
    .line 252
    move-object/from16 p1, v7

    .line 253
    .line 254
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 255
    .line 256
    .line 257
    move-result-wide v6

    .line 258
    invoke-static {v12, v13, v6, v7}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    if-eqz v6, :cond_c

    .line 263
    .line 264
    goto :goto_a

    .line 265
    :cond_c
    add-int/lit8 v10, v10, 0x1

    .line 266
    .line 267
    move-object/from16 v7, p1

    .line 268
    .line 269
    const/4 v6, 0x1

    .line 270
    goto :goto_9

    .line 271
    :cond_d
    const/4 v11, 0x0

    .line 272
    :goto_a
    iput-object v11, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 273
    .line 274
    goto :goto_d

    .line 275
    :cond_e
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    const/4 v6, 0x0

    .line 284
    :goto_b
    if-ge v6, v5, :cond_10

    .line 285
    .line 286
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    move-object v9, v7

    .line 291
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 292
    .line 293
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 294
    .line 295
    .line 296
    move-result v9

    .line 297
    if-eqz v9, :cond_f

    .line 298
    .line 299
    goto :goto_c

    .line 300
    :cond_f
    add-int/lit8 v6, v6, 0x1

    .line 301
    .line 302
    goto :goto_b

    .line 303
    :cond_10
    const/4 v7, 0x0

    .line 304
    :goto_c
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 305
    .line 306
    if-eqz v7, :cond_11

    .line 307
    .line 308
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->$currentDown:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 309
    .line 310
    iput-object v7, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 311
    .line 312
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->$longPress:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 313
    .line 314
    iput-object v7, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 315
    .line 316
    :goto_d
    move-object v7, v8

    .line 317
    :goto_e
    const/4 v4, 0x0

    .line 318
    const/4 v6, 0x1

    .line 319
    goto/16 :goto_0

    .line 320
    .line 321
    :cond_11
    move-object v7, v8

    .line 322
    const/4 v2, 0x1

    .line 323
    goto :goto_e

    .line 324
    :cond_12
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 325
    .line 326
    return-object v1
.end method
