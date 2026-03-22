.class final Landroidx/compose/foundation/gestures/DefaultFlingBehavior;
.super Ljava/lang/Object;
.source "Scrollable.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/FlingBehavior;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final flingDecay:Landroidx/compose/animation/core/DecayAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/DecayAnimationSpec;)V
    .locals 1
    .param p1    # Landroidx/compose/animation/core/DecayAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "flingDecay"

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
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->flingDecay:Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public performFling(Landroidx/compose/foundation/gestures/ScrollScope;FLrs/c;)Ljava/lang/Object;
    .locals 17
    .param p1    # Landroidx/compose/foundation/gestures/ScrollScope;
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
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "F",
            "Lrs/c<",
            "-",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    instance-of v2, v1, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$1;

    .line 11
    .line 12
    iget v3, v2, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$1;->label:I

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
    iput v3, v2, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$1;->label:I

    .line 22
    .line 23
    :goto_0
    move-object v7, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v2, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$1;

    .line 26
    .line 27
    invoke-direct {v2, v0, v1}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$1;-><init>(Landroidx/compose/foundation/gestures/DefaultFlingBehavior;Lrs/c;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v1, v7, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget v3, v7, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$1;->label:I

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    if-ne v3, v4, :cond_1

    .line 43
    .line 44
    iget-object v2, v7, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    :cond_2
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const/high16 v3, 0x3f800000    # 1.0f

    .line 68
    .line 69
    cmpl-float v1, v1, v3

    .line 70
    .line 71
    if-lez v1, :cond_4

    .line 72
    .line 73
    new-instance v1, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 74
    .line 75
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 76
    .line 77
    .line 78
    move/from16 v3, p2

    .line 79
    .line 80
    iput v3, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 81
    .line 82
    new-instance v5, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 83
    .line 84
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 85
    .line 86
    .line 87
    const/16 v15, 0x1c

    .line 88
    .line 89
    const/16 v16, 0x0

    .line 90
    .line 91
    const/4 v8, 0x0

    .line 92
    const-wide/16 v10, 0x0

    .line 93
    .line 94
    const-wide/16 v12, 0x0

    .line 95
    .line 96
    const/4 v14, 0x0

    .line 97
    move/from16 v9, p2

    .line 98
    .line 99
    invoke-static/range {v8 .. v16}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    iget-object v6, v0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->flingDecay:Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 104
    .line 105
    new-instance v8, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;

    .line 106
    .line 107
    move-object/from16 v9, p1

    .line 108
    .line 109
    invoke-direct {v8, v5, v9, v1}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/jvm/internal/Ref$FloatRef;)V

    .line 110
    .line 111
    .line 112
    iput-object v1, v7, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$1;->L$0:Ljava/lang/Object;

    .line 113
    .line 114
    iput v4, v7, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$1;->label:I

    .line 115
    .line 116
    const/4 v5, 0x0

    .line 117
    const/4 v9, 0x2

    .line 118
    const/4 v10, 0x0

    .line 119
    move-object v4, v6

    .line 120
    move-object v6, v8

    .line 121
    move v8, v9

    .line 122
    move-object v9, v10

    .line 123
    invoke-static/range {v3 .. v9}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateDecay$default(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;ZLkotlin/jvm/functions/Function1;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    if-ne v3, v2, :cond_3

    .line 128
    .line 129
    return-object v2

    .line 130
    :cond_3
    move-object v2, v1

    .line 131
    :goto_2
    iget v1, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_4
    move/from16 v3, p2

    .line 135
    .line 136
    move v1, v3

    .line 137
    :goto_3
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->c(F)Ljava/lang/Float;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    return-object v1
.end method
