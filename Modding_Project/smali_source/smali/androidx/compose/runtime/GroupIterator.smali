.class final Landroidx/compose/runtime/GroupIterator;
.super Ljava/lang/Object;
.source "SlotTable.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final end:I

.field private index:I

.field private final table:Landroidx/compose/runtime/SlotTable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final version:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/SlotTable;II)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/SlotTable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/GroupIterator;->table:Landroidx/compose/runtime/SlotTable;

    .line 5
    .line 6
    iput p3, p0, Landroidx/compose/runtime/GroupIterator;->end:I

    .line 7
    .line 8
    iput p2, p0, Landroidx/compose/runtime/GroupIterator;->index:I

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getVersion$runtime()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iput p2, p0, Landroidx/compose/runtime/GroupIterator;->version:I

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getWriter$runtime()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-static {}, Landroidx/compose/runtime/SlotTableKt;->throwConcurrentModificationException()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private final validateRead()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GroupIterator;->table:Landroidx/compose/runtime/SlotTable;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getVersion$runtime()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Landroidx/compose/runtime/GroupIterator;->version:I

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Landroidx/compose/runtime/SlotTableKt;->throwConcurrentModificationException()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public final getEnd()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/GroupIterator;->end:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTable()Landroidx/compose/runtime/SlotTable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GroupIterator;->table:Landroidx/compose/runtime/SlotTable;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/runtime/GroupIterator;->index:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/GroupIterator;->end:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public next()Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-direct {p0}, Landroidx/compose/runtime/GroupIterator;->validateRead()V

    .line 3
    iget v0, p0, Landroidx/compose/runtime/GroupIterator;->index:I

    .line 4
    iget-object v1, p0, Landroidx/compose/runtime/GroupIterator;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/compose/runtime/GroupIterator;->index:I

    .line 5
    new-instance v1, Landroidx/compose/runtime/SlotTableGroup;

    iget-object v2, p0, Landroidx/compose/runtime/GroupIterator;->table:Landroidx/compose/runtime/SlotTable;

    iget v3, p0, Landroidx/compose/runtime/GroupIterator;->version:I

    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/SlotTableGroup;-><init>(Landroidx/compose/runtime/SlotTable;II)V

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/GroupIterator;->next()Landroidx/compose/runtime/tooling/CompositionGroup;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "Operation is not supported for read-only collection"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method
