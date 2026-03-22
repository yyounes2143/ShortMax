.class public final Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
.super Ljava/lang/Object;
.source "ComposerChangeListWriter.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/changelist/ComposerChangeListWriter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nComposerChangeListWriter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposerChangeListWriter.kt\nandroidx/compose/runtime/changelist/ComposerChangeListWriter\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Stack.kt\nandroidx/compose/runtime/IntStack\n*L\n1#1,476:1\n4788#2,4:477\n4788#2,4:481\n4788#2,4:485\n4788#2,4:490\n82#3:489\n*S KotlinDebug\n*F\n+ 1 ComposerChangeListWriter.kt\nandroidx/compose/runtime/changelist/ComposerChangeListWriter\n*L\n162#1:477,4\n251#1:481,4\n309#1:485,4\n448#1:490,4\n448#1:489\n*E\n"
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/runtime/changelist/ComposerChangeListWriter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final invalidGroupLocation:I = -0x2


# instance fields
.field private changeList:Landroidx/compose/runtime/changelist/ChangeList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final composer:Landroidx/compose/runtime/ComposerImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private implicitRootStart:Z

.field private moveCount:I

.field private moveFrom:I

.field private moveTo:I

.field private final pendingDownNodes:Ljava/util/ArrayList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pendingUps:I

.field private removeFrom:I

.field private startedGroup:Z

