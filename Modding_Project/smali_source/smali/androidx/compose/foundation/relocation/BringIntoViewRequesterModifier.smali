.class final Landroidx/compose/foundation/relocation/BringIntoViewRequesterModifier;
.super Landroidx/compose/foundation/relocation/BringIntoViewChildModifier;
.source "BringIntoViewRequester.kt"


# annotations
.annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


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


# virtual methods
.method public final bringIntoView(Landroidx/compose/ui/geometry/Rect;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroidx/compose/ui/geometry/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/geometry/Rect;",
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
    invoke-virtual {p0}, Landroidx/compose/foundation/relocation/BringIntoViewChildModifier;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/SizeKt;->toRect-uvyYCjk(J)Landroidx/compose/ui/geometry/Rect;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/relocation/BringIntoViewChildModifier;->getParent()Landroidx/compose/foundation/relocation/BringIntoViewParent;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1, p1, v0, p2}, Landroidx/compose/foundation/relocation/BringIntoViewParent;->bringChildIntoView(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/layout/LayoutCoordinates;Lrs/c;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    if-ne p1, p2, :cond_2

    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p1
.end method
