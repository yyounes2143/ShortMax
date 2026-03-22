.class final Landroidx/compose/animation/EnterExitTransitionKt$createModifier$alpha$2;
.super Lkotlin/jvm/internal/Lambda;
.source "EnterExitTransition.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/EnterExitTransitionKt;->createModifier(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lat/n<",
        "Landroidx/compose/animation/core/Transition$Segment<",
        "Landroidx/compose/animation/EnterExitState;",
        ">;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/animation/core/FiniteAnimationSpec<",
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $enter:Landroidx/compose/animation/EnterTransition;

.field final synthetic $exit:Landroidx/compose/animation/ExitTransition;


# direct methods
.method constructor <init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$alpha$2;->$enter:Landroidx/compose/animation/EnterTransition;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$alpha$2;->$exit:Landroidx/compose/animation/ExitTransition;

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/animation/core/Transition$Segment;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 1
    .param p1    # Landroidx/compose/animation/core/Transition$Segment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
            "(",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "Landroidx/compose/animation/EnterExitState;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "$this$animateFloat"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, -0x3681844

    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 2
    sget-object p3, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    sget-object v0, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    invoke-interface {p1, p3, v0}, Landroidx/compose/animation/core/Transition$Segment;->isTransitioningTo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 3
    iget-object p1, p0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$alpha$2;->$enter:Landroidx/compose/animation/EnterTransition;

    invoke-virtual {p1}, Landroidx/compose/animation/EnterTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/animation/TransitionData;->getFade()Landroidx/compose/animation/Fade;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/animation/Fade;->getAnimationSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object p1

    if-nez p1, :cond_4

    :cond_0
    invoke-static {}, Landroidx/compose/animation/EnterExitTransitionKt;->access$getDefaultAlphaAndScaleSpring$p()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p3, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    invoke-interface {p1, v0, p3}, Landroidx/compose/animation/core/Transition$Segment;->isTransitioningTo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$alpha$2;->$exit:Landroidx/compose/animation/ExitTransition;

    invoke-virtual {p1}, Landroidx/compose/animation/ExitTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/animation/TransitionData;->getFade()Landroidx/compose/animation/Fade;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/compose/animation/Fade;->getAnimationSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object p1

    if-nez p1, :cond_4

    :cond_2
    invoke-static {}, Landroidx/compose/animation/EnterExitTransitionKt;->access$getDefaultAlphaAndScaleSpring$p()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {}, Landroidx/compose/animation/EnterExitTransitionKt;->access$getDefaultAlphaAndScaleSpring$p()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p1

    .line 7
    :cond_4
    :goto_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/animation/core/Transition$Segment;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$alpha$2;->invoke(Landroidx/compose/animation/core/Transition$Segment;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object p1

    return-object p1
.end method
