.class final Landroidx/compose/runtime/ComposePausableCompositionException;
.super Ljava/lang/Exception;
.source "PausableComposition.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final instances:Landroidx/collection/ObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ObjectList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lastOperation:I

.field private final operations:Landroidx/collection/IntList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final reused:Landroidx/collection/ObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ObjectList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/collection/ObjectList;Landroidx/collection/ObjectList;Landroidx/collection/IntList;ILjava/lang/Throwable;)V
    .locals 0
    .param p1    # Landroidx/collection/ObjectList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/collection/ObjectList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/collection/IntList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ObjectList<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/collection/ObjectList<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/collection/IntList;",
            "I",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p5}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/ComposePausableCompositionException;->instances:Landroidx/collection/ObjectList;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/ComposePausableCompositionException;->reused:Landroidx/collection/ObjectList;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/runtime/ComposePausableCompositionException;->operations:Landroidx/collection/IntList;

    .line 9
    .line 10
    iput p4, p0, Landroidx/compose/runtime/ComposePausableCompositionException;->lastOperation:I

    .line 11
    .line 12
    return-void
.end method

.method public static final synthetic access$getInstances$p(Landroidx/compose/runtime/ComposePausableCompositionException;)Landroidx/collection/ObjectList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/ComposePausableCompositionException;->instances:Landroidx/collection/ObjectList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getLastOperation$p(Landroidx/compose/runtime/ComposePausableCompositionException;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/runtime/ComposePausableCompositionException;->lastOperation:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getOperations$p(Landroidx/compose/runtime/ComposePausableCompositionException;)Landroidx/collection/IntList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/ComposePausableCompositionException;->operations:Landroidx/collection/IntList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getReused$p(Landroidx/compose/runtime/ComposePausableCompositionException;)Landroidx/collection/ObjectList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/ComposePausableCompositionException;->reused:Landroidx/collection/ObjectList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic getMessage$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final operationsSequence()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;-><init>(Landroidx/compose/runtime/ComposePausableCompositionException;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/sequences/j;->b(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "\n            |Exception while applying pausable composition. Last 10 operations:\n            |"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/compose/runtime/ComposePausableCompositionException;->operationsSequence()Lkotlin/sequences/Sequence;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lkotlin/sequences/j;->P(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/16 v2, 0xa

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->W0(Ljava/util/List;I)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    move-object v2, v1

    .line 26
    check-cast v2, Ljava/lang/Iterable;

    .line 27
    .line 28
    const/16 v9, 0x3e

    .line 29
    .line 30
    const/4 v10, 0x0

    .line 31
    const-string v3, "\n"

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, "\n            "

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x0

    .line 55
    const/4 v2, 0x1

    .line 56
    invoke-static {v0, v1, v2, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0
.end method
