.class final Landroidx/compose/foundation/FocusableKt$focusable$2$5;
.super Lkotlin/jvm/internal/Lambda;
.source "Focusable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/FocusableKt$focusable$2;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/focus/FocusState;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

.field final synthetic $focusedInteraction:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/FocusInteraction$Focus;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $isFocused$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pinnableParent$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/lazy/layout/PinnableParent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scope:Lgt/g0;


# direct methods
.method constructor <init>(Lgt/g0;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/foundation/relocation/BringIntoViewRequester;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/lazy/layout/PinnableParent;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/FocusInteraction$Focus;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5;->$scope:Lgt/g0;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5;->$isFocused$delegate:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5;->$bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5;->$pinnableParent$delegate:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5;->$focusedInteraction:Landroidx/compose/runtime/MutableState;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/focus/FocusState;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/FocusableKt$focusable$2$5;->invoke(Landroidx/compose/ui/focus/FocusState;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/focus/FocusState;)V
    .locals 13
    .param p1    # Landroidx/compose/ui/focus/FocusState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5;->$isFocused$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->isFocused()Z

    move-result p1

    invoke-static {v0, p1}, Landroidx/compose/foundation/FocusableKt$focusable$2;->access$invoke$lambda-6(Landroidx/compose/runtime/MutableState;Z)V

    .line 3
    iget-object p1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5;->$isFocused$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Landroidx/compose/foundation/FocusableKt$focusable$2;->access$invoke$lambda-5(Landroidx/compose/runtime/MutableState;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    iget-object v1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5;->$scope:Lgt/g0;

    sget-object v3, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v4, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;

    iget-object p1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5;->$bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    iget-object v2, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5;->$pinnableParent$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {v4, p1, v2, v0}, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/runtime/MutableState;Lrs/c;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 5
    iget-object v7, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5;->$scope:Lgt/g0;

    new-instance v10, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;

    iget-object p1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5;->$focusedInteraction:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-direct {v10, p1, v1, v0}, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lrs/c;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5;->$scope:Lgt/g0;

    new-instance v3, Landroidx/compose/foundation/FocusableKt$focusable$2$5$3;

    iget-object v1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5;->$focusedInteraction:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-direct {v3, v1, v2, v0}, Landroidx/compose/foundation/FocusableKt$focusable$2$5$3;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lrs/c;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    :goto_0
    return-void
.end method
