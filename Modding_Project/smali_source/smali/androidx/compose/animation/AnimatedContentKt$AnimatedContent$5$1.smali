.class final Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AnimatedContent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/AnimatedContentKt;->AnimatedContent(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lat/o;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $content:Lat/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/o<",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
            "TS;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $currentlyVisible:Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TS;>;"
        }
    .end annotation
.end field

.field final synthetic $rootScope:Landroidx/compose/animation/AnimatedContentScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/AnimatedContentScope<",
            "TS;>;"
        }
    .end annotation
.end field

.field final synthetic $stateForContent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field final synthetic $this_AnimatedContent:Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;"
        }
    .end annotation
.end field

.field final synthetic $transitionSpec:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "TS;>;",
            "Landroidx/compose/animation/ContentTransform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Landroidx/compose/animation/AnimatedContentScope;Lat/o;Landroidx/compose/runtime/snapshots/SnapshotStateList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;TS;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "TS;>;",
            "Landroidx/compose/animation/ContentTransform;",
            ">;",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "TS;>;",
            "Lat/o<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TS;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$this_AnimatedContent:Landroidx/compose/animation/core/Transition;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$stateForContent:Ljava/lang/Object;

    .line 4
    .line 5
    iput p3, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$$dirty:I

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$transitionSpec:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$rootScope:Landroidx/compose/animation/AnimatedContentScope;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$content:Lat/o;

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$currentlyVisible:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 14
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    move-object v0, p0

    move-object v7, p1

    and-int/lit8 v1, p2, 0xb

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v1, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$transitionSpec:Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$rootScope:Landroidx/compose/animation/AnimatedContentScope;

    const v3, -0x1d58f75c

    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 6
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_2

    .line 7
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/compose/animation/ContentTransform;

    .line 8
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 9
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 10
    check-cast v4, Landroidx/compose/animation/ContentTransform;

    .line 11
    iget-object v1, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$this_AnimatedContent:Landroidx/compose/animation/core/Transition;

    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/animation/core/Transition$Segment;->getTargetState()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$stateForContent:Ljava/lang/Object;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$transitionSpec:Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$rootScope:Landroidx/compose/animation/AnimatedContentScope;

    const v8, 0x44faf204

    invoke-interface {p1, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 12
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .line 13
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v1, :cond_3

    .line 14
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v8, v1, :cond_4

    .line 15
    :cond_3
    invoke-interface {v2, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/animation/ContentTransform;

    invoke-virtual {v1}, Landroidx/compose/animation/ContentTransform;->getInitialContentExit()Landroidx/compose/animation/ExitTransition;

    move-result-object v8

    .line 16
    invoke-interface {p1, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 17
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 18
    move-object v6, v8

    check-cast v6, Landroidx/compose/animation/ExitTransition;

    .line 19
    iget-object v1, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$stateForContent:Ljava/lang/Object;

    iget-object v2, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$this_AnimatedContent:Landroidx/compose/animation/core/Transition;

    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 20
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 21
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_5

    .line 22
    new-instance v3, Landroidx/compose/animation/AnimatedContentScope$ChildData;

    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {v3, v1}, Landroidx/compose/animation/AnimatedContentScope$ChildData;-><init>(Z)V

    .line 23
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 24
    :cond_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 25
    check-cast v3, Landroidx/compose/animation/AnimatedContentScope$ChildData;

    .line 26
    invoke-virtual {v4}, Landroidx/compose/animation/ContentTransform;->getTargetContentEnter()Landroidx/compose/animation/EnterTransition;

    move-result-object v5

    .line 27
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    new-instance v2, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$1;

    invoke-direct {v2, v4}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$1;-><init>(Landroidx/compose/animation/ContentTransform;)V

    invoke-static {v1, v2}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Lat/n;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 28
    iget-object v2, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$stateForContent:Ljava/lang/Object;

    iget-object v4, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$this_AnimatedContent:Landroidx/compose/animation/core/Transition;

    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v3, v2}, Landroidx/compose/animation/AnimatedContentScope$ChildData;->setTarget(Z)V

    invoke-interface {v1, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 29
    iget-object v1, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$this_AnimatedContent:Landroidx/compose/animation/core/Transition;

    new-instance v2, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$3;

    iget-object v4, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$stateForContent:Ljava/lang/Object;

    invoke-direct {v2, v4}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$3;-><init>(Ljava/lang/Object;)V

    .line 30
    new-instance v4, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4;

    iget-object v9, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$rootScope:Landroidx/compose/animation/AnimatedContentScope;

    iget-object v10, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$stateForContent:Ljava/lang/Object;

    iget-object v11, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$content:Lat/o;

    iget v12, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$$dirty:I

    iget-object v13, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$currentlyVisible:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-object v8, v4

    invoke-direct/range {v8 .. v13}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4;-><init>(Landroidx/compose/animation/AnimatedContentScope;Ljava/lang/Object;Lat/o;ILandroidx/compose/runtime/snapshots/SnapshotStateList;)V

    const v8, -0x6c4bce92

    const/4 v9, 0x1

    invoke-static {p1, v8, v9, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v8

    iget v4, v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->$$dirty:I

    and-int/lit8 v4, v4, 0xe

    const/high16 v9, 0x30000

    or-int/2addr v9, v4

    const/4 v10, 0x0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    move-object v7, p1

    move v8, v9

    move v9, v10

    .line 31
    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lat/n;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    return-void
.end method
