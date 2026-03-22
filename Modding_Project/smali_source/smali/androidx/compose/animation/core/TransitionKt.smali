.class public final Landroidx/compose/animation/core/TransitionKt;
.super Ljava/lang/Object;
.source "Transition.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final AnimationDebugDurationScale:I = 0x1


# direct methods
.method public static final animateDp(Landroidx/compose/animation/core/Transition;Lat/n;Ljava/lang/String;Lat/n;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .param p0    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0][0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lat/n<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;>;",
            "Ljava/lang/String;",
            "Lat/n<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/Dp;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation

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
    const-string v0, "targetValueByState"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const v0, 0xb02cd07

    .line 12
    .line 13
    .line 14
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, p6, 0x1

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object p1, Landroidx/compose/animation/core/TransitionKt$animateDp$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateDp$1;

    .line 22
    .line 23
    :cond_0
    and-int/lit8 p6, p6, 0x2

    .line 24
    .line 25
    if-eqz p6, :cond_1

    .line 26
    .line 27
    const-string p2, "DpAnimation"

    .line 28
    .line 29
    :cond_1
    move-object v5, p2

    .line 30
    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 31
    .line 32
    invoke-static {p2}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/Dp$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    and-int/lit8 p2, p5, 0xe

    .line 37
    .line 38
    shl-int/lit8 p5, p5, 0x3

    .line 39
    .line 40
    and-int/lit16 p6, p5, 0x380

    .line 41
    .line 42
    or-int/2addr p2, p6

    .line 43
    and-int/lit16 p6, p5, 0x1c00

    .line 44
    .line 45
    or-int/2addr p2, p6

    .line 46
    const p6, 0xe000

    .line 47
    .line 48
    .line 49
    and-int/2addr p5, p6

    .line 50
    or-int/2addr p2, p5

    .line 51
    const p5, -0x880d1ef

    .line 52
    .line 53
    .line 54
    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p5

    .line 61
    shr-int/lit8 p6, p2, 0x9

    .line 62
    .line 63
    and-int/lit8 p6, p6, 0x70

    .line 64
    .line 65
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {p3, p5, p4, v0}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p5

    .line 77
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p6

    .line 81
    invoke-interface {p3, p5, p4, p6}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    shr-int/lit8 p5, p2, 0x3

    .line 90
    .line 91
    and-int/lit8 p5, p5, 0x70

    .line 92
    .line 93
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p5

    .line 97
    invoke-interface {p1, p3, p4, p5}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    move-object v3, p1

    .line 102
    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 103
    .line 104
    and-int/lit8 p1, p2, 0xe

    .line 105
    .line 106
    shl-int/lit8 p2, p2, 0x6

    .line 107
    .line 108
    const/high16 p3, 0x70000

    .line 109
    .line 110
    and-int/2addr p2, p3

    .line 111
    or-int v7, p1, p2

    .line 112
    .line 113
    move-object v0, p0

    .line 114
    move-object v6, p4

    .line 115
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 120
    .line 121
    .line 122
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 123
    .line 124
    .line 125
    return-object p0
.end method

.method public static final animateFloat(Landroidx/compose/animation/core/Transition;Lat/n;Ljava/lang/String;Lat/n;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .param p0    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0][0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lat/n<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;>;",
            "Ljava/lang/String;",
            "Lat/n<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

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
    const-string v0, "targetValueByState"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const v0, -0x4fcbfb15

    .line 12
    .line 13
    .line 14
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, p6, 0x1

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object p1, Landroidx/compose/animation/core/TransitionKt$animateFloat$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateFloat$1;

    .line 22
    .line 23
    :cond_0
    and-int/lit8 p6, p6, 0x2

    .line 24
    .line 25
    if-eqz p6, :cond_1

    .line 26
    .line 27
    const-string p2, "FloatAnimation"

    .line 28
    .line 29
    :cond_1
    move-object v5, p2

    .line 30
    sget-object p2, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    .line 31
    .line 32
    invoke-static {p2}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    and-int/lit8 p2, p5, 0xe

    .line 37
    .line 38
    shl-int/lit8 p5, p5, 0x3

    .line 39
    .line 40
    and-int/lit16 p6, p5, 0x380

    .line 41
    .line 42
    or-int/2addr p2, p6

    .line 43
    and-int/lit16 p6, p5, 0x1c00

    .line 44
    .line 45
    or-int/2addr p2, p6

    .line 46
    const p6, 0xe000

    .line 47
    .line 48
    .line 49
    and-int/2addr p5, p6

    .line 50
    or-int/2addr p2, p5

    .line 51
    const p5, -0x880d1ef

    .line 52
    .line 53
    .line 54
    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p5

    .line 61
    shr-int/lit8 p6, p2, 0x9

    .line 62
    .line 63
    and-int/lit8 p6, p6, 0x70

    .line 64
    .line 65
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {p3, p5, p4, v0}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p5

    .line 77
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p6

    .line 81
    invoke-interface {p3, p5, p4, p6}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    shr-int/lit8 p5, p2, 0x3

    .line 90
    .line 91
    and-int/lit8 p5, p5, 0x70

    .line 92
    .line 93
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p5

    .line 97
    invoke-interface {p1, p3, p4, p5}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    move-object v3, p1

    .line 102
    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 103
    .line 104
    and-int/lit8 p1, p2, 0xe

    .line 105
    .line 106
    shl-int/lit8 p2, p2, 0x6

    .line 107
    .line 108
    const/high16 p3, 0x70000

    .line 109
    .line 110
    and-int/2addr p2, p3

    .line 111
    or-int v7, p1, p2

    .line 112
    .line 113
    move-object v0, p0

    .line 114
    move-object v6, p4

    .line 115
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 120
    .line 121
    .line 122
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 123
    .line 124
    .line 125
    return-object p0
.end method

.method public static final animateInt(Landroidx/compose/animation/core/Transition;Lat/n;Ljava/lang/String;Lat/n;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .param p0    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0][0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lat/n<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Lat/n<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

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
    const-string v0, "targetValueByState"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const v0, 0x4e9cdbfe

    .line 12
    .line 13
    .line 14
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, p6, 0x1

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object p1, Landroidx/compose/animation/core/TransitionKt$animateInt$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateInt$1;

    .line 22
    .line 23
    :cond_0
    and-int/lit8 p6, p6, 0x2

    .line 24
    .line 25
    if-eqz p6, :cond_1

    .line 26
    .line 27
    const-string p2, "IntAnimation"

    .line 28
    .line 29
    :cond_1
    move-object v5, p2

    .line 30
    sget-object p2, Lkotlin/jvm/internal/IntCompanionObject;->INSTANCE:Lkotlin/jvm/internal/IntCompanionObject;

    .line 31
    .line 32
    invoke-static {p2}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/IntCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    and-int/lit8 p2, p5, 0xe

    .line 37
    .line 38
    shl-int/lit8 p5, p5, 0x3

    .line 39
    .line 40
    and-int/lit16 p6, p5, 0x380

    .line 41
    .line 42
    or-int/2addr p2, p6

    .line 43
    and-int/lit16 p6, p5, 0x1c00

    .line 44
    .line 45
    or-int/2addr p2, p6

    .line 46
    const p6, 0xe000

    .line 47
    .line 48
    .line 49
    and-int/2addr p5, p6

    .line 50
    or-int/2addr p2, p5

    .line 51
    const p5, -0x880d1ef

    .line 52
    .line 53
    .line 54
    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p5

    .line 61
    shr-int/lit8 p6, p2, 0x9

    .line 62
    .line 63
    and-int/lit8 p6, p6, 0x70

    .line 64
    .line 65
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {p3, p5, p4, v0}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p5

    .line 77
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p6

    .line 81
    invoke-interface {p3, p5, p4, p6}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    shr-int/lit8 p5, p2, 0x3

    .line 90
    .line 91
    and-int/lit8 p5, p5, 0x70

    .line 92
    .line 93
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p5

    .line 97
    invoke-interface {p1, p3, p4, p5}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    move-object v3, p1

    .line 102
    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 103
    .line 104
    and-int/lit8 p1, p2, 0xe

    .line 105
    .line 106
    shl-int/lit8 p2, p2, 0x6

    .line 107
    .line 108
    const/high16 p3, 0x70000

    .line 109
    .line 110
    and-int/2addr p2, p3

    .line 111
    or-int v7, p1, p2

    .line 112
    .line 113
    move-object v0, p0

    .line 114
    move-object v6, p4

    .line 115
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 120
    .line 121
    .line 122
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 123
    .line 124
    .line 125
    return-object p0
.end method

.method public static final animateIntOffset(Landroidx/compose/animation/core/Transition;Lat/n;Ljava/lang/String;Lat/n;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .param p0    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0][0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lat/n<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;>;",
            "Ljava/lang/String;",
            "Lat/n<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation

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
    const-string v0, "targetValueByState"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const v0, 0x2e42d4f1

    .line 12
    .line 13
    .line 14
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, p6, 0x1

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object p1, Landroidx/compose/animation/core/TransitionKt$animateIntOffset$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateIntOffset$1;

    .line 22
    .line 23
    :cond_0
    and-int/lit8 p6, p6, 0x2

    .line 24
    .line 25
    if-eqz p6, :cond_1

    .line 26
    .line 27
    const-string p2, "IntOffsetAnimation"

    .line 28
    .line 29
    :cond_1
    move-object v5, p2

    .line 30
    sget-object p2, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 31
    .line 32
    invoke-static {p2}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/IntOffset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    and-int/lit8 p2, p5, 0xe

    .line 37
    .line 38
    shl-int/lit8 p5, p5, 0x3

    .line 39
    .line 40
    and-int/lit16 p6, p5, 0x380

    .line 41
    .line 42
    or-int/2addr p2, p6

    .line 43
    and-int/lit16 p6, p5, 0x1c00

    .line 44
    .line 45
    or-int/2addr p2, p6

    .line 46
    const p6, 0xe000

    .line 47
    .line 48
    .line 49
    and-int/2addr p5, p6

    .line 50
    or-int/2addr p2, p5

    .line 51
    const p5, -0x880d1ef

    .line 52
    .line 53
    .line 54
    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p5

    .line 61
    shr-int/lit8 p6, p2, 0x9

    .line 62
    .line 63
    and-int/lit8 p6, p6, 0x70

    .line 64
    .line 65
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {p3, p5, p4, v0}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p5

    .line 77
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p6

    .line 81
    invoke-interface {p3, p5, p4, p6}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    shr-int/lit8 p5, p2, 0x3

    .line 90
    .line 91
    and-int/lit8 p5, p5, 0x70

    .line 92
    .line 93
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p5

    .line 97
    invoke-interface {p1, p3, p4, p5}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    move-object v3, p1

    .line 102
    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 103
    .line 104
    and-int/lit8 p1, p2, 0xe

    .line 105
    .line 106
    shl-int/lit8 p2, p2, 0x6

    .line 107
    .line 108
    const/high16 p3, 0x70000

    .line 109
    .line 110
    and-int/2addr p2, p3

    .line 111
    or-int v7, p1, p2

    .line 112
    .line 113
    move-object v0, p0

    .line 114
    move-object v6, p4

    .line 115
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 120
    .line 121
    .line 122
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 123
    .line 124
    .line 125
    return-object p0
.end method

.method public static final animateIntSize(Landroidx/compose/animation/core/Transition;Lat/n;Ljava/lang/String;Lat/n;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .param p0    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0][0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lat/n<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;>;",
            "Ljava/lang/String;",
            "Lat/n<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation

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
    const-string v0, "targetValueByState"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const v0, -0x7d6a5f61

    .line 12
    .line 13
    .line 14
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, p6, 0x1

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object p1, Landroidx/compose/animation/core/TransitionKt$animateIntSize$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateIntSize$1;

    .line 22
    .line 23
    :cond_0
    and-int/lit8 p6, p6, 0x2

    .line 24
    .line 25
    if-eqz p6, :cond_1

    .line 26
    .line 27
    const-string p2, "IntSizeAnimation"

    .line 28
    .line 29
    :cond_1
    move-object v5, p2

    .line 30
    sget-object p2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 31
    .line 32
    invoke-static {p2}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/IntSize$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    and-int/lit8 p2, p5, 0xe

    .line 37
    .line 38
    shl-int/lit8 p5, p5, 0x3

    .line 39
    .line 40
    and-int/lit16 p6, p5, 0x380

    .line 41
    .line 42
    or-int/2addr p2, p6

    .line 43
    and-int/lit16 p6, p5, 0x1c00

    .line 44
    .line 45
    or-int/2addr p2, p6

    .line 46
    const p6, 0xe000

    .line 47
    .line 48
    .line 49
    and-int/2addr p5, p6

    .line 50
    or-int/2addr p2, p5

    .line 51
    const p5, -0x880d1ef

    .line 52
    .line 53
    .line 54
    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p5

    .line 61
    shr-int/lit8 p6, p2, 0x9

    .line 62
    .line 63
    and-int/lit8 p6, p6, 0x70

    .line 64
    .line 65
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {p3, p5, p4, v0}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p5

    .line 77
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p6

    .line 81
    invoke-interface {p3, p5, p4, p6}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    shr-int/lit8 p5, p2, 0x3

    .line 90
    .line 91
    and-int/lit8 p5, p5, 0x70

    .line 92
    .line 93
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p5

    .line 97
    invoke-interface {p1, p3, p4, p5}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    move-object v3, p1

    .line 102
    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 103
    .line 104
    and-int/lit8 p1, p2, 0xe

    .line 105
    .line 106
    shl-int/lit8 p2, p2, 0x6

    .line 107
    .line 108
    const/high16 p3, 0x70000

    .line 109
    .line 110
    and-int/2addr p2, p3

    .line 111
    or-int v7, p1, p2

    .line 112
    .line 113
    move-object v0, p0

    .line 114
    move-object v6, p4

    .line 115
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 120
    .line 121
    .line 122
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 123
    .line 124
    .line 125
    return-object p0
.end method

.method public static final animateOffset(Landroidx/compose/animation/core/Transition;Lat/n;Ljava/lang/String;Lat/n;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .param p0    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0][0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lat/n<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;>;",
            "Ljava/lang/String;",
            "Lat/n<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation

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
    const-string v0, "targetValueByState"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const v0, 0x7be30d0e

    .line 12
    .line 13
    .line 14
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, p6, 0x1

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object p1, Landroidx/compose/animation/core/TransitionKt$animateOffset$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateOffset$1;

    .line 22
    .line 23
    :cond_0
    and-int/lit8 p6, p6, 0x2

    .line 24
    .line 25
    if-eqz p6, :cond_1

    .line 26
    .line 27
    const-string p2, "OffsetAnimation"

    .line 28
    .line 29
    :cond_1
    move-object v5, p2

    .line 30
    sget-object p2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 31
    .line 32
    invoke-static {p2}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Offset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    and-int/lit8 p2, p5, 0xe

    .line 37
    .line 38
    shl-int/lit8 p5, p5, 0x3

    .line 39
    .line 40
    and-int/lit16 p6, p5, 0x380

    .line 41
    .line 42
    or-int/2addr p2, p6

    .line 43
    and-int/lit16 p6, p5, 0x1c00

    .line 44
    .line 45
    or-int/2addr p2, p6

    .line 46
    const p6, 0xe000

    .line 47
    .line 48
    .line 49
    and-int/2addr p5, p6

    .line 50
    or-int/2addr p2, p5

    .line 51
    const p5, -0x880d1ef

    .line 52
    .line 53
    .line 54
    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p5

    .line 61
    shr-int/lit8 p6, p2, 0x9

    .line 62
    .line 63
    and-int/lit8 p6, p6, 0x70

    .line 64
    .line 65
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {p3, p5, p4, v0}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p5

    .line 77
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p6

    .line 81
    invoke-interface {p3, p5, p4, p6}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    shr-int/lit8 p5, p2, 0x3

    .line 90
    .line 91
    and-int/lit8 p5, p5, 0x70

    .line 92
    .line 93
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p5

    .line 97
    invoke-interface {p1, p3, p4, p5}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    move-object v3, p1

    .line 102
    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 103
    .line 104
    and-int/lit8 p1, p2, 0xe

    .line 105
    .line 106
    shl-int/lit8 p2, p2, 0x6

    .line 107
    .line 108
    const/high16 p3, 0x70000

    .line 109
    .line 110
    and-int/2addr p2, p3

    .line 111
    or-int v7, p1, p2

    .line 112
    .line 113
    move-object v0, p0

    .line 114
    move-object v6, p4

    .line 115
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 120
    .line 121
    .line 122
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 123
    .line 124
    .line 125
    return-object p0
.end method

.method public static final animateRect(Landroidx/compose/animation/core/Transition;Lat/n;Ljava/lang/String;Lat/n;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .param p0    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0][0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lat/n<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;>;",
            "Ljava/lang/String;",
            "Lat/n<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation

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
    const-string v0, "targetValueByState"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const v0, 0x592f64df

    .line 12
    .line 13
    .line 14
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, p6, 0x1

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object p1, Landroidx/compose/animation/core/TransitionKt$animateRect$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateRect$1;

    .line 22
    .line 23
    :cond_0
    and-int/lit8 p6, p6, 0x2

    .line 24
    .line 25
    if-eqz p6, :cond_1

    .line 26
    .line 27
    const-string p2, "RectAnimation"

    .line 28
    .line 29
    :cond_1
    move-object v5, p2

    .line 30
    sget-object p2, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    .line 31
    .line 32
    invoke-static {p2}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Rect$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    and-int/lit8 p2, p5, 0xe

    .line 37
    .line 38
    shl-int/lit8 p5, p5, 0x3

    .line 39
    .line 40
    and-int/lit16 p6, p5, 0x380

    .line 41
    .line 42
    or-int/2addr p2, p6

    .line 43
    and-int/lit16 p6, p5, 0x1c00

    .line 44
    .line 45
    or-int/2addr p2, p6

    .line 46
    const p6, 0xe000

    .line 47
    .line 48
    .line 49
    and-int/2addr p5, p6

    .line 50
    or-int/2addr p2, p5

    .line 51
    const p5, -0x880d1ef

    .line 52
    .line 53
    .line 54
    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p5

    .line 61
    shr-int/lit8 p6, p2, 0x9

    .line 62
    .line 63
    and-int/lit8 p6, p6, 0x70

    .line 64
    .line 65
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {p3, p5, p4, v0}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p5

    .line 77
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p6

    .line 81
    invoke-interface {p3, p5, p4, p6}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    shr-int/lit8 p5, p2, 0x3

    .line 90
    .line 91
    and-int/lit8 p5, p5, 0x70

    .line 92
    .line 93
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p5

    .line 97
    invoke-interface {p1, p3, p4, p5}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    move-object v3, p1

    .line 102
    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 103
    .line 104
    and-int/lit8 p1, p2, 0xe

    .line 105
    .line 106
    shl-int/lit8 p2, p2, 0x6

    .line 107
    .line 108
    const/high16 p3, 0x70000

    .line 109
    .line 110
    and-int/2addr p2, p3

    .line 111
    or-int v7, p1, p2

    .line 112
    .line 113
    move-object v0, p0

    .line 114
    move-object v6, p4

    .line 115
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 120
    .line 121
    .line 122
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 123
    .line 124
    .line 125
    return-object p0
.end method

.method public static final animateSize(Landroidx/compose/animation/core/Transition;Lat/n;Ljava/lang/String;Lat/n;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .param p0    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0][0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lat/n<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/geometry/Size;",
            ">;>;",
            "Ljava/lang/String;",
            "Lat/n<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/geometry/Size;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Size;",
            ">;"
        }
    .end annotation

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
    const-string v0, "targetValueByState"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const v0, -0x2fd0c404

    .line 12
    .line 13
    .line 14
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, p6, 0x1

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object p1, Landroidx/compose/animation/core/TransitionKt$animateSize$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateSize$1;

    .line 22
    .line 23
    :cond_0
    and-int/lit8 p6, p6, 0x2

    .line 24
    .line 25
    if-eqz p6, :cond_1

    .line 26
    .line 27
    const-string p2, "SizeAnimation"

    .line 28
    .line 29
    :cond_1
    move-object v5, p2

    .line 30
    sget-object p2, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 31
    .line 32
    invoke-static {p2}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Size$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    and-int/lit8 p2, p5, 0xe

    .line 37
    .line 38
    shl-int/lit8 p5, p5, 0x3

    .line 39
    .line 40
    and-int/lit16 p6, p5, 0x380

    .line 41
    .line 42
    or-int/2addr p2, p6

    .line 43
    and-int/lit16 p6, p5, 0x1c00

    .line 44
    .line 45
    or-int/2addr p2, p6

    .line 46
    const p6, 0xe000

    .line 47
    .line 48
    .line 49
    and-int/2addr p5, p6

    .line 50
    or-int/2addr p2, p5

    .line 51
    const p5, -0x880d1ef

    .line 52
    .line 53
    .line 54
    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p5

    .line 61
    shr-int/lit8 p6, p2, 0x9

    .line 62
    .line 63
    and-int/lit8 p6, p6, 0x70

    .line 64
    .line 65
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {p3, p5, p4, v0}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p5

    .line 77
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p6

    .line 81
    invoke-interface {p3, p5, p4, p6}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    shr-int/lit8 p5, p2, 0x3

    .line 90
    .line 91
    and-int/lit8 p5, p5, 0x70

    .line 92
    .line 93
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p5

    .line 97
    invoke-interface {p1, p3, p4, p5}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    move-object v3, p1

    .line 102
    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 103
    .line 104
    and-int/lit8 p1, p2, 0xe

    .line 105
    .line 106
    shl-int/lit8 p2, p2, 0x6

    .line 107
    .line 108
    const/high16 p3, 0x70000

    .line 109
    .line 110
    and-int/2addr p2, p3

    .line 111
    or-int v7, p1, p2

    .line 112
    .line 113
    move-object v0, p0

    .line 114
    move-object v6, p4

    .line 115
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 120
    .line 121
    .line 122
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 123
    .line 124
    .line 125
    return-object p0
.end method

.method public static final animateValue(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Lat/n;Ljava/lang/String;Lat/n;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .param p0    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/animation/core/TwoWayConverter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0][0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;",
            "Lat/n<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "TT;>;>;",
            "Ljava/lang/String;",
            "Lat/n<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

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
    const-string v0, "typeConverter"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "targetValueByState"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const v0, -0x880d1ef

    .line 17
    .line 18
    .line 19
    invoke-interface {p5, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 20
    .line 21
    .line 22
    and-int/lit8 v0, p7, 0x2

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    sget-object p2, Landroidx/compose/animation/core/TransitionKt$animateValue$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateValue$1;

    .line 27
    .line 28
    :cond_0
    and-int/lit8 p7, p7, 0x4

    .line 29
    .line 30
    if-eqz p7, :cond_1

    .line 31
    .line 32
    const-string p3, "ValueAnimation"

    .line 33
    .line 34
    :cond_1
    move-object v5, p3

    .line 35
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    shr-int/lit8 p7, p6, 0x9

    .line 40
    .line 41
    and-int/lit8 p7, p7, 0x70

    .line 42
    .line 43
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {p4, p3, p5, v0}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p7

    .line 59
    invoke-interface {p4, p3, p5, p7}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    shr-int/lit8 p4, p6, 0x3

    .line 68
    .line 69
    and-int/lit8 p4, p4, 0x70

    .line 70
    .line 71
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object p4

    .line 75
    invoke-interface {p2, p3, p5, p4}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    move-object v3, p2

    .line 80
    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 81
    .line 82
    and-int/lit8 p2, p6, 0xe

    .line 83
    .line 84
    const p3, 0xe000

    .line 85
    .line 86
    .line 87
    shl-int/lit8 p4, p6, 0x9

    .line 88
    .line 89
    and-int/2addr p3, p4

    .line 90
    or-int/2addr p2, p3

    .line 91
    shl-int/lit8 p3, p6, 0x6

    .line 92
    .line 93
    const/high16 p4, 0x70000

    .line 94
    .line 95
    and-int/2addr p3, p4

    .line 96
    or-int v7, p2, p3

    .line 97
    .line 98
    move-object v0, p0

    .line 99
    move-object v4, p1

    .line 100
    move-object v6, p5

    .line 101
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 106
    .line 107
    .line 108
    return-object p0
.end method

.method public static final createChildTransition(Landroidx/compose/animation/core/Transition;Ljava/lang/String;Lat/n;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;
    .locals 6
    .param p0    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/animation/core/ExperimentalTransitionApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Ljava/lang/String;",
            "Lat/n<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;"
        }
    .end annotation

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
    const-string v0, "transformToChildState"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const v0, 0x48730564

    .line 12
    .line 13
    .line 14
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 15
    .line 16
    .line 17
    and-int/lit8 p5, p5, 0x1

    .line 18
    .line 19
    if-eqz p5, :cond_0

    .line 20
    .line 21
    const-string p1, "ChildTransition"

    .line 22
    .line 23
    :cond_0
    move-object v3, p1

    .line 24
    and-int/lit8 p1, p4, 0xe

    .line 25
    .line 26
    const p5, 0x44faf204

    .line 27
    .line 28
    .line 29
    invoke-interface {p3, p5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p5

    .line 36
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-nez p5, :cond_1

    .line 41
    .line 42
    sget-object p5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 43
    .line 44
    invoke-virtual {p5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p5

    .line 48
    if-ne v0, p5, :cond_2

    .line 49
    .line 50
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 61
    .line 62
    .line 63
    move-result p5

    .line 64
    if-eqz p5, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :cond_3
    shr-int/lit8 p5, p4, 0x3

    .line 71
    .line 72
    and-int/lit8 p5, p5, 0x70

    .line 73
    .line 74
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-interface {p2, v0, p3, v1}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p5

    .line 90
    invoke-interface {p2, v0, p3, p5}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    shl-int/lit8 p2, p4, 0x6

    .line 95
    .line 96
    and-int/lit16 p2, p2, 0x1c00

    .line 97
    .line 98
    or-int v5, p1, p2

    .line 99
    .line 100
    move-object v0, p0

    .line 101
    move-object v4, p3

    .line 102
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/TransitionKt;->createChildTransitionInternal(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 107
    .line 108
    .line 109
    return-object p0
.end method

.method public static final createChildTransitionInternal(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;
    .locals 4
    .param p0    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;TT;TT;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;"
        }
    .end annotation

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
    const-string v0, "childLabel"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const v0, -0xbd1ef36

    .line 12
    .line 13
    .line 14
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 15
    .line 16
    .line 17
    const v0, 0x44faf204

    .line 18
    .line 19
    .line 20
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p4, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-ne v1, v0, :cond_1

    .line 40
    .line 41
    :cond_0
    new-instance v1, Landroidx/compose/animation/core/Transition;

    .line 42
    .line 43
    new-instance v0, Landroidx/compose/animation/core/MutableTransitionState;

    .line 44
    .line 45
    invoke-direct {v0, p1}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getLabel()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v3, " > "

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-direct {v1, v0, p3}, Landroidx/compose/animation/core/Transition;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 79
    .line 80
    .line 81
    check-cast v1, Landroidx/compose/animation/core/Transition;

    .line 82
    .line 83
    new-instance p3, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1;

    .line 84
    .line 85
    invoke-direct {p3, p0, v1}, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition;)V

    .line 86
    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    invoke-static {v1, p3, p4, v0}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    if-eqz p3, :cond_2

    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getLastSeekedTimeNanos$animation_core_release()J

    .line 99
    .line 100
    .line 101
    move-result-wide v2

    .line 102
    invoke-virtual {v1, p1, p2, v2, v3}, Landroidx/compose/animation/core/Transition;->seek(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    shr-int/lit8 p0, p5, 0x3

    .line 107
    .line 108
    and-int/lit8 p0, p0, 0x8

    .line 109
    .line 110
    shr-int/lit8 p1, p5, 0x6

    .line 111
    .line 112
    and-int/lit8 p1, p1, 0xe

    .line 113
    .line 114
    or-int/2addr p0, p1

    .line 115
    invoke-virtual {v1, p2, p4, p0}, Landroidx/compose/animation/core/Transition;->updateTarget$animation_core_release(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v0}, Landroidx/compose/animation/core/Transition;->setSeeking$animation_core_release(Z)V

    .line 119
    .line 120
    .line 121
    :goto_0
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 122
    .line 123
    .line 124
    return-object v1
.end method

.method public static final createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;
    .locals 0
    .param p0    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/animation/core/TwoWayConverter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/animation/core/InternalAnimationApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.DeferredAnimation<TT;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p4, "<this>"

    .line 2
    .line 3
    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p4, "typeConverter"

    .line 7
    .line 8
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const p4, -0x662b6f20

    .line 12
    .line 13
    .line 14
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 15
    .line 16
    .line 17
    and-int/lit8 p4, p5, 0x2

    .line 18
    .line 19
    if-eqz p4, :cond_0

    .line 20
    .line 21
    const-string p2, "DeferredAnimation"

    .line 22
    .line 23
    :cond_0
    const p4, 0x44faf204

    .line 24
    .line 25
    .line 26
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p4

    .line 33
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p5

    .line 37
    if-nez p4, :cond_1

    .line 38
    .line 39
    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 40
    .line 41
    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    if-ne p5, p4, :cond_2

    .line 46
    .line 47
    :cond_1
    new-instance p5, Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 48
    .line 49
    invoke-direct {p5, p0, p1, p2}, Landroidx/compose/animation/core/Transition$DeferredAnimation;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p3, p5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 56
    .line 57
    .line 58
    check-cast p5, Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 59
    .line 60
    new-instance p1, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$1;

    .line 61
    .line 62
    invoke-direct {p1, p0, p5}, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$DeferredAnimation;)V

    .line 63
    .line 64
    .line 65
    const/16 p2, 0x8

    .line 66
    .line 67
    invoke-static {p5, p1, p3, p2}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_3

    .line 75
    .line 76
    invoke-virtual {p5}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->setupSeeking$animation_core_release()V

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 80
    .line 81
    .line 82
    return-object p5
.end method

.method public static final createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 7
    .param p0    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/animation/core/TwoWayConverter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;TT;TT;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "TT;>;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p7, "<this>"

    .line 2
    .line 3
    invoke-static {p0, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p7, "animationSpec"

    .line 7
    .line 8
    invoke-static {p3, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p7, "typeConverter"

    .line 12
    .line 13
    invoke-static {p4, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p7, "label"

    .line 17
    .line 18
    invoke-static {p5, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const p7, -0x122b33ce

    .line 22
    .line 23
    .line 24
    invoke-interface {p6, p7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 25
    .line 26
    .line 27
    const p7, 0x44faf204

    .line 28
    .line 29
    .line 30
    invoke-interface {p6, p7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p6, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p7

    .line 37
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-nez p7, :cond_0

    .line 42
    .line 43
    sget-object p7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 44
    .line 45
    invoke-virtual {p7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p7

    .line 49
    if-ne v0, p7, :cond_1

    .line 50
    .line 51
    :cond_0
    new-instance v0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 52
    .line 53
    invoke-static {p4, p2}, Landroidx/compose/animation/core/AnimationStateKt;->createZeroVectorFrom(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;)Landroidx/compose/animation/core/AnimationVector;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    move-object v1, v0

    .line 58
    move-object v2, p0

    .line 59
    move-object v3, p1

    .line 60
    move-object v5, p4

    .line 61
    move-object v6, p5

    .line 62
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;-><init>(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p6, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 69
    .line 70
    .line 71
    check-cast v0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 74
    .line 75
    .line 76
    move-result p4

    .line 77
    if-eqz p4, :cond_2

    .line 78
    .line 79
    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->updateInitialAndTargetValue$animation_core_release(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v0, p2, p3}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->updateTargetValue$animation_core_release(Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    new-instance p1, Landroidx/compose/animation/core/TransitionKt$createTransitionAnimation$1;

    .line 87
    .line 88
    invoke-direct {p1, p0, v0}, Landroidx/compose/animation/core/TransitionKt$createTransitionAnimation$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$TransitionAnimationState;)V

    .line 89
    .line 90
    .line 91
    const/4 p0, 0x0

    .line 92
    invoke-static {v0, p1, p6, p0}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 93
    .line 94
    .line 95
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 96
    .line 97
    .line 98
    return-object v0
.end method

.method public static final updateTransition(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;
    .locals 0
    .param p0    # Landroidx/compose/animation/core/MutableTransitionState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/MutableTransitionState<",
            "TT;>;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "transitionState"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x34a03233

    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 p3, p4, 0x2

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    const p3, 0x44faf204

    .line 10
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 11
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p3

    .line 12
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p4

    if-nez p3, :cond_1

    .line 13
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p3

    if-ne p4, p3, :cond_2

    .line 14
    :cond_1
    new-instance p4, Landroidx/compose/animation/core/Transition;

    invoke-direct {p4, p0, p1}, Landroidx/compose/animation/core/Transition;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;)V

    .line 15
    invoke-interface {p2, p4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 16
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 17
    check-cast p4, Landroidx/compose/animation/core/Transition;

    .line 18
    invoke-virtual {p0}, Landroidx/compose/animation/core/MutableTransitionState;->getTargetState()Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p4, p0, p2, p1}, Landroidx/compose/animation/core/Transition;->animateTo$animation_core_release(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 19
    new-instance p0, Landroidx/compose/animation/core/TransitionKt$updateTransition$2;

    invoke-direct {p0, p4}, Landroidx/compose/animation/core/TransitionKt$updateTransition$2;-><init>(Landroidx/compose/animation/core/Transition;)V

    invoke-static {p4, p0, p2, p1}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p4
.end method

.method public static final updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const v0, 0x78f2a0ad

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    const p4, -0x1d58f75c

    .line 1
    invoke-interface {p2, p4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p4

    .line 3
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne p4, v0, :cond_1

    .line 4
    new-instance p4, Landroidx/compose/animation/core/Transition;

    invoke-direct {p4, p0, p1}, Landroidx/compose/animation/core/Transition;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p2, p4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 6
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 7
    check-cast p4, Landroidx/compose/animation/core/Transition;

    and-int/lit8 p1, p3, 0x8

    or-int/lit8 p1, p1, 0x30

    and-int/lit8 p3, p3, 0xe

    or-int/2addr p1, p3

    .line 8
    invoke-virtual {p4, p0, p2, p1}, Landroidx/compose/animation/core/Transition;->animateTo$animation_core_release(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 9
    new-instance p0, Landroidx/compose/animation/core/TransitionKt$updateTransition$1;

    invoke-direct {p0, p4}, Landroidx/compose/animation/core/TransitionKt$updateTransition$1;-><init>(Landroidx/compose/animation/core/Transition;)V

    const/4 p1, 0x6

    invoke-static {p4, p0, p2, p1}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p4
.end method
