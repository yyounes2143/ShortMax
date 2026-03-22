.class final Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LazySemantics.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/grid/LazySemanticsKt;->lazyGridSemantics(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lgt/g0;ZZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $coroutineScope:Lgt/g0;

.field final synthetic $isVertical:Z

.field final synthetic $state:Landroidx/compose/foundation/lazy/grid/LazyGridState;


# direct methods
.method constructor <init>(ZLgt/g0;Landroidx/compose/foundation/lazy/grid/LazyGridState;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1;->$isVertical:Z

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1;->$coroutineScope:Lgt/g0;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(FF)Ljava/lang/Boolean;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1;->$isVertical:Z

    if-eqz v0, :cond_0

    move p1, p2

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1;->$coroutineScope:Lgt/g0;

    new-instance v3, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1$1;

    iget-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    const/4 v1, 0x0

    invoke-direct {v3, p2, p1, v1}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;FLrs/c;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1;->invoke(FF)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
