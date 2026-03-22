.class public final Landroidx/compose/runtime/snapshots/StateListIterator;
.super Ljava/lang/Object;
.source "SnapshotStateList.kt"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lkotlin/jvm/internal/markers/KMutableListIterator;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMutableListIterator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSnapshotStateList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateList.kt\nandroidx/compose/runtime/snapshots/StateListIterator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,511:1\n1#2:512\n*E\n"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private index:I

.field private lastRequested:I

.field private final list:Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private structure:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;I)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/snapshots/SnapshotStateList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 5
    .line 6
    add-int/lit8 p2, p2, -0x1

    .line 7
    .line 8
    iput p2, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    .line 9
    .line 10
    const/4 p2, -0x1

    .line 11
    iput p2, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->lastRequested:I

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->getStructure(Landroidx/compose/runtime/snapshots/SnapshotStateList;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->structure:I

    .line 18
    .line 19
    return-void
.end method

.method private final validateModification()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->getStructure(Landroidx/compose/runtime/snapshots/SnapshotStateList;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->structure:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/StateListIterator;->validateModification()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 5
    .line 6
    iget v1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    .line 7
    .line 8
    add-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->lastRequested:I

    .line 15
    .line 16
    iget p1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    .line 17
    .line 18
    add-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    iput p1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 23
    .line 24
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->getStructure(Landroidx/compose/runtime/snapshots/SnapshotStateList;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->structure:I

    .line 29
    .line 30
    return-void
.end method

.method public final getList()Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    sub-int/2addr v1, v2

    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    return v2
.end method

.method public hasPrevious()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

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
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/StateListIterator;->validateModification()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->lastRequested:I

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$validateRange(II)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    .line 26
    .line 27
    return-object v1
.end method

.method public nextIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/StateListIterator;->validateModification()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$validateRange(II)V

    .line 13
    .line 14
    .line 15
    iget v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    .line 16
    .line 17
    iput v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->lastRequested:I

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget v1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    .line 26
    .line 27
    add-int/lit8 v1, v1, -0x1

    .line 28
    .line 29
    iput v1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    .line 30
    .line 31
    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public remove()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/StateListIterator;->validateModification()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 5
    .line 6
    iget v1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->lastRequested:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    add-int/2addr v0, v1

    .line 15
    iput v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    .line 16
    .line 17
    iput v1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->lastRequested:I

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 20
    .line 21
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->getStructure(Landroidx/compose/runtime/snapshots/SnapshotStateList;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->structure:I

    .line 26
    .line 27
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/StateListIterator;->validateModification()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->lastRequested:I

    .line 5
    .line 6
    if-ltz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 9
    .line 10
    invoke-virtual {v1, v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 14
    .line 15
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->getStructure(Landroidx/compose/runtime/snapshots/SnapshotStateList;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->structure:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$invalidIteratorSet()Ljava/lang/Void;

    .line 23
    .line 24
    .line 25
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 26
    .line 27
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method
