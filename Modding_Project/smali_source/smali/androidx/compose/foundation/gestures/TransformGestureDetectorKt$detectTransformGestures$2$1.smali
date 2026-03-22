.class final Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "TransformGestureDetector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.compose.foundation.gestures.TransformGestureDetectorKt$detectTransformGestures$2$1"
    f = "TransformGestureDetector.kt"
    l = {
        0x3c,
        0x3e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $onGesture:Lat/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/o<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Landroidx/compose/ui/geometry/Offset;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $panZoomLock:Z

.field F$0:F

.field F$1:F

.field F$2:F

.field I$0:I

.field I$1:I

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ZLat/o;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lat/o<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->$panZoomLock:Z

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->$onGesture:Lat/o;

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
    new-instance v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->$panZoomLock:Z

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->$onGesture:Lat/o;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;-><init>(ZLat/o;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->L$0:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23
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
    iget v2, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->label:I

    .line 8
    .line 9
    const/high16 v3, 0x3f800000    # 1.0f

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x1

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    if-eq v2, v7, :cond_1

    .line 18
    .line 19
    if-ne v2, v4, :cond_0

    .line 20
    .line 21
    iget v2, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->I$1:I

    .line 22
    .line 23
    iget v8, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$2:F

    .line 24
    .line 25
    iget v9, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->I$0:I

    .line 26
    .line 27
    iget-wide v10, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->J$0:J

    .line 28
    .line 29
    iget v12, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$1:F

    .line 30
    .line 31
    iget v13, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$0:F

    .line 32
    .line 33
    iget-object v14, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v14, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 36
    .line 37
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    move-object/from16 v15, p1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v1

    .line 51
    :cond_1
    iget v2, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->I$1:I

    .line 52
    .line 53
    iget v8, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$2:F

    .line 54
    .line 55
    iget v9, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->I$0:I

    .line 56
    .line 57
    iget-wide v10, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->J$0:J

    .line 58
    .line 59
    iget v12, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$1:F

    .line 60
    .line 61
    iget v13, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$0:F

    .line 62
    .line 63
    iget-object v14, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v14, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 66
    .line 67
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->L$0:Ljava/lang/Object;

    .line 75
    .line 76
    move-object v14, v2

    .line 77
    check-cast v14, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 78
    .line 79
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 80
    .line 81
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 82
    .line 83
    .line 84
    move-result-wide v10

    .line 85
    invoke-interface {v14}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-interface {v2}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    iput-object v14, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->L$0:Ljava/lang/Object;

    .line 94
    .line 95
    iput v5, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$0:F

    .line 96
    .line 97
    iput v3, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$1:F

    .line 98
    .line 99
    iput-wide v10, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->J$0:J

    .line 100
    .line 101
    iput v6, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->I$0:I

    .line 102
    .line 103
    iput v8, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$2:F

    .line 104
    .line 105
    iput v6, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->I$1:I

    .line 106
    .line 107
    iput v7, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->label:I

    .line 108
    .line 109
    invoke-static {v14, v6, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLrs/c;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    if-ne v2, v1, :cond_3

    .line 114
    .line 115
    return-object v1

    .line 116
    :cond_3
    move v12, v3

    .line 117
    move v13, v5

    .line 118
    move v2, v6

    .line 119
    move v9, v2

    .line 120
    :goto_0
    iput-object v14, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->L$0:Ljava/lang/Object;

    .line 121
    .line 122
    iput v13, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$0:F

    .line 123
    .line 124
    iput v12, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$1:F

    .line 125
    .line 126
    iput-wide v10, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->J$0:J

    .line 127
    .line 128
    iput v9, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->I$0:I

    .line 129
    .line 130
    iput v8, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$2:F

    .line 131
    .line 132
    iput v2, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->I$1:I

    .line 133
    .line 134
    iput v4, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->label:I

    .line 135
    .line 136
    const/4 v15, 0x0

    .line 137
    invoke-static {v14, v15, v0, v7, v15}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v15

    .line 141
    if-ne v15, v1, :cond_4

    .line 142
    .line 143
    return-object v1

    .line 144
    :cond_4
    :goto_1
    check-cast v15, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 145
    .line 146
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    move v5, v6

    .line 155
    :goto_2
    if-ge v5, v3, :cond_6

    .line 156
    .line 157
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v18

    .line 161
    check-cast v18, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 162
    .line 163
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 164
    .line 165
    .line 166
    move-result v18

    .line 167
    if-eqz v18, :cond_5

    .line 168
    .line 169
    move v3, v7

    .line 170
    goto :goto_3

    .line 171
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_6
    move v3, v6

    .line 175
    :goto_3
    if-nez v3, :cond_12

    .line 176
    .line 177
    invoke-static {v15}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateZoom(Landroidx/compose/ui/input/pointer/PointerEvent;)F

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    invoke-static {v15}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateRotation(Landroidx/compose/ui/input/pointer/PointerEvent;)F

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    move/from16 p1, v8

    .line 186
    .line 187
    invoke-static {v15}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculatePan(Landroidx/compose/ui/input/pointer/PointerEvent;)J

    .line 188
    .line 189
    .line 190
    move-result-wide v7

    .line 191
    if-nez v9, :cond_9

    .line 192
    .line 193
    mul-float/2addr v12, v4

    .line 194
    add-float/2addr v13, v5

    .line 195
    invoke-static {v10, v11, v7, v8}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    .line 196
    .line 197
    .line 198
    move-result-wide v10

    .line 199
    invoke-static {v15, v6}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateCentroidSize(Landroidx/compose/ui/input/pointer/PointerEvent;Z)F

    .line 200
    .line 201
    .line 202
    move-result v19

    .line 203
    move-object/from16 v18, v1

    .line 204
    .line 205
    const/4 v6, 0x1

    .line 206
    int-to-float v1, v6

    .line 207
    sub-float/2addr v1, v12

    .line 208
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    mul-float v1, v1, v19

    .line 213
    .line 214
    const v21, 0x40490fdb    # (float)Math.PI

    .line 215
    .line 216
    .line 217
    mul-float v21, v21, v13

    .line 218
    .line 219
    mul-float v21, v21, v19

    .line 220
    .line 221
    const/high16 v19, 0x43340000    # 180.0f

    .line 222
    .line 223
    div-float v21, v21, v19

    .line 224
    .line 225
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    .line 226
    .line 227
    .line 228
    move-result v19

    .line 229
    invoke-static {v10, v11}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    .line 230
    .line 231
    .line 232
    move-result v21

    .line 233
    cmpl-float v1, v1, p1

    .line 234
    .line 235
    if-gtz v1, :cond_7

    .line 236
    .line 237
    cmpl-float v1, v19, p1

    .line 238
    .line 239
    if-gtz v1, :cond_7

    .line 240
    .line 241
    cmpl-float v1, v21, p1

    .line 242
    .line 243
    if-lez v1, :cond_a

    .line 244
    .line 245
    :cond_7
    iget-boolean v1, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->$panZoomLock:Z

    .line 246
    .line 247
    if-eqz v1, :cond_8

    .line 248
    .line 249
    cmpg-float v1, v19, p1

    .line 250
    .line 251
    if-gez v1, :cond_8

    .line 252
    .line 253
    move v2, v6

    .line 254
    goto :goto_4

    .line 255
    :cond_8
    const/4 v2, 0x0

    .line 256
    :goto_4
    move v9, v6

    .line 257
    goto :goto_5

    .line 258
    :cond_9
    move-object/from16 v18, v1

    .line 259
    .line 260
    const/4 v6, 0x1

    .line 261
    :cond_a
    :goto_5
    if-eqz v9, :cond_10

    .line 262
    .line 263
    const/4 v1, 0x0

    .line 264
    invoke-static {v15, v1}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateCentroid(Landroidx/compose/ui/input/pointer/PointerEvent;Z)J

    .line 265
    .line 266
    .line 267
    move-result-wide v19

    .line 268
    if-eqz v2, :cond_b

    .line 269
    .line 270
    const/4 v5, 0x0

    .line 271
    :cond_b
    const/16 v17, 0x0

    .line 272
    .line 273
    cmpg-float v21, v5, v17

    .line 274
    .line 275
    if-nez v21, :cond_d

    .line 276
    .line 277
    const/high16 v16, 0x3f800000    # 1.0f

    .line 278
    .line 279
    cmpg-float v21, v4, v16

    .line 280
    .line 281
    if-nez v21, :cond_c

    .line 282
    .line 283
    sget-object v21, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 284
    .line 285
    move/from16 v22, v2

    .line 286
    .line 287
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 288
    .line 289
    .line 290
    move-result-wide v1

    .line 291
    invoke-static {v7, v8, v1, v2}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-nez v1, :cond_e

    .line 296
    .line 297
    goto :goto_6

    .line 298
    :cond_c
    move/from16 v22, v2

    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_d
    move/from16 v22, v2

    .line 302
    .line 303
    const/high16 v16, 0x3f800000    # 1.0f

    .line 304
    .line 305
    :goto_6
    iget-object v1, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->$onGesture:Lat/o;

    .line 306
    .line 307
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    .line 312
    .line 313
    .line 314
    move-result-object v7

    .line 315
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->c(F)Ljava/lang/Float;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/a;->c(F)Ljava/lang/Float;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    invoke-interface {v1, v2, v7, v4, v5}, Lat/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    :cond_e
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    const/4 v4, 0x0

    .line 335
    :goto_7
    if-ge v4, v2, :cond_11

    .line 336
    .line 337
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 342
    .line 343
    invoke-static {v5}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChanged(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 344
    .line 345
    .line 346
    move-result v7

    .line 347
    if-eqz v7, :cond_f

    .line 348
    .line 349
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 350
    .line 351
    .line 352
    :cond_f
    add-int/lit8 v4, v4, 0x1

    .line 353
    .line 354
    goto :goto_7

    .line 355
    :cond_10
    move/from16 v22, v2

    .line 356
    .line 357
    const/high16 v16, 0x3f800000    # 1.0f

    .line 358
    .line 359
    const/16 v17, 0x0

    .line 360
    .line 361
    :cond_11
    move/from16 v2, v22

    .line 362
    .line 363
    goto :goto_8

    .line 364
    :cond_12
    move-object/from16 v18, v1

    .line 365
    .line 366
    move v6, v7

    .line 367
    move/from16 p1, v8

    .line 368
    .line 369
    const/high16 v16, 0x3f800000    # 1.0f

    .line 370
    .line 371
    const/16 v17, 0x0

    .line 372
    .line 373
    :goto_8
    if-nez v3, :cond_14

    .line 374
    .line 375
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    const/4 v4, 0x0

    .line 384
    :goto_9
    if-ge v4, v3, :cond_14

    .line 385
    .line 386
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 391
    .line 392
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    if-eqz v5, :cond_13

    .line 397
    .line 398
    move/from16 v8, p1

    .line 399
    .line 400
    move v7, v6

    .line 401
    move/from16 v3, v16

    .line 402
    .line 403
    move/from16 v5, v17

    .line 404
    .line 405
    move-object/from16 v1, v18

    .line 406
    .line 407
    const/4 v4, 0x2

    .line 408
    const/4 v6, 0x0

    .line 409
    goto/16 :goto_0

    .line 410
    .line 411
    :cond_13
    add-int/lit8 v4, v4, 0x1

    .line 412
    .line 413
    goto :goto_9

    .line 414
    :cond_14
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 415
    .line 416
    return-object v1
.end method
