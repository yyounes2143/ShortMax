.class final Landroidx/compose/runtime/SourceInformationSlotTableGroup;
.super Ljava/lang/Object;
.source "SlotTable.kt"

# interfaces
.implements Landroidx/compose/runtime/tooling/CompositionGroup;
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        "Ljava/lang/Iterable<",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final compositionGroups:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final identityPath:Landroidx/compose/runtime/SourceInformationGroupPath;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final key:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parent:I

.field private final sourceInformation:Landroidx/compose/runtime/GroupSourceInformation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final table:Landroidx/compose/runtime/SlotTable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/SlotTable;ILandroidx/compose/runtime/GroupSourceInformation;Landroidx/compose/runtime/SourceInformationGroupPath;)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/SlotTable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/GroupSourceInformation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/SourceInformationGroupPath;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->parent:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->sourceInformation:Landroidx/compose/runtime/GroupSourceInformation;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->identityPath:Landroidx/compose/runtime/SourceInformationGroupPath;

    .line 11
    .line 12
    invoke-virtual {p3}, Landroidx/compose/runtime/GroupSourceInformation;->getKey()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->key:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object p0, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->compositionGroups:Ljava/lang/Iterable;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public getCompositionGroups()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->compositionGroups:Ljava/lang/Iterable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getData()Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/runtime/SourceInformationGroupDataIterator;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 4
    .line 5
    iget v2, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->parent:I

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->sourceInformation:Landroidx/compose/runtime/GroupSourceInformation;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/runtime/SourceInformationGroupDataIterator;-><init>(Landroidx/compose/runtime/SlotTable;ILandroidx/compose/runtime/GroupSourceInformation;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public getIdentity()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->identityPath:Landroidx/compose/runtime/SourceInformationGroupPath;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SourceInformationGroupPath;->getIdentity(Landroidx/compose/runtime/SlotTable;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final getIdentityPath()Landroidx/compose/runtime/SourceInformationGroupPath;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->identityPath:Landroidx/compose/runtime/SourceInformationGroupPath;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->key:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNode()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final getParent()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->parent:I

    .line 2
    .line 3
    return v0
.end method

.method public getSourceInfo()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->sourceInformation:Landroidx/compose/runtime/GroupSourceInformation;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/GroupSourceInformation;->getSourceInformation()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getSourceInformation()Landroidx/compose/runtime/GroupSourceInformation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->sourceInformation:Landroidx/compose/runtime/GroupSourceInformation;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTable()Landroidx/compose/runtime/SlotTable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 2
    .line 3
    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->sourceInformation:Landroidx/compose/runtime/GroupSourceInformation;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/GroupSourceInformation;->getGroups()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    move v1, v2

    .line 18
    :cond_0
    xor-int/lit8 v0, v1, 0x1

    .line 19
    .line 20
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/runtime/SourceInformationGroupIterator;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    .line 4
    .line 5
    iget v2, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->parent:I

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->sourceInformation:Landroidx/compose/runtime/GroupSourceInformation;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->identityPath:Landroidx/compose/runtime/SourceInformationGroupPath;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/runtime/SourceInformationGroupIterator;-><init>(Landroidx/compose/runtime/SlotTable;ILandroidx/compose/runtime/GroupSourceInformation;Landroidx/compose/runtime/SourceInformationGroupPath;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
