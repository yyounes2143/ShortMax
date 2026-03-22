.class public final Landroidx/compose/animation/core/AnimateAsStateKt;
.super Ljava/lang/Object;
.source "AnimateAsState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final defaultAnimation:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final dpDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final intDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final intOffsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final intSizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final offsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final rectDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final sizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/geometry/Size;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v1, v2, v0, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->defaultAnimation:Landroidx/compose/animation/core/SpringSpec;

    .line 9
    .line 10
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/Dp$Companion;)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v3, 0x3

    .line 21
    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->dpDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 26
    .line 27
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 28
    .line 29
    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/geometry/Size$Companion;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->sizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 42
    .line 43
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 44
    .line 45
    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/geometry/Offset$Companion;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->offsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 58
    .line 59
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    .line 60
    .line 61
    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/geometry/Rect$Companion;)Landroidx/compose/ui/geometry/Rect;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->rectDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 70
    .line 71
    sget-object v0, Lkotlin/jvm/internal/IntCompanionObject;->INSTANCE:Lkotlin/jvm/internal/IntCompanionObject;

    .line 72
    .line 73
    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Lkotlin/jvm/internal/IntCompanionObject;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->intDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 86
    .line 87
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 88
    .line 89
    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/IntOffset$Companion;)J

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->intOffsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 102
    .line 103
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 104
    .line 105
    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/IntSize$Companion;)J

    .line 106
    .line 107
    .line 108
    move-result-wide v4

    .line 109
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->intSizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 118
    .line 119
    return-void
.end method

