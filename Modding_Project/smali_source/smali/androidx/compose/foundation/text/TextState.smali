.class public final Landroidx/compose/foundation/text/TextState;
.super Ljava/lang/Object;
.source "CoreText.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final drawScopeInvalidation$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private layoutResult:Landroidx/compose/ui/text/TextLayoutResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onTextLayout:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private previousGlobalPosition:J

.field private selectable:Landroidx/compose/foundation/text/selection/Selectable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final selectableId:J

.field private selectionBackgroundColor:J

.field private textDelegate:Landroidx/compose/foundation/text/TextDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/TextDelegate;J)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/text/TextDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "textDelegate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/compose/foundation/text/TextState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    .line 10
    .line 11
    iput-wide p2, p0, Landroidx/compose/foundation/text/TextState;->selectableId:J

    .line 12
    .line 13
    sget-object p1, Landroidx/compose/foundation/text/TextState$onTextLayout$1;->INSTANCE:Landroidx/compose/foundation/text/TextState$onTextLayout$1;

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/foundation/text/TextState;->onTextLayout:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextState;->previousGlobalPosition:J

    .line 24
    .line 25
    sget-object p1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextState;->selectionBackgroundColor:J

    .line 32
    .line 33
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->neverEqualPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {p1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Landroidx/compose/foundation/text/TextState;->drawScopeInvalidation$delegate:Landroidx/compose/runtime/MutableState;

    .line 44
    .line 45
    return-void
.end method

.method private final setDrawScopeInvalidation(Lkotlin/Unit;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextState;->drawScopeInvalidation$delegate:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getDrawScopeInvalidation()Lkotlin/Unit;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextState;->drawScopeInvalidation$delegate:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object v0
.end method

.method public final getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextState;->layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextState;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnTextLayout()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextState;->onTextLayout:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPreviousGlobalPosition-F1C5BW0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/text/TextState;->previousGlobalPosition:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSelectable()Landroidx/compose/foundation/text/selection/Selectable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextState;->selectable:Landroidx/compose/foundation/text/selection/Selectable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSelectableId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/text/TextState;->selectableId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSelectionBackgroundColor-0d7_KjU()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/text/TextState;->selectionBackgroundColor:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTextDelegate()Landroidx/compose/foundation/text/TextDelegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setLayoutCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/TextState;->layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 2
    .line 3
    return-void
.end method

.method public final setLayoutResult(Landroidx/compose/ui/text/TextLayoutResult;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/text/TextLayoutResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/TextState;->setDrawScopeInvalidation(Lkotlin/Unit;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/foundation/text/TextState;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 7
    .line 8
    return-void
.end method

.method public final setOnTextLayout(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/foundation/text/TextState;->onTextLayout:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method

.method public final setPreviousGlobalPosition-k-4lQ0M(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextState;->previousGlobalPosition:J

    .line 2
    .line 3
    return-void
.end method

.method public final setSelectable(Landroidx/compose/foundation/text/selection/Selectable;)V
    .locals 0
    .param p1    # Landroidx/compose/foundation/text/selection/Selectable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/TextState;->selectable:Landroidx/compose/foundation/text/selection/Selectable;

    .line 2
    .line 3
    return-void
.end method

.method public final setSelectionBackgroundColor-8_81llA(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextState;->selectionBackgroundColor:J

    .line 2
    .line 3
    return-void
.end method

.method public final setTextDelegate(Landroidx/compose/foundation/text/TextDelegate;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/text/TextDelegate;
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
    iput-object p1, p0, Landroidx/compose/foundation/text/TextState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    .line 7
    .line 8
    return-void
.end method
