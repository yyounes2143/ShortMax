.class final Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SelectionContainer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/SelectionContainerKt;->SelectionContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/Selection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $children:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $manager:Landroidx/compose/foundation/text/selection/SelectionManager;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $registrarImpl:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/SelectionManager;Lkotlin/jvm/functions/Function2;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/text/selection/SelectionManager;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3;->$registrarImpl:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3;->$modifier:Landroidx/compose/ui/Modifier;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3;->$manager:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3;->$children:Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    iput p5, p0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3;->$$dirty:I

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 13
    .line 14
    .line 15
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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 5
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->getLocalSelectionRegistrar()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p2

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3;->$registrarImpl:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object p2

    filled-new-array {p2}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object p2

    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1;

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3;->$manager:Landroidx/compose/foundation/text/selection/SelectionManager;

    iget-object v3, p0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3;->$children:Lkotlin/jvm/functions/Function2;

    iget v4, p0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3;->$$dirty:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/SelectionManager;Lkotlin/jvm/functions/Function2;I)V

    const v1, 0x37c17254

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v1, 0x38

    invoke-static {p2, v0, p1, v1}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :goto_1
    return-void
.end method
