.class final Landroidx/compose/animation/SizeAnimationModifier;
.super Landroidx/compose/animation/LayoutModifierWithPassThroughIntrinsics;
.source "AnimationModifier.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/SizeAnimationModifier$AnimData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private animData:Landroidx/compose/animation/SizeAnimationModifier$AnimData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final animSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private listener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final scope:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/AnimationSpec;Lgt/g0;)V
    .locals 1
    .param p1    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;",
            "Lgt/g0;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "animSpec"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "scope"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/compose/animation/LayoutModifierWithPassThroughIntrinsics;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/compose/animation/SizeAnimationModifier;->animSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/compose/animation/SizeAnimationModifier;->scope:Lgt/g0;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final animateTo-mzRDjE0(J)J
    .locals 13

    .line 1
    iget-object v6, p0, Landroidx/compose/animation/SizeAnimationModifier;->animData:Landroidx/compose/animation/SizeAnimationModifier$AnimData;

    .line 2
    .line 3
    if-eqz v6, :cond_0

    .line 4
    .line 5
    invoke-virtual {v6}, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->getAnim()Landroidx/compose/animation/core/Animatable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getTargetValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v6}, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->getAnim()Landroidx/compose/animation/core/Animatable;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    invoke-virtual {v6, v0, v1}, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->setStartSize-ozmzZPI(J)V

    .line 40
    .line 41
    .line 42
    iget-object v7, p0, Landroidx/compose/animation/SizeAnimationModifier;->scope:Lgt/g0;

    .line 43
    .line 44
    new-instance v10, Landroidx/compose/animation/SizeAnimationModifier$animateTo$data$1$1;

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    move-object v0, v10

    .line 48
    move-object v1, v6

    .line 49
    move-wide v2, p1

    .line 50
    move-object v4, p0

    .line 51
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/SizeAnimationModifier$animateTo$data$1$1;-><init>(Landroidx/compose/animation/SizeAnimationModifier$AnimData;JLandroidx/compose/animation/SizeAnimationModifier;Lrs/c;)V

    .line 52
    .line 53
    .line 54
    const/4 v11, 0x3

    .line 55
    const/4 v12, 0x0

    .line 56
    const/4 v8, 0x0

    .line 57
    const/4 v9, 0x0

    .line 58
    invoke-static/range {v7 .. v12}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    new-instance v6, Landroidx/compose/animation/SizeAnimationModifier$AnimData;

    .line 63
    .line 64
    new-instance v0, Landroidx/compose/animation/core/Animatable;

    .line 65
    .line 66
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    sget-object v2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 71
    .line 72
    invoke-static {v2}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/IntSize$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const/4 v3, 0x1

    .line 77
    invoke-static {v3, v3}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    .line 78
    .line 79
    .line 80
    move-result-wide v3

    .line 81
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-direct {v6, v0, p1, p2, v1}, Landroidx/compose/animation/SizeAnimationModifier$AnimData;-><init>(Landroidx/compose/animation/core/Animatable;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    :goto_0
    iput-object v6, p0, Landroidx/compose/animation/SizeAnimationModifier;->animData:Landroidx/compose/animation/SizeAnimationModifier$AnimData;

    .line 93
    .line 94
    invoke-virtual {v6}, Landroidx/compose/animation/SizeAnimationModifier$AnimData;->getAnim()Landroidx/compose/animation/core/Animatable;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    .line 105
    .line 106
    .line 107
    move-result-wide p1

    .line 108
    return-wide p1
.end method

.method public final getAnimData()Landroidx/compose/animation/SizeAnimationModifier$AnimData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/SizeAnimationModifier;->animData:Landroidx/compose/animation/SizeAnimationModifier$AnimData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAnimSpec()Landroidx/compose/animation/core/AnimationSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/SizeAnimationModifier;->animSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getListener()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/SizeAnimationModifier;->listener:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getScope()Lgt/g0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/SizeAnimationModifier;->scope:Lgt/g0;

    .line 2
    .line 3
    return-object v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7
    .param p1    # Landroidx/compose/ui/layout/MeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/Measurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$measure"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "measurable"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    .line 24
    .line 25
    .line 26
    move-result-wide p3

    .line 27
    invoke-virtual {p0, p3, p4}, Landroidx/compose/animation/SizeAnimationModifier;->animateTo-mzRDjE0(J)J

    .line 28
    .line 29
    .line 30
    move-result-wide p3

    .line 31
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    new-instance v4, Landroidx/compose/animation/SizeAnimationModifier$measure$1;

    .line 40
    .line 41
    invoke-direct {v4, p2}, Landroidx/compose/animation/SizeAnimationModifier$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    .line 42
    .line 43
    .line 44
    const/4 v5, 0x4

    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v3, 0x0

    .line 47
    move-object v0, p1

    .line 48
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method

.method public final setAnimData(Landroidx/compose/animation/SizeAnimationModifier$AnimData;)V
    .locals 0
    .param p1    # Landroidx/compose/animation/SizeAnimationModifier$AnimData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/SizeAnimationModifier;->animData:Landroidx/compose/animation/SizeAnimationModifier$AnimData;

    .line 2
    .line 3
    return-void
.end method

.method public final setListener(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/SizeAnimationModifier;->listener:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method
