.class final Landroidx/compose/animation/AnimatedContentScope$SizeModifier;
.super Landroidx/compose/animation/LayoutModifierWithPassThroughIntrinsics;
.source "AnimatedContent.kt"


# annotations
.annotation runtime Landroidx/compose/animation/ExperimentalAnimationApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/AnimatedContentScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SizeModifier"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.DeferredAnimation<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sizeTransform:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/SizeTransform;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/animation/AnimatedContentScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/AnimatedContentScope<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/AnimatedContentScope;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/State;)V
    .locals 1
    .param p1    # Landroidx/compose/animation/AnimatedContentScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/animation/core/Transition$DeferredAnimation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.DeferredAnimation<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Landroidx/compose/animation/SizeTransform;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "sizeAnimation"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sizeTransform"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentScope$SizeModifier;->this$0:Landroidx/compose/animation/AnimatedContentScope;

    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/compose/animation/LayoutModifierWithPassThroughIntrinsics;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Landroidx/compose/animation/AnimatedContentScope$SizeModifier;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 17
    .line 18
    iput-object p3, p0, Landroidx/compose/animation/AnimatedContentScope$SizeModifier;->sizeTransform:Landroidx/compose/runtime/State;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getSizeAnimation()Landroidx/compose/animation/core/Transition$DeferredAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.DeferredAnimation<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentScope$SizeModifier;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSizeTransform()Landroidx/compose/runtime/State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/SizeTransform;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentScope$SizeModifier;->sizeTransform:Landroidx/compose/runtime/State;

    .line 2
    .line 3
    return-object v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 11
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
    iget-object p3, p0, Landroidx/compose/animation/AnimatedContentScope$SizeModifier;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 16
    .line 17
    new-instance p4, Landroidx/compose/animation/AnimatedContentScope$SizeModifier$measure$size$1;

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentScope$SizeModifier;->this$0:Landroidx/compose/animation/AnimatedContentScope;

    .line 20
    .line 21
    invoke-direct {p4, v0, p0}, Landroidx/compose/animation/AnimatedContentScope$SizeModifier$measure$size$1;-><init>(Landroidx/compose/animation/AnimatedContentScope;Landroidx/compose/animation/AnimatedContentScope$SizeModifier;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Landroidx/compose/animation/AnimatedContentScope$SizeModifier$measure$size$2;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentScope$SizeModifier;->this$0:Landroidx/compose/animation/AnimatedContentScope;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Landroidx/compose/animation/AnimatedContentScope$SizeModifier$measure$size$2;-><init>(Landroidx/compose/animation/AnimatedContentScope;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, p4, v0}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/State;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    iget-object p4, p0, Landroidx/compose/animation/AnimatedContentScope$SizeModifier;->this$0:Landroidx/compose/animation/AnimatedContentScope;

    .line 36
    .line 37
    invoke-virtual {p4, p3}, Landroidx/compose/animation/AnimatedContentScope;->setAnimatedSize$animation_release(Landroidx/compose/runtime/State;)V

    .line 38
    .line 39
    .line 40
    iget-object p4, p0, Landroidx/compose/animation/AnimatedContentScope$SizeModifier;->this$0:Landroidx/compose/animation/AnimatedContentScope;

    .line 41
    .line 42
    invoke-virtual {p4}, Landroidx/compose/animation/AnimatedContentScope;->getContentAlignment$animation_release()Landroidx/compose/ui/Alignment;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 47
    .line 48
    .line 49
    move-result p4

    .line 50
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-static {p4, v1}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    invoke-interface {p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p4

    .line 62
    check-cast p4, Landroidx/compose/ui/unit/IntSize;

    .line 63
    .line 64
    invoke-virtual {p4}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 69
    .line 70
    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/Alignment;->align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    invoke-interface {p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p4

    .line 78
    check-cast p4, Landroidx/compose/ui/unit/IntSize;

    .line 79
    .line 80
    invoke-virtual {p4}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    invoke-interface {p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    check-cast p3, Landroidx/compose/ui/unit/IntSize;

    .line 93
    .line 94
    invoke-virtual {p3}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    .line 95
    .line 96
    .line 97
    move-result-wide p3

    .line 98
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    new-instance v8, Landroidx/compose/animation/AnimatedContentScope$SizeModifier$measure$1;

    .line 103
    .line 104
    invoke-direct {v8, p2, v0, v1}, Landroidx/compose/animation/AnimatedContentScope$SizeModifier$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;J)V

    .line 105
    .line 106
    .line 107
    const/4 v9, 0x4

    .line 108
    const/4 v10, 0x0

    .line 109
    const/4 v7, 0x0

    .line 110
    move-object v4, p1

    .line 111
    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    return-object p1
.end method
