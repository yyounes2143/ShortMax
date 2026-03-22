.class public final Landroidx/compose/foundation/text/TextController;
.super Ljava/lang/Object;
.source "CoreText.kt"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final coreModifiers:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public longPressDragObserver:Landroidx/compose/foundation/text/TextDragObserver;

.field private final measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selectionModifiers:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private semanticsModifier:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final state:Landroidx/compose/foundation/text/TextState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/TextState;)V
    .locals 3
    .param p1    # Landroidx/compose/foundation/text/TextState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "state"

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
    iput-object p1, p0, Landroidx/compose/foundation/text/TextController;->state:Landroidx/compose/foundation/text/TextState;

    .line 10
    .line 11
    new-instance v0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/TextController$measurePolicy$1;-><init>(Landroidx/compose/foundation/text/TextController;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/compose/foundation/text/TextController;->measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 17
    .line 18
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 19
    .line 20
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/TextController;->drawTextAndSelectionBehind(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Landroidx/compose/foundation/text/TextController$coreModifiers$1;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Landroidx/compose/foundation/text/TextController$coreModifiers$1;-><init>(Landroidx/compose/foundation/text/TextController;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Landroidx/compose/foundation/text/TextController;->coreModifiers:Landroidx/compose/ui/Modifier;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextState;->getTextDelegate()Landroidx/compose/foundation/text/TextDelegate;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextDelegate;->getText()Landroidx/compose/ui/text/AnnotatedString;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/TextController;->createSemanticsModifierFor(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/Modifier;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Landroidx/compose/foundation/text/TextController;->semanticsModifier:Landroidx/compose/ui/Modifier;

    .line 48
    .line 49
    iput-object v0, p0, Landroidx/compose/foundation/text/TextController;->selectionModifiers:Landroidx/compose/ui/Modifier;

    .line 50
    .line 51
    return-void
.end method

.method public static final synthetic access$getSelectionRegistrar$p(Landroidx/compose/foundation/text/TextController;)Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/TextController;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$outOfBoundary-0a9Yr6o(Landroidx/compose/foundation/text/TextController;JJ)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/TextController;->outOfBoundary-0a9Yr6o(JJ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final createSemanticsModifierFor(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/Modifier;
    .locals 4

    .line 1
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/foundation/text/TextController$createSemanticsModifierFor$1;

    .line 4
    .line 5
    invoke-direct {v1, p1, p0}, Landroidx/compose/foundation/text/TextController$createSemanticsModifierFor$1;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/foundation/text/TextController;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v0, v3, v1, p1, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method private final drawTextAndSelectionBehind(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 22
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const v20, 0xffff

    .line 4
    .line 5
    .line 6
    const/16 v21, 0x0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x0

    .line 18
    const-wide/16 v11, 0x0

    .line 19
    .line 20
    const/4 v13, 0x0

    .line 21
    const/4 v14, 0x0

    .line 22
    const/4 v15, 0x0

    .line 23
    const-wide/16 v16, 0x0

    .line 24
    .line 25
    const-wide/16 v18, 0x0

    .line 26
    .line 27
    invoke-static/range {v0 .. v21}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer-pANQ8Wg$default(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Landroidx/compose/foundation/text/TextController$drawTextAndSelectionBehind$1;

    .line 32
    .line 33
    move-object/from16 v2, p0

    .line 34
    .line 35
    invoke-direct {v1, v2}, Landroidx/compose/foundation/text/TextController$drawTextAndSelectionBehind$1;-><init>(Landroidx/compose/foundation/text/TextController;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroidx/compose/ui/draw/DrawModifierKt;->drawBehind(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method private final outOfBoundary-0a9Yr6o(JJ)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController;->state:Landroidx/compose/foundation/text/TextState;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {v0, p3, p4}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    const/4 p3, 0x1

    .line 35
    sub-int/2addr v2, p3

    .line 36
    if-lt p1, v2, :cond_0

    .line 37
    .line 38
    if-ge p2, v2, :cond_1

    .line 39
    .line 40
    :cond_0
    if-gez p1, :cond_2

    .line 41
    .line 42
    if-gez p2, :cond_2

    .line 43
    .line 44
    :cond_1
    move v1, p3

    .line 45
    :cond_2
    return v1
.end method


# virtual methods
.method public final getLongPressDragObserver()Landroidx/compose/foundation/text/TextDragObserver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController;->longPressDragObserver:Landroidx/compose/foundation/text/TextDragObserver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "longPressDragObserver"

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

.method public final getMeasurePolicy()Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController;->measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getModifiers()Landroidx/compose/ui/Modifier;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController;->coreModifiers:Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/text/TextController;->semanticsModifier:Landroidx/compose/ui/Modifier;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/compose/foundation/text/TextController;->selectionModifiers:Landroidx/compose/ui/Modifier;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final getSemanticsModifier$foundation_release()Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController;->semanticsModifier:Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getState()Landroidx/compose/foundation/text/TextState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController;->state:Landroidx/compose/foundation/text/TextState;

    .line 2
    .line 3
    return-object v0
.end method

.method public onAbandoned()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController;->state:Landroidx/compose/foundation/text/TextState;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->getSelectable()Landroidx/compose/foundation/text/selection/Selectable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/foundation/text/TextController;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v1, v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->unsubscribe(Landroidx/compose/foundation/text/selection/Selectable;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onForgotten()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController;->state:Landroidx/compose/foundation/text/TextState;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->getSelectable()Landroidx/compose/foundation/text/selection/Selectable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/foundation/text/TextController;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v1, v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->unsubscribe(Landroidx/compose/foundation/text/selection/Selectable;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onRemembered()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/foundation/text/TextController;->state:Landroidx/compose/foundation/text/TextState;

    .line 6
    .line 7
    new-instance v2, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextState;->getSelectableId()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    new-instance v5, Landroidx/compose/foundation/text/TextController$onRemembered$1$1;

    .line 14
    .line 15
    invoke-direct {v5, p0}, Landroidx/compose/foundation/text/TextController$onRemembered$1$1;-><init>(Landroidx/compose/foundation/text/TextController;)V

    .line 16
    .line 17
    .line 18
    new-instance v6, Landroidx/compose/foundation/text/TextController$onRemembered$1$2;

    .line 19
    .line 20
    invoke-direct {v6, p0}, Landroidx/compose/foundation/text/TextController$onRemembered$1$2;-><init>(Landroidx/compose/foundation/text/TextController;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;-><init>(JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->subscribe(Landroidx/compose/foundation/text/selection/Selectable;)Landroidx/compose/foundation/text/selection/Selectable;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Landroidx/compose/foundation/text/TextState;->setSelectable(Landroidx/compose/foundation/text/selection/Selectable;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final setLongPressDragObserver(Landroidx/compose/foundation/text/TextDragObserver;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/text/TextDragObserver;
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
    iput-object p1, p0, Landroidx/compose/foundation/text/TextController;->longPressDragObserver:Landroidx/compose/foundation/text/TextDragObserver;

    .line 7
    .line 8
    return-void
.end method

.method public final setTextDelegate(Landroidx/compose/foundation/text/TextDelegate;)V
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
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController;->state:Landroidx/compose/foundation/text/TextState;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->getTextDelegate()Landroidx/compose/foundation/text/TextDelegate;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-ne v0, p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController;->state:Landroidx/compose/foundation/text/TextState;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/TextState;->setTextDelegate(Landroidx/compose/foundation/text/TextDelegate;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroidx/compose/foundation/text/TextController;->state:Landroidx/compose/foundation/text/TextState;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextState;->getTextDelegate()Landroidx/compose/foundation/text/TextDelegate;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextDelegate;->getText()Landroidx/compose/ui/text/AnnotatedString;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/TextController;->createSemanticsModifierFor(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/Modifier;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Landroidx/compose/foundation/text/TextController;->semanticsModifier:Landroidx/compose/ui/Modifier;

    .line 35
    .line 36
    return-void
.end method

.method public final update(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V
    .locals 4
    .param p1    # Landroidx/compose/foundation/text/selection/SelectionRegistrar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/TextController;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-static {}, Landroidx/compose/foundation/text/TouchMode_androidKt;->isInTouchMode()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/foundation/text/TextController$update$1;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/text/TextController$update$1;-><init>(Landroidx/compose/foundation/text/TextController;Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/TextController;->setLongPressDragObserver(Landroidx/compose/foundation/text/TextDragObserver;)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextController;->getLongPressDragObserver()Landroidx/compose/foundation/text/TextDragObserver;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v2, Landroidx/compose/foundation/text/TextController$update$2;

    .line 27
    .line 28
    invoke-direct {v2, p0, v1}, Landroidx/compose/foundation/text/TextController$update$2;-><init>(Landroidx/compose/foundation/text/TextController;Lrs/c;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;

    .line 37
    .line 38
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;-><init>(Landroidx/compose/foundation/text/TextController;Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 42
    .line 43
    new-instance v2, Landroidx/compose/foundation/text/TextController$update$3;

    .line 44
    .line 45
    invoke-direct {v2, v0, v1}, Landroidx/compose/foundation/text/TextController$update$3;-><init>(Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;Lrs/c;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v0, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {}, Landroidx/compose/foundation/text/TextPointerIcon_androidKt;->getTextPointerIcon()Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const/4 v2, 0x0

    .line 57
    const/4 v3, 0x2

    .line 58
    invoke-static {p1, v0, v2, v3, v1}, Landroidx/compose/ui/input/pointer/PointerIconKt;->pointerHoverIcon$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/pointer/PointerIcon;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 64
    .line 65
    :goto_0
    iput-object p1, p0, Landroidx/compose/foundation/text/TextController;->selectionModifiers:Landroidx/compose/ui/Modifier;

    .line 66
    .line 67
    return-void
.end method
