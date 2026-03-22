.class final Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "Transformable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.compose.foundation.gestures.TransformableKt$detectZoom$3$1"
    f = "Transformable.kt"
    l = {
        0x67
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $$this$transform:Landroidx/compose/foundation/gestures/TransformScope;

.field final synthetic $lockedToPanZoom:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $pan:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $panZoomLock:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pastTouchSlop:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $rotation:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $touchSlop:F

.field final synthetic $zoom:Lkotlin/jvm/internal/Ref$FloatRef;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$LongRef;FLkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/runtime/State;Landroidx/compose/foundation/gestures/TransformScope;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "F",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/foundation/gestures/TransformScope;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$pastTouchSlop:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$zoom:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$rotation:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$pan:Lkotlin/jvm/internal/Ref$LongRef;

    .line 8
    .line 9
    iput p5, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$touchSlop:F

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$lockedToPanZoom:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$panZoomLock:Landroidx/compose/runtime/State;

    .line 14
    .line 15
    iput-object p8, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$$this$transform:Landroidx/compose/foundation/gestures/TransformScope;

    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILrs/c;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 11
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
    new-instance v10, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$pastTouchSlop:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$zoom:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$rotation:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$pan:Lkotlin/jvm/internal/Ref$LongRef;

    .line 10
    .line 11
    iget v5, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$touchSlop:F

    .line 12
    .line 13
    iget-object v6, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$lockedToPanZoom:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 14
    .line 15
    iget-object v7, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$panZoomLock:Landroidx/compose/runtime/State;

    .line 16
    .line 17
    iget-object v8, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$$this$transform:Landroidx/compose/foundation/gestures/TransformScope;

    .line 18
    .line 19
    move-object v0, v10

    .line 20
    move-object v9, p2

    .line 21
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$LongRef;FLkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/runtime/State;Landroidx/compose/foundation/gestures/TransformScope;Lrs/c;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, v10, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    return-object v10
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 34
    .line 35
    move-object v1, p1

    .line 36
    :goto_0
    iput-object v1, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->L$0:Ljava/lang/Object;

    .line 37
    .line 38
    iput v2, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->label:I

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-static {v1, p1, p0, v2, p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-ne p1, v0, :cond_2

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    :goto_1
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    const/4 v5, 0x0

    .line 59
    move v6, v5

    .line 60
    :goto_2
    if-ge v6, v4, :cond_4

    .line 61
    .line 62
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 67
    .line 68
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_3

    .line 73
    .line 74
    move v3, v2

    .line 75
    goto :goto_3

    .line 76
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    move v3, v5

    .line 80
    :goto_3
    if-nez v3, :cond_c

    .line 81
    .line 82
    invoke-static {p1}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateZoom(Landroidx/compose/ui/input/pointer/PointerEvent;)F

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    invoke-static {p1}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateRotation(Landroidx/compose/ui/input/pointer/PointerEvent;)F

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    invoke-static {p1}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculatePan(Landroidx/compose/ui/input/pointer/PointerEvent;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v7

    .line 94
    iget-object v9, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$pastTouchSlop:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 95
    .line 96
    iget-boolean v9, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 97
    .line 98
    if-nez v9, :cond_7

    .line 99
    .line 100
    iget-object v9, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$zoom:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 101
    .line 102
    iget v10, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 103
    .line 104
    mul-float/2addr v10, v4

    .line 105
    iput v10, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 106
    .line 107
    iget-object v9, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$rotation:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 108
    .line 109
    iget v10, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 110
    .line 111
    add-float/2addr v10, v6

    .line 112
    iput v10, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 113
    .line 114
    iget-object v9, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$pan:Lkotlin/jvm/internal/Ref$LongRef;

    .line 115
    .line 116
    iget-wide v10, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 117
    .line 118
    invoke-static {v10, v11, v7, v8}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    .line 119
    .line 120
    .line 121
    move-result-wide v10

    .line 122
    iput-wide v10, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 123
    .line 124
    invoke-static {p1, v5}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateCentroidSize(Landroidx/compose/ui/input/pointer/PointerEvent;Z)F

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    int-to-float v10, v2

    .line 129
    iget-object v11, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$zoom:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 130
    .line 131
    iget v11, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 132
    .line 133
    sub-float/2addr v10, v11

    .line 134
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 135
    .line 136
    .line 137
    move-result v10

    .line 138
    mul-float/2addr v10, v9

    .line 139
    iget-object v11, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$rotation:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 140
    .line 141
    iget v11, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 142
    .line 143
    const v12, 0x40490fdb    # (float)Math.PI

    .line 144
    .line 145
    .line 146
    mul-float/2addr v11, v12

    .line 147
    mul-float/2addr v11, v9

    .line 148
    const/high16 v9, 0x43340000    # 180.0f

    .line 149
    .line 150
    div-float/2addr v11, v9

    .line 151
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    iget-object v11, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$pan:Lkotlin/jvm/internal/Ref$LongRef;

    .line 156
    .line 157
    iget-wide v11, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 158
    .line 159
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    iget v12, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$touchSlop:F

    .line 164
    .line 165
    cmpl-float v10, v10, v12

    .line 166
    .line 167
    if-gtz v10, :cond_5

    .line 168
    .line 169
    cmpl-float v10, v9, v12

    .line 170
    .line 171
    if-gtz v10, :cond_5

    .line 172
    .line 173
    cmpl-float v10, v11, v12

    .line 174
    .line 175
    if-lez v10, :cond_7

    .line 176
    .line 177
    :cond_5
    iget-object v10, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$pastTouchSlop:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 178
    .line 179
    iput-boolean v2, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 180
    .line 181
    iget-object v10, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$lockedToPanZoom:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 182
    .line 183
    iget-object v11, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$panZoomLock:Landroidx/compose/runtime/State;

    .line 184
    .line 185
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    check-cast v11, Ljava/lang/Boolean;

    .line 190
    .line 191
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    if-eqz v11, :cond_6

    .line 196
    .line 197
    iget v11, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$touchSlop:F

    .line 198
    .line 199
    cmpg-float v9, v9, v11

    .line 200
    .line 201
    if-gez v9, :cond_6

    .line 202
    .line 203
    move v9, v2

    .line 204
    goto :goto_4

    .line 205
    :cond_6
    move v9, v5

    .line 206
    :goto_4
    iput-boolean v9, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 207
    .line 208
    :cond_7
    iget-object v9, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$pastTouchSlop:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 209
    .line 210
    iget-boolean v9, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 211
    .line 212
    if-eqz v9, :cond_c

    .line 213
    .line 214
    iget-object v9, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$lockedToPanZoom:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 215
    .line 216
    iget-boolean v9, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 217
    .line 218
    const/4 v10, 0x0

    .line 219
    if-eqz v9, :cond_8

    .line 220
    .line 221
    move v6, v10

    .line 222
    :cond_8
    cmpg-float v9, v6, v10

    .line 223
    .line 224
    if-nez v9, :cond_9

    .line 225
    .line 226
    const/high16 v9, 0x3f800000    # 1.0f

    .line 227
    .line 228
    cmpg-float v9, v4, v9

    .line 229
    .line 230
    if-nez v9, :cond_9

    .line 231
    .line 232
    sget-object v9, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 233
    .line 234
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 235
    .line 236
    .line 237
    move-result-wide v9

    .line 238
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    if-nez v9, :cond_a

    .line 243
    .line 244
    :cond_9
    iget-object v9, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$$this$transform:Landroidx/compose/foundation/gestures/TransformScope;

    .line 245
    .line 246
    invoke-interface {v9, v4, v7, v8, v6}, Landroidx/compose/foundation/gestures/TransformScope;->transformBy-d-4ec7I(FJF)V

    .line 247
    .line 248
    .line 249
    :cond_a
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 254
    .line 255
    .line 256
    move-result v6

    .line 257
    move v7, v5

    .line 258
    :goto_5
    if-ge v7, v6, :cond_c

    .line 259
    .line 260
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v8

    .line 264
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 265
    .line 266
    invoke-static {v8}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChanged(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    if-eqz v9, :cond_b

    .line 271
    .line 272
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 273
    .line 274
    .line 275
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_c
    if-nez v3, :cond_e

    .line 279
    .line 280
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    :goto_6
    if-ge v5, v3, :cond_e

    .line 289
    .line 290
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 295
    .line 296
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    if-eqz v4, :cond_d

    .line 301
    .line 302
    goto/16 :goto_0

    .line 303
    .line 304
    :cond_d
    add-int/lit8 v5, v5, 0x1

    .line 305
    .line 306
    goto :goto_6

    .line 307
    :cond_e
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 308
    .line 309
    return-object p1
.end method
