.class final Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;
.super Landroidx/compose/foundation/relocation/BringIntoViewChildModifier;
.source "BringIntoViewResponder.kt"

# interfaces
.implements Landroidx/compose/ui/modifier/ModifierLocalProvider;
.implements Landroidx/compose/foundation/relocation/BringIntoViewParent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/foundation/relocation/BringIntoViewChildModifier;",
        "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
        "Landroidx/compose/foundation/relocation/BringIntoViewParent;",
        ">;",
        "Landroidx/compose/foundation/relocation/BringIntoViewParent;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private newestDispatchedRequest:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Landroidx/compose/ui/geometry/Rect;",
            "+",
            "Lkotlinx/coroutines/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private newestReceivedRequest:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Landroidx/compose/ui/geometry/Rect;",
            "+",
            "Lkotlinx/coroutines/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public responder:Landroidx/compose/foundation/relocation/BringIntoViewResponder;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/relocation/BringIntoViewParent;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/relocation/BringIntoViewParent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "defaultParent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/compose/foundation/relocation/BringIntoViewChildModifier;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewParent;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic access$dispatchRequest(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lkotlin/Pair;Landroidx/compose/ui/layout/LayoutCoordinates;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->dispatchRequest(Lkotlin/Pair;Landroidx/compose/ui/layout/LayoutCoordinates;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getNewestDispatchedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->newestDispatchedRequest:Lkotlin/Pair;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->newestReceivedRequest:Lkotlin/Pair;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setNewestDispatchedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lkotlin/Pair;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->newestDispatchedRequest:Lkotlin/Pair;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lkotlin/Pair;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->newestReceivedRequest:Lkotlin/Pair;

    .line 2
    .line 3
    return-void
.end method

.method private final dispatchRequest(Lkotlin/Pair;Landroidx/compose/ui/layout/LayoutCoordinates;Lrs/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Landroidx/compose/ui/geometry/Rect;",
            "+",
            "Lkotlinx/coroutines/r;",
            ">;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->newestDispatchedRequest:Lkotlin/Pair;

    .line 2
    .line 3
    invoke-virtual {p1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    move-object v4, p1

    .line 8
    check-cast v4, Landroidx/compose/ui/geometry/Rect;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->getResponder()Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1, v4}, Landroidx/compose/foundation/relocation/BringIntoViewResponder;->calculateRectForParent(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance p1, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    move-object v0, p1

    .line 22
    move-object v1, p0

    .line 23
    move-object v3, p2

    .line 24
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;Lrs/c;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p3}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    if-ne p1, p2, :cond_0

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p1
.end method


# virtual methods
.method public bringChildIntoView(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/layout/LayoutCoordinates;Lrs/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroidx/compose/ui/geometry/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/LayoutCoordinates;
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
            "Landroidx/compose/ui/geometry/Rect;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p2, p1, v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p3}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p1
.end method

.method public getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/foundation/relocation/BringIntoViewParent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/foundation/relocation/BringIntoViewKt;->getModifierLocalBringIntoViewParent()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getResponder()Landroidx/compose/foundation/relocation/BringIntoViewResponder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->responder:Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "responder"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public getValue()Landroidx/compose/foundation/relocation/BringIntoViewParent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->getValue()Landroidx/compose/foundation/relocation/BringIntoViewParent;

    move-result-object v0

    return-object v0
.end method

.method public final setResponder(Landroidx/compose/foundation/relocation/BringIntoViewResponder;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/relocation/BringIntoViewResponder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->responder:Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    .line 7
    .line 8
    return-void
.end method