.method public static final synthetic access$animateValueAsState$lambda-3(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState$lambda-3(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$animateValueAsState$lambda-4(Landroidx/compose/runtime/State;)Landroidx/compose/animation/core/AnimationSpec;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState$lambda-4(Landroidx/compose/runtime/State;)Landroidx/compose/animation/core/AnimationSpec;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final animateDpAsState-Kz89ssw(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .param p1    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/Dp;",
            "Lkotlin/Unit;",
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
    const v0, 0x29f7c821

    .line 2
    .line 3
    .line 4
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p5, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Landroidx/compose/animation/core/AnimateAsStateKt;->dpDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 12
    .line 13
    :cond_0
    move-object v2, p1

    .line 14
    and-int/lit8 p1, p5, 0x4

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    :cond_1
    move-object v4, p2

    .line 20
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object p0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 25
    .line 26
    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/Dp$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    and-int/lit8 p0, p4, 0xe

    .line 31
    .line 32
    shl-int/lit8 p1, p4, 0x3

    .line 33
    .line 34
    and-int/lit16 p1, p1, 0x380

    .line 35
    .line 36
    or-int/2addr p0, p1

    .line 37
    shl-int/lit8 p1, p4, 0x6

    .line 38
    .line 39
    const p2, 0xe000

    .line 40
    .line 41
    .line 42
    and-int/2addr p1, p2

    .line 43
    or-int v6, p0, p1

    .line 44
    .line 45
    const/16 v7, 0x8

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    move-object v5, p3

    .line 49
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 54
    .line 55
    .line 56
    return-object p0
.end method

.method public static final animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 9
    .param p1    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            "(F",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;F",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
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
    const v0, 0x4111279b

    .line 2
    .line 3
    .line 4
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p6, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Landroidx/compose/animation/core/AnimateAsStateKt;->defaultAnimation:Landroidx/compose/animation/core/SpringSpec;

    .line 12
    .line 13
    :cond_0
    and-int/lit8 v0, p6, 0x4

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const p2, 0x3c23d70a    # 0.01f

    .line 18
    .line 19
    .line 20
    :cond_1
    and-int/lit8 p6, p6, 0x8

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    if-eqz p6, :cond_2

    .line 24
    .line 25
    move-object v5, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    move-object v5, p3

    .line 28
    :goto_0
    const p3, 0x3226a54d    # 9.700057E-9f

    .line 29
    .line 30
    .line 31
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 32
    .line 33
    .line 34
    sget-object p3, Landroidx/compose/animation/core/AnimateAsStateKt;->defaultAnimation:Landroidx/compose/animation/core/SpringSpec;

    .line 35
    .line 36
    const/4 p6, 0x3

    .line 37
    if-ne p1, p3, :cond_5

    .line 38
    .line 39
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const p3, 0x44faf204

    .line 44
    .line 45
    .line 46
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-ne p3, p1, :cond_4

    .line 66
    .line 67
    :cond_3
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const/4 p3, 0x0

    .line 72
    invoke-static {p3, p3, p1, p6, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_4
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 80
    .line 81
    .line 82
    move-object p1, p3

    .line 83
    check-cast p1, Landroidx/compose/animation/core/AnimationSpec;

    .line 84
    .line 85
    :cond_5
    move-object v3, p1

    .line 86
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 87
    .line 88
    .line 89
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    sget-object p0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    .line 94
    .line 95
    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    and-int/lit8 p0, p5, 0xe

    .line 104
    .line 105
    shl-int/lit8 p1, p5, 0x3

    .line 106
    .line 107
    and-int/lit16 p2, p1, 0x1c00

    .line 108
    .line 109
    or-int/2addr p0, p2

    .line 110
    const p2, 0xe000

    .line 111
    .line 112
    .line 113
    and-int/2addr p1, p2

    .line 114
    or-int v7, p0, p1

    .line 115
    .line 116
    const/4 v8, 0x0

    .line 117
    move-object v6, p4

    .line 118
    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 123
    .line 124
    .line 125
    return-object p0
.end method

.method public static final animateIntAsState(ILandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .param p1    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
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
    const v0, -0x323940f5    # -4.1680112E8f

    .line 2
    .line 3
    .line 4
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p5, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Landroidx/compose/animation/core/AnimateAsStateKt;->intDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 12
    .line 13
    :cond_0
    move-object v2, p1

    .line 14
    and-int/lit8 p1, p5, 0x4

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    :cond_1
    move-object v4, p2

    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object p0, Lkotlin/jvm/internal/IntCompanionObject;->INSTANCE:Lkotlin/jvm/internal/IntCompanionObject;

    .line 25
    .line 26
    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/IntCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    and-int/lit8 p0, p4, 0xe

    .line 31
    .line 32
    shl-int/lit8 p1, p4, 0x3

    .line 33
    .line 34
    and-int/lit16 p1, p1, 0x380

    .line 35
    .line 36
    or-int/2addr p0, p1

    .line 37
    shl-int/lit8 p1, p4, 0x6

    .line 38
    .line 39
    const p2, 0xe000

    .line 40
    .line 41
    .line 42
    and-int/2addr p1, p2

    .line 43
    or-int v6, p0, p1

    .line 44
    .line 45
    const/16 v7, 0x8

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    move-object v5, p3

    .line 49
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 54
    .line 55
    .line 56
    return-object p0
.end method

.method public static final animateIntOffsetAsState-8f6pmRE(JLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .param p2    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            "(J",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/IntOffset;",
            "Lkotlin/Unit;",
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
    const v0, 0x3c38112b

    .line 2
    .line 3
    .line 4
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p6, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object p2, Landroidx/compose/animation/core/AnimateAsStateKt;->intOffsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 12
    .line 13
    :cond_0
    move-object v2, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    const/4 p3, 0x0

    .line 19
    :cond_1
    move-object v4, p3

    .line 20
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 25
    .line 26
    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/IntOffset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    and-int/lit8 p0, p5, 0xe

    .line 31
    .line 32
    shl-int/lit8 p1, p5, 0x3

    .line 33
    .line 34
    and-int/lit16 p1, p1, 0x380

    .line 35
    .line 36
    or-int/2addr p0, p1

    .line 37
    shl-int/lit8 p1, p5, 0x6

    .line 38
    .line 39
    const p2, 0xe000

    .line 40
    .line 41
    .line 42
    and-int/2addr p1, p2

    .line 43
    or-int v6, p0, p1

    .line 44
    .line 45
    const/16 v7, 0x8

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    move-object v5, p4

    .line 49
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 54
    .line 55
    .line 56
    return-object p0
.end method

.method public static final animateIntSizeAsState-zTRF_AQ(JLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .param p2    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            "(J",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lkotlin/Unit;",
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
    const v0, -0x684347d5

    .line 2
    .line 3
    .line 4
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p6, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object p2, Landroidx/compose/animation/core/AnimateAsStateKt;->intSizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 12
    .line 13
    :cond_0
    move-object v2, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    const/4 p3, 0x0

    .line 19
    :cond_1
    move-object v4, p3

    .line 20
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object p0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 25
    .line 26
    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/IntSize$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    and-int/lit8 p0, p5, 0xe

    .line 31
    .line 32
    shl-int/lit8 p1, p5, 0x3

    .line 33
    .line 34
    and-int/lit16 p1, p1, 0x380

    .line 35
    .line 36
    or-int/2addr p0, p1

    .line 37
    shl-int/lit8 p1, p5, 0x6

    .line 38
    .line 39
    const p2, 0xe000

    .line 40
    .line 41
    .line 42
    and-int/2addr p1, p2

    .line 43
    or-int v6, p0, p1

    .line 44
    .line 45
    const/16 v7, 0x8

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    move-object v5, p4

    .line 49
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 54
    .line 55
    .line 56
    return-object p0
.end method

.method public static final animateOffsetAsState-N6fFfp4(JLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .param p2    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            "(J",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
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
    const v0, -0x1b35d66d

    .line 2
    .line 3
    .line 4
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p6, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object p2, Landroidx/compose/animation/core/AnimateAsStateKt;->offsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 12
    .line 13
    :cond_0
    move-object v2, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    const/4 p3, 0x0

    .line 19
    :cond_1
    move-object v4, p3

    .line 20
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 25
    .line 26
    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Offset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    and-int/lit8 p0, p5, 0xe

    .line 31
    .line 32
    shl-int/lit8 p1, p5, 0x3

    .line 33
    .line 34
    and-int/lit16 p1, p1, 0x380

    .line 35
    .line 36
    or-int/2addr p0, p1

    .line 37
    shl-int/lit8 p1, p5, 0x6

    .line 38
    .line 39
    const p2, 0xe000

    .line 40
    .line 41
    .line 42
    and-int/2addr p1, p2

    .line 43
    or-int v6, p0, p1

    .line 44
    .line 45
    const/16 v7, 0x8

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    move-object v5, p4

    .line 49
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 54
    .line 55
    .line 56
    return-object p0
.end method

.method public static final animateRectAsState(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .param p0    # Landroidx/compose/ui/geometry/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/geometry/Rect;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lkotlin/Unit;",
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
    const-string v0, "targetValue"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, -0x2ea5bdcf

    .line 7
    .line 8
    .line 9
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 10
    .line 11
    .line 12
    and-int/lit8 v0, p5, 0x2

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object p1, Landroidx/compose/animation/core/AnimateAsStateKt;->rectDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 17
    .line 18
    :cond_0
    move-object v2, p1

    .line 19
    and-int/lit8 p1, p5, 0x4

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    :cond_1
    move-object v4, p2

    .line 25
    sget-object p1, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    .line 26
    .line 27
    invoke-static {p1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Rect$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    and-int/lit8 p1, p4, 0xe

    .line 32
    .line 33
    shl-int/lit8 p2, p4, 0x3

    .line 34
    .line 35
    and-int/lit16 p2, p2, 0x380

    .line 36
    .line 37
    or-int/2addr p1, p2

    .line 38
    shl-int/lit8 p2, p4, 0x6

    .line 39
    .line 40
    const p4, 0xe000

    .line 41
    .line 42
    .line 43
    and-int/2addr p2, p4

    .line 44
    or-int v6, p1, p2

    .line 45
    .line 46
    const/16 v7, 0x8

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    move-object v0, p0

    .line 50
    move-object v5, p3

    .line 51
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 56
    .line 57
    .line 58
    return-object p0
.end method

.method public static final animateSizeAsState-LjSzlW0(JLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .param p2    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            "(J",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/geometry/Size;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Size;",
            "Lkotlin/Unit;",
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
    const v0, 0x342aaeb7

    .line 2
    .line 3
    .line 4
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p6, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object p2, Landroidx/compose/animation/core/AnimateAsStateKt;->sizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 12
    .line 13
    :cond_0
    move-object v2, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    const/4 p3, 0x0

    .line 19
    :cond_1
    move-object v4, p3

    .line 20
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object p0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 25
    .line 26
    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Size$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    and-int/lit8 p0, p5, 0xe

    .line 31
    .line 32
    shl-int/lit8 p1, p5, 0x3

    .line 33
    .line 34
    and-int/lit16 p1, p1, 0x380

    .line 35
    .line 36
    or-int/2addr p0, p1

    .line 37
    shl-int/lit8 p1, p5, 0x6

    .line 38
    .line 39
    const p2, 0xe000

    .line 40
    .line 41
    .line 42
    and-int/2addr p1, p2

    .line 43
    or-int v6, p0, p1

    .line 44
    .line 45
    const/16 v7, 0x8

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    move-object v5, p4

    .line 49
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 54
    .line 55
    .line 56
    return-object p0
.end method

.method public static final animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 18
    .param p1    # Landroidx/compose/animation/core/TwoWayConverter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(TT;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p5

    .line 2
    .line 3
    const-string v1, "typeConverter"

    .line 4
    .line 5
    move-object/from16 v4, p1

    .line 6
    .line 7
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const v1, -0x3272c431

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 14
    .line 15
    .line 16
    and-int/lit8 v1, p7, 0x4

    .line 17
    .line 18
    const v8, -0x1d58f75c

    .line 19
    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 25
    .line 26
    .line 27
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-ne v1, v2, :cond_0

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const/4 v2, 0x0

    .line 41
    move-object/from16 v3, p3

    .line 42
    .line 43
    invoke-static {v2, v2, v3, v1, v9}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 51
    .line 52
    .line 53
    check-cast v1, Landroidx/compose/animation/core/AnimationSpec;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move-object/from16 v1, p2

    .line 57
    .line 58
    :goto_0
    and-int/lit8 v2, p7, 0x10

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    move-object v10, v9

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move-object/from16 v10, p4

    .line 65
    .line 66
    :goto_1
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 67
    .line 68
    .line 69
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 74
    .line 75
    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    if-ne v2, v3, :cond_3

    .line 80
    .line 81
    new-instance v12, Landroidx/compose/animation/core/Animatable;

    .line 82
    .line 83
    const/4 v6, 0x4

    .line 84
    const/4 v7, 0x0

    .line 85
    const/4 v5, 0x0

    .line 86
    move-object v2, v12

    .line 87
    move-object/from16 v3, p0

    .line 88
    .line 89
    move-object/from16 v4, p1

    .line 90
    .line 91
    invoke-direct/range {v2 .. v7}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 98
    .line 99
    .line 100
    check-cast v2, Landroidx/compose/animation/core/Animatable;

    .line 101
    .line 102
    shr-int/lit8 v3, p6, 0xc

    .line 103
    .line 104
    and-int/lit8 v3, v3, 0xe

    .line 105
    .line 106
    invoke-static {v10, v0, v3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 107
    .line 108
    .line 109
    move-result-object v16

    .line 110
    const/4 v3, 0x6

    .line 111
    shr-int/lit8 v4, p6, 0x6

    .line 112
    .line 113
    and-int/lit8 v4, v4, 0xe

    .line 114
    .line 115
    invoke-static {v1, v0, v4}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 116
    .line 117
    .line 118
    move-result-object v15

    .line 119
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 120
    .line 121
    .line 122
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    if-ne v1, v4, :cond_4

    .line 131
    .line 132
    const/4 v1, -0x1

    .line 133
    invoke-static {v1, v9, v9, v3, v9}, Ljt/g;->b(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljt/d;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_4
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 141
    .line 142
    .line 143
    check-cast v1, Ljt/d;

    .line 144
    .line 145
    new-instance v3, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$2;

    .line 146
    .line 147
    move-object/from16 v4, p0

    .line 148
    .line 149
    invoke-direct {v3, v1, v4}, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$2;-><init>(Ljt/d;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    const/4 v4, 0x0

    .line 153
    invoke-static {v3, v0, v4}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 154
    .line 155
    .line 156
    new-instance v3, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3;

    .line 157
    .line 158
    const/16 v17, 0x0

    .line 159
    .line 160
    move-object v12, v3

    .line 161
    move-object v13, v1

    .line 162
    move-object v14, v2

    .line 163
    invoke-direct/range {v12 .. v17}, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3;-><init>(Ljt/d;Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lrs/c;)V

    .line 164
    .line 165
    .line 166
    const/16 v4, 0x8

    .line 167
    .line 168
    invoke-static {v1, v3, v0, v4}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->asState()Landroidx/compose/runtime/State;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 176
    .line 177
    .line 178
    return-object v1
.end method

.method private static final animateValueAsState$lambda-3(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;>;)",
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final animateValueAsState$lambda-4(Landroidx/compose/runtime/State;)Landroidx/compose/animation/core/AnimationSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;>;)",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/compose/animation/core/AnimationSpec;

    .line 6
    .line 7
    return-object p0
.end method
