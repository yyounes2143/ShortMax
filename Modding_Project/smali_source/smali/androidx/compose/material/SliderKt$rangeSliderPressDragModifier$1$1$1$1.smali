.class final Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1$1$1"
    f = "Slider.kt"
    l = {
        0x3be,
        0x3c8,
        0x3db
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $$this$coroutineScope:Lgt/g0;

.field final synthetic $gestureEndAction:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $isRtl:Z

.field final synthetic $maxPx:F

.field final synthetic $onDrag:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

.field final synthetic $rawOffsetEnd:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $rawOffsetStart:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ZFLandroidx/compose/material/RangeSliderLogic;Landroidx/compose/runtime/State;Lgt/g0;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZF",
            "Landroidx/compose/material/RangeSliderLogic;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Lgt/g0;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;>;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$isRtl:Z

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$maxPx:F

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rawOffsetStart:Landroidx/compose/runtime/State;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$$this$coroutineScope:Lgt/g0;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$gestureEndAction:Landroidx/compose/runtime/State;

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rawOffsetEnd:Landroidx/compose/runtime/State;

    .line 14
    .line 15
    iput-object p8, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$onDrag:Landroidx/compose/runtime/State;

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
    new-instance v10, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$isRtl:Z

    .line 4
    .line 5
    iget v2, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$maxPx:F

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rawOffsetStart:Landroidx/compose/runtime/State;

    .line 10
    .line 11
    iget-object v5, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$$this$coroutineScope:Lgt/g0;

    .line 12
    .line 13
    iget-object v6, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$gestureEndAction:Landroidx/compose/runtime/State;

    .line 14
    .line 15
    iget-object v7, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rawOffsetEnd:Landroidx/compose/runtime/State;

    .line 16
    .line 17
    iget-object v8, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$onDrag:Landroidx/compose/runtime/State;

    .line 18
    .line 19
    move-object v0, v10

    .line 20
    move-object v9, p2

    .line 21
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;-><init>(ZFLandroidx/compose/material/RangeSliderLogic;Landroidx/compose/runtime/State;Lgt/g0;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lrs/c;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, v10, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$0:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lrs/c;)Ljava/lang/Object;

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
    iget v2, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x1

    .line 14
    if-eqz v2, :cond_4

    .line 15
    .line 16
    if-eq v2, v7, :cond_2

    .line 17
    .line 18
    if-eq v2, v4, :cond_1

    .line 19
    .line 20
    if-ne v2, v3, :cond_0

    .line 21
    .line 22
    iget-object v1, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$1:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 25
    .line 26
    iget-object v2, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$0:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 29
    .line 30
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    .line 32
    .line 33
    move-object/from16 v3, p1

    .line 34
    .line 35
    goto/16 :goto_7

    .line 36
    .line 37
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v1

    .line 45
    :cond_1
    iget-object v2, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$4:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 48
    .line 49
    iget-object v4, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$3:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v4, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 52
    .line 53
    iget-object v8, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$2:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v8, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 56
    .line 57
    iget-object v9, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$1:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 60
    .line 61
    iget-object v10, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$0:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v10, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 64
    .line 65
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    move-object v11, v10

    .line 69
    move-object v10, v9

    .line 70
    move-object v9, v4

    .line 71
    move-object/from16 v4, p1

    .line 72
    .line 73
    goto/16 :goto_4

    .line 74
    .line 75
    :cond_2
    iget-object v2, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$0:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 78
    .line 79
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    move-object/from16 v8, p1

    .line 83
    .line 84
    :cond_3
    move-object v10, v2

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object v2, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$0:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 92
    .line 93
    iput-object v2, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$0:Ljava/lang/Object;

    .line 94
    .line 95
    iput v7, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->label:I

    .line 96
    .line 97
    invoke-static {v2, v6, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLrs/c;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    if-ne v8, v1, :cond_3

    .line 102
    .line 103
    return-object v1

    .line 104
    :goto_0
    move-object v9, v8

    .line 105
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 106
    .line 107
    new-instance v2, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 108
    .line 109
    invoke-direct {v2}, Landroidx/compose/foundation/interaction/DragInteraction$Start;-><init>()V

    .line 110
    .line 111
    .line 112
    new-instance v8, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 113
    .line 114
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 115
    .line 116
    .line 117
    iget-boolean v11, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$isRtl:Z

    .line 118
    .line 119
    if-eqz v11, :cond_5

    .line 120
    .line 121
    iget v11, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$maxPx:F

    .line 122
    .line 123
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 124
    .line 125
    .line 126
    move-result-wide v12

    .line 127
    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    sub-float/2addr v11, v12

    .line 132
    goto :goto_1

    .line 133
    :cond_5
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 134
    .line 135
    .line 136
    move-result-wide v11

    .line 137
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    :goto_1
    iput v11, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 142
    .line 143
    iget-object v12, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    .line 144
    .line 145
    invoke-virtual {v12, v11}, Landroidx/compose/material/RangeSliderLogic;->compareOffsets(F)I

    .line 146
    .line 147
    .line 148
    move-result v11

    .line 149
    new-instance v12, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 150
    .line 151
    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 152
    .line 153
    .line 154
    if-eqz v11, :cond_7

    .line 155
    .line 156
    if-gez v11, :cond_6

    .line 157
    .line 158
    :goto_2
    move v11, v7

    .line 159
    goto :goto_3

    .line 160
    :cond_6
    move v11, v6

    .line 161
    goto :goto_3

    .line 162
    :cond_7
    iget-object v11, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rawOffsetStart:Landroidx/compose/runtime/State;

    .line 163
    .line 164
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    check-cast v11, Ljava/lang/Number;

    .line 169
    .line 170
    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    .line 171
    .line 172
    .line 173
    move-result v11

    .line 174
    iget v13, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 175
    .line 176
    cmpl-float v11, v11, v13

    .line 177
    .line 178
    if-lez v11, :cond_6

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :goto_3
    iput-boolean v11, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 182
    .line 183
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 184
    .line 185
    .line 186
    move-result-wide v13

    .line 187
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    .line 188
    .line 189
    .line 190
    move-result v11

    .line 191
    iput-object v10, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$0:Ljava/lang/Object;

    .line 192
    .line 193
    iput-object v9, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$1:Ljava/lang/Object;

    .line 194
    .line 195
    iput-object v2, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$2:Ljava/lang/Object;

    .line 196
    .line 197
    iput-object v8, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$3:Ljava/lang/Object;

    .line 198
    .line 199
    iput-object v12, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$4:Ljava/lang/Object;

    .line 200
    .line 201
    iput v4, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->label:I

    .line 202
    .line 203
    invoke-static {v10, v13, v14, v11, v0}, Landroidx/compose/material/SliderKt;->access$awaitSlop-8vUncbI(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILrs/c;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    if-ne v4, v1, :cond_8

    .line 208
    .line 209
    return-object v1

    .line 210
    :cond_8
    move-object v11, v10

    .line 211
    move-object v10, v9

    .line 212
    move-object v9, v8

    .line 213
    move-object v8, v2

    .line 214
    move-object v2, v12

    .line 215
    :goto_4
    check-cast v4, Lkotlin/Pair;

    .line 216
    .line 217
    if-eqz v4, :cond_b

    .line 218
    .line 219
    iget-object v12, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rawOffsetEnd:Landroidx/compose/runtime/State;

    .line 220
    .line 221
    iget-object v13, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rawOffsetStart:Landroidx/compose/runtime/State;

    .line 222
    .line 223
    iget-boolean v14, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$isRtl:Z

    .line 224
    .line 225
    invoke-interface {v11}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 226
    .line 227
    .line 228
    move-result-object v15

    .line 229
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    invoke-static {v15, v6}, Landroidx/compose/material/DragGestureDetectorCopyKt;->pointerSlop-E8SPZFQ(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v12

    .line 241
    check-cast v12, Ljava/lang/Number;

    .line 242
    .line 243
    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    .line 244
    .line 245
    .line 246
    move-result v12

    .line 247
    iget v15, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 248
    .line 249
    sub-float/2addr v12, v15

    .line 250
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 251
    .line 252
    .line 253
    move-result v12

    .line 254
    cmpg-float v12, v12, v6

    .line 255
    .line 256
    if-gez v12, :cond_b

    .line 257
    .line 258
    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v12

    .line 262
    check-cast v12, Ljava/lang/Number;

    .line 263
    .line 264
    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    .line 265
    .line 266
    .line 267
    move-result v12

    .line 268
    iget v13, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 269
    .line 270
    sub-float/2addr v12, v13

    .line 271
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 272
    .line 273
    .line 274
    move-result v12

    .line 275
    cmpg-float v6, v12, v6

    .line 276
    .line 277
    if-gez v6, :cond_b

    .line 278
    .line 279
    invoke-virtual {v4}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v6

    .line 283
    check-cast v6, Ljava/lang/Number;

    .line 284
    .line 285
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 286
    .line 287
    .line 288
    move-result v6

    .line 289
    const/4 v12, 0x0

    .line 290
    if-eqz v14, :cond_a

    .line 291
    .line 292
    cmpl-float v6, v6, v12

    .line 293
    .line 294
    if-ltz v6, :cond_9

    .line 295
    .line 296
    :goto_5
    move v6, v7

    .line 297
    goto :goto_6

    .line 298
    :cond_9
    const/4 v6, 0x0

    .line 299
    goto :goto_6

    .line 300
    :cond_a
    cmpg-float v6, v6, v12

    .line 301
    .line 302
    if-gez v6, :cond_9

    .line 303
    .line 304
    goto :goto_5

    .line 305
    :goto_6
    iput-boolean v6, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 306
    .line 307
    iget v6, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 308
    .line 309
    invoke-virtual {v4}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 314
    .line 315
    invoke-static {v4}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChange(Landroidx/compose/ui/input/pointer/PointerInputChange;)J

    .line 316
    .line 317
    .line 318
    move-result-wide v12

    .line 319
    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    add-float/2addr v6, v4

    .line 324
    iput v6, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 325
    .line 326
    :cond_b
    iget-object v4, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    .line 327
    .line 328
    iget-boolean v6, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 329
    .line 330
    iget v7, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 331
    .line 332
    iget-object v9, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$$this$coroutineScope:Lgt/g0;

    .line 333
    .line 334
    invoke-virtual {v4, v6, v7, v8, v9}, Landroidx/compose/material/RangeSliderLogic;->captureThumb(ZFLandroidx/compose/foundation/interaction/Interaction;Lgt/g0;)V

    .line 335
    .line 336
    .line 337
    :try_start_1
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 338
    .line 339
    .line 340
    move-result-wide v6

    .line 341
    new-instance v4, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$finishInteraction$success$1;

    .line 342
    .line 343
    iget-object v9, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$onDrag:Landroidx/compose/runtime/State;

    .line 344
    .line 345
    iget-boolean v10, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$isRtl:Z

    .line 346
    .line 347
    invoke-direct {v4, v9, v2, v10}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$finishInteraction$success$1;-><init>(Landroidx/compose/runtime/State;Lkotlin/jvm/internal/Ref$BooleanRef;Z)V

    .line 348
    .line 349
    .line 350
    iput-object v8, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$0:Ljava/lang/Object;

    .line 351
    .line 352
    iput-object v2, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$1:Ljava/lang/Object;

    .line 353
    .line 354
    iput-object v5, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$2:Ljava/lang/Object;

    .line 355
    .line 356
    iput-object v5, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$3:Ljava/lang/Object;

    .line 357
    .line 358
    iput-object v5, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$4:Ljava/lang/Object;

    .line 359
    .line 360
    iput v3, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->label:I

    .line 361
    .line 362
    invoke-static {v11, v6, v7, v4, v0}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->horizontalDrag-jO51t88(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v3
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 366
    if-ne v3, v1, :cond_c

    .line 367
    .line 368
    return-object v1

    .line 369
    :cond_c
    move-object v1, v2

    .line 370
    move-object v2, v8

    .line 371
    :goto_7
    :try_start_2
    check-cast v3, Ljava/lang/Boolean;

    .line 372
    .line 373
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 374
    .line 375
    .line 376
    move-result v3

    .line 377
    if-eqz v3, :cond_d

    .line 378
    .line 379
    new-instance v3, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    .line 380
    .line 381
    invoke-direct {v3, v2}, Landroidx/compose/foundation/interaction/DragInteraction$Stop;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    .line 382
    .line 383
    .line 384
    goto :goto_8

    .line 385
    :cond_d
    new-instance v3, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 386
    .line 387
    invoke-direct {v3, v2}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 388
    .line 389
    .line 390
    goto :goto_8

    .line 391
    :catch_0
    move-object v1, v2

    .line 392
    move-object v2, v8

    .line 393
    :catch_1
    new-instance v3, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 394
    .line 395
    invoke-direct {v3, v2}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    .line 396
    .line 397
    .line 398
    :goto_8
    iget-object v2, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$gestureEndAction:Landroidx/compose/runtime/State;

    .line 399
    .line 400
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 405
    .line 406
    iget-boolean v4, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 407
    .line 408
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    iget-object v6, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$$this$coroutineScope:Lgt/g0;

    .line 416
    .line 417
    new-instance v9, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;

    .line 418
    .line 419
    iget-object v2, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    .line 420
    .line 421
    invoke-direct {v9, v2, v1, v3, v5}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;-><init>(Landroidx/compose/material/RangeSliderLogic;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/foundation/interaction/DragInteraction;Lrs/c;)V

    .line 422
    .line 423
    .line 424
    const/4 v10, 0x3

    .line 425
    const/4 v11, 0x0

    .line 426
    const/4 v7, 0x0

    .line 427
    const/4 v8, 0x0

    .line 428
    invoke-static/range {v6 .. v11}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 429
    .line 430
    .line 431
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 432
    .line 433
    return-object v1
.end method