.field private final startedGroups:Landroidx/compose/runtime/IntStack;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private writersReaderDelta:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->Companion:Landroidx/compose/runtime/changelist/ComposerChangeListWriter$Companion;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->$stable:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/changelist/ChangeList;)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/ComposerImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/changelist/ChangeList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 7
    .line 8
    new-instance p1, Landroidx/compose/runtime/IntStack;

    .line 9
    .line 10
    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-static {p2, p1, p2}, Landroidx/compose/runtime/Stack;->constructor-impl$default(Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    iput p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeFrom:I

    .line 27
    .line 28
    iput p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveFrom:I

    .line 29
    .line 30
    iput p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveTo:I

    .line 31
    .line 32
    return-void
.end method

.method private final ensureGroupStarted(Landroidx/compose/runtime/Anchor;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-static {p0, v1, v2, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushSlotTableOperationPreamble$default(Landroidx/compose/runtime/changelist/ComposerChangeListWriter;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/changelist/ChangeList;->pushEnsureGroupStarted(Landroidx/compose/runtime/Anchor;)V

    .line 10
    .line 11
    .line 12
    iput-boolean v2, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    .line 13
    .line 14
    return-void
.end method

.method private final ensureRootStarted()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-static {p0, v0, v2, v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushSlotTableOperationPreamble$default(Landroidx/compose/runtime/changelist/ComposerChangeListWriter;ZILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->pushEnsureRootStarted()V

    .line 18
    .line 19
    .line 20
    iput-boolean v2, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private final getReader()Landroidx/compose/runtime/SlotReader;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getReader$runtime()Landroidx/compose/runtime/SlotReader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static synthetic includeOperationsIn$default(Landroidx/compose/runtime/changelist/ComposerChangeListWriter;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/internal/IntRef;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->includeOperationsIn(Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/internal/IntRef;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final pushApplierOperationPreamble()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final pushPendingUpsAndDowns()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingUps:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/changelist/ChangeList;->pushUps(I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingUps:I

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/runtime/Stack;->isNotEmpty-impl(Ljava/util/ArrayList;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-static {v1}, Landroidx/compose/runtime/Stack;->toArray-impl(Ljava/util/ArrayList;)[Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/changelist/ChangeList;->pushDowns([Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-static {v0}, Landroidx/compose/runtime/Stack;->clear-impl(Ljava/util/ArrayList;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method private final pushSlotEditingOperationPreamble()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v2, v0, v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation$default(Landroidx/compose/runtime/changelist/ComposerChangeListWriter;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->recordSlotEditing()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final pushSlotTableOperationPreamble(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic pushSlotTableOperationPreamble$default(Landroidx/compose/runtime/changelist/ComposerChangeListWriter;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushSlotTableOperationPreamble(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final realizeMoveNode(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushApplierOperationPreamble()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/runtime/changelist/ChangeList;->pushMoveNode(III)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final realizeNodeMovementOperations()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveCount:I

    .line 2
    .line 3
    if-lez v0, :cond_1

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeFrom:I

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    if-ltz v1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeRemoveNode(II)V

    .line 11
    .line 12
    .line 13
    iput v2, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeFrom:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveTo:I

    .line 17
    .line 18
    iget v3, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveFrom:I

    .line 19
    .line 20
    invoke-direct {p0, v1, v3, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeMoveNode(III)V

    .line 21
    .line 22
    .line 23
    iput v2, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveFrom:I

    .line 24
    .line 25
    iput v2, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveTo:I

    .line 26
    .line 27
    :goto_0
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveCount:I

    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method private final realizeOperationLocation(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->getReader()Landroidx/compose/runtime/SlotReader;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->getParent()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->getReader()Landroidx/compose/runtime/SlotReader;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    :goto_0
    iget v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    .line 21
    .line 22
    sub-int v0, p1, v0

    .line 23
    .line 24
    if-ltz v0, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    :goto_1
    if-nez v1, :cond_2

    .line 30
    .line 31
    const-string v1, "Tried to seek backward"

    .line 32
    .line 33
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    if-lez v0, :cond_3

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/changelist/ChangeList;->pushAdvanceSlotsBy(I)V

    .line 41
    .line 42
    .line 43
    iput p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    .line 44
    .line 45
    :cond_3
    return-void
.end method

.method static synthetic realizeOperationLocation$default(Landroidx/compose/runtime/changelist/ComposerChangeListWriter;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final realizeRemoveNode(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushApplierOperationPreamble()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/changelist/ChangeList;->pushRemoveNode(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final appendValue(Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/changelist/ChangeList;->pushAppendValue(Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final copyNodesToNewAnchorLocation(Ljava/util/List;Landroidx/compose/runtime/internal/IntRef;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/internal/IntRef;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/internal/IntRef;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/changelist/ChangeList;->pushCopyNodesToNewAnchorLocation(Ljava/util/List;Landroidx/compose/runtime/internal/IntRef;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final copySlotTableToAnchorLocation(Landroidx/compose/runtime/MovableContentState;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/MovableContentState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/CompositionContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/MovableContentStateReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/MovableContentStateReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/compose/runtime/changelist/ChangeList;->pushCopySlotTableToAnchorLocation(Landroidx/compose/runtime/MovableContentState;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentStateReference;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final deactivateCurrentGroup()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v2, v0, v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushSlotTableOperationPreamble$default(Landroidx/compose/runtime/changelist/ComposerChangeListWriter;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->pushDeactivateCurrentGroup()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final determineMovableContentNodeIndex(Landroidx/compose/runtime/internal/IntRef;Landroidx/compose/runtime/Anchor;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/internal/IntRef;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/changelist/ChangeList;->pushDetermineMovableContentNodeIndex(Landroidx/compose/runtime/internal/IntRef;Landroidx/compose/runtime/Anchor;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final endCompositionScope(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composition;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/Composition;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composition;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/changelist/ChangeList;->pushEndCompositionScope(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composition;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final endCurrentGroup()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->getReader()Landroidx/compose/runtime/SlotReader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/IntStack;->peekOr(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    if-gt v1, v0, :cond_0

    .line 19
    .line 20
    move v1, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v1, v3

    .line 23
    :goto_0
    if-nez v1, :cond_1

    .line 24
    .line 25
    const-string v1, "Missed recording an endGroup"

    .line 26
    .line 27
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/IntStack;->peekOr(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-ne v1, v0, :cond_2

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-static {p0, v3, v4, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushSlotTableOperationPreamble$default(Landroidx/compose/runtime/changelist/ComposerChangeListWriter;ZILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->pop()I

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->pushEndCurrentGroup()V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method public final endMovableContentPlacement()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->pushEndMovableContentPlacement()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    .line 8
    .line 9
    return-void
.end method

.method public final endNodeMovement()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final endNodeMovementAndDeleteNode(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->endNodeMovement()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->getReader()Landroidx/compose/runtime/SlotReader;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->getReader()Landroidx/compose/runtime/SlotReader;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    :goto_0
    if-lez p2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeNode(II)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final endResumingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/RecomposeScopeImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/changelist/ChangeList;->pushEndResumingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final endRoot()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p0, v0, v1, v2}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushSlotTableOperationPreamble$default(Landroidx/compose/runtime/changelist/ComposerChangeListWriter;ZILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1, v2}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushSlotTableOperationPreamble$default(Landroidx/compose/runtime/changelist/ComposerChangeListWriter;ZILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ChangeList;->pushEndCurrentGroup()V

    .line 17
    .line 18
    .line 19
    iput-boolean v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final finalizeComposition()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 5
    .line 6
    iget v0, v0, Landroidx/compose/runtime/IntStack;->tos:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    const-string v0, "Missed recording an endGroup()"

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final getChangeList()Landroidx/compose/runtime/changelist/ChangeList;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getImplicitRootStart()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getPastParent()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->getReader()Landroidx/compose/runtime/SlotReader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    if-gez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public final includeOperationsIn(Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/internal/IntRef;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/changelist/ChangeList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/internal/IntRef;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/changelist/ChangeList;->pushExecuteOperationsIn(Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/internal/IntRef;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final insertSlots(Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/SlotTable;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/SlotTable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    .line 2
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushSlotEditingOperationPreamble()V

    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/changelist/ChangeList;->pushInsertSlots(Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/SlotTable;)V

    return-void
.end method

.method public final insertSlots(Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/changelist/FixupList;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/SlotTable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/changelist/FixupList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    .line 6
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushSlotEditingOperationPreamble()V

    .line 7
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    .line 8
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/runtime/changelist/ChangeList;->pushInsertSlots(Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/changelist/FixupList;)V

    return-void
.end method

.method public final moveCurrentGroup(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushSlotEditingOperationPreamble()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/changelist/ChangeList;->pushMoveCurrentGroup(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final moveDown(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-static {v0, p1}, Landroidx/compose/runtime/Stack;->push-impl(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final moveNode(III)V
    .locals 3

    .line 1
    if-lez p3, :cond_1

    .line 2
    .line 3
    iget v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveCount:I

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveFrom:I

    .line 8
    .line 9
    sub-int v2, p1, v0

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveTo:I

    .line 14
    .line 15
    sub-int v2, p2, v0

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    add-int/2addr v0, p3

    .line 20
    iput v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveCount:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    .line 24
    .line 25
    .line 26
    iput p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveFrom:I

    .line 27
    .line 28
    iput p2, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveTo:I

    .line 29
    .line 30
    iput p3, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveCount:I

    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public final moveReaderRelativeTo(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->getReader()Landroidx/compose/runtime/SlotReader;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sub-int/2addr p1, v1

    .line 12
    add-int/2addr v0, p1

    .line 13
    iput v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    .line 14
    .line 15
    return-void
.end method

.method public final moveReaderToAbsolute(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    .line 2
    .line 3
    return-void
.end method

.method public final moveUp()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/compose/runtime/Stack;->isNotEmpty-impl(Ljava/util/ArrayList;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-static {v0}, Landroidx/compose/runtime/Stack;->pop-impl(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingUps:I

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    iput v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingUps:I

    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public final recordSlotEditing()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->getReader()Landroidx/compose/runtime/SlotReader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getSize()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->getReader()Landroidx/compose/runtime/SlotReader;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 20
    .line 21
    const/4 v3, -0x2

    .line 22
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/IntStack;->peekOr(I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eq v2, v1, :cond_0

    .line 27
    .line 28
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->ensureRootStarted()V

    .line 29
    .line 30
    .line 31
    if-lez v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v2, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->ensureGroupStarted(Landroidx/compose/runtime/Anchor;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final releaseMovableContent()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->skipToEndOfCurrentGroup()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->endRoot()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final releaseMovableGroupAtCurrent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/ControlledComposition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/CompositionContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/MovableContentStateReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/runtime/changelist/ChangeList;->pushReleaseMovableGroupAtCurrent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final remember(Landroidx/compose/runtime/RememberObserverHolder;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/RememberObserverHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/changelist/ChangeList;->pushRemember(Landroidx/compose/runtime/RememberObserverHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final rememberPausingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/RecomposeScopeImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/changelist/ChangeList;->pushRememberPausingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final removeCurrentGroup()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushSlotEditingOperationPreamble()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->pushRemoveCurrentGroup()V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->getReader()Landroidx/compose/runtime/SlotReader;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->getGroupSize()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v0, v1

    .line 20
    iput v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    .line 21
    .line 22
    return-void
.end method

.method public final removeNode(II)V
    .locals 2

    .line 1
    if-lez p2, :cond_3

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "Invalid remove index "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeFrom:I

    .line 31
    .line 32
    if-ne v0, p1, :cond_2

    .line 33
    .line 34
    iget p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveCount:I

    .line 35
    .line 36
    add-int/2addr p1, p2

    .line 37
    iput p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveCount:I

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    .line 41
    .line 42
    .line 43
    iput p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeFrom:I

    .line 44
    .line 45
    iput p2, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveCount:I

    .line 46
    .line 47
    :cond_3
    :goto_1
    return-void
.end method

.method public final resetSlots()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->pushResetSlots()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final resetTransientState()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/runtime/IntStack;->clear()V

    .line 7
    .line 8
    .line 9
    iput v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    .line 13
    .line 14
    iput v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingUps:I

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-static {v1}, Landroidx/compose/runtime/Stack;->clear-impl(Ljava/util/ArrayList;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    iput v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeFrom:I

    .line 23
    .line 24
    iput v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveFrom:I

    .line 25
    .line 26
    iput v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveTo:I

    .line 27
    .line 28
    iput v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveCount:I

    .line 29
    .line 30
    return-void
.end method

.method public final setChangeList(Landroidx/compose/runtime/changelist/ChangeList;)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/changelist/ChangeList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 2
    .line 3
    return-void
.end method

.method public final setImplicitRootStart(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    .line 2
    .line 3
    return-void
.end method

.method public final sideEffect(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/changelist/ChangeList;->pushSideEffect(Lkotlin/jvm/functions/Function0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final skipToEndOfCurrentGroup()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->pushSkipToEndOfCurrentGroup()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final startResumingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/RecomposeScopeImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/changelist/ChangeList;->pushStartResumingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final trimValues(I)V
    .locals 1

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushSlotEditingOperationPreamble()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/changelist/ChangeList;->pushTrimValues(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final updateAnchoredValue(Ljava/lang/Object;Landroidx/compose/runtime/Anchor;I)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/runtime/changelist/ChangeList;->pushUpdateAnchoredValue(Ljava/lang/Object;Landroidx/compose/runtime/Anchor;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final updateAuxData(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v2, v0, v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushSlotTableOperationPreamble$default(Landroidx/compose/runtime/changelist/ComposerChangeListWriter;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/changelist/ChangeList;->pushUpdateAuxData(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final updateNode(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TV;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-TV;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushApplierOperationPreamble()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/changelist/ChangeList;->pushUpdateNode(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final updateValue(Ljava/lang/Object;I)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushSlotTableOperationPreamble(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/changelist/ChangeList;->pushUpdateValue(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final useNode(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushApplierOperationPreamble()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/changelist/ChangeList;->pushUseNode(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final withChangeList(Landroidx/compose/runtime/changelist/ChangeList;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1    # Landroidx/compose/runtime/changelist/ChangeList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/changelist/ChangeList;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->getChangeList()Landroidx/compose/runtime/changelist/ChangeList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/changelist/ChangeList;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/changelist/ChangeList;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/changelist/ChangeList;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public final withoutImplicitRootStart(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->getImplicitRootStart()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    :try_start_0
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setImplicitRootStart(Z)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setImplicitRootStart(Z)V

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setImplicitRootStart(Z)V

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method
