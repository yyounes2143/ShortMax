.class public final Landroidx/compose/runtime/GroupSourceInformation;
.super Ljava/lang/Object;
.source "SlotTable.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/GroupSourceInformation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n+ 4 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,4061:1\n1#2:4062\n806#3,8:4063\n796#3,7:4071\n91#4:4078\n34#4,5:4079\n92#4:4084\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/GroupSourceInformation\n*L\n740#1:4063,8\n756#1:4071,7\n767#1:4078\n767#1:4079,5\n767#1:4084\n*E\n"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private closed:Z

.field private dataEndOffset:I

.field private final dataStartOffset:I

.field private groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final key:I

.field private sourceInformation:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/runtime/GroupSourceInformation;->key:I

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/GroupSourceInformation;->sourceInformation:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/runtime/GroupSourceInformation;->dataStartOffset:I

    .line 9
    .line 10
    return-void
.end method

.method private final add(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GroupSourceInformation;->groups:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object v0, p0, Landroidx/compose/runtime/GroupSourceInformation;->groups:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final hasAnchor(Landroidx/compose/runtime/Anchor;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GroupSourceInformation;->groups:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    move v3, v1

    .line 11
    :goto_0
    if-ge v3, v2, :cond_2

    .line 12
    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-nez v5, :cond_1

    .line 22
    .line 23
    instance-of v5, v4, Landroidx/compose/runtime/GroupSourceInformation;

    .line 24
    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    check-cast v4, Landroidx/compose/runtime/GroupSourceInformation;

    .line 28
    .line 29
    invoke-direct {v4, p1}, Landroidx/compose/runtime/GroupSourceInformation;->hasAnchor(Landroidx/compose/runtime/Anchor;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 40
    :cond_2
    return v1
.end method

.method private final openInformation()Landroidx/compose/runtime/GroupSourceInformation;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GroupSourceInformation;->groups:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    add-int/lit8 v2, v2, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    instance-of v4, v3, Landroidx/compose/runtime/GroupSourceInformation;

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    move-object v4, v3

    .line 23
    check-cast v4, Landroidx/compose/runtime/GroupSourceInformation;

    .line 24
    .line 25
    iget-boolean v4, v4, Landroidx/compose/runtime/GroupSourceInformation;->closed:Z

    .line 26
    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v3, v1

    .line 34
    :goto_1
    instance-of v0, v3, Landroidx/compose/runtime/GroupSourceInformation;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    move-object v1, v3

    .line 39
    check-cast v1, Landroidx/compose/runtime/GroupSourceInformation;

    .line 40
    .line 41
    :cond_2
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-direct {v1}, Landroidx/compose/runtime/GroupSourceInformation;->openInformation()Landroidx/compose/runtime/GroupSourceInformation;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    move-object v0, p0

    .line 51
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final addGroupAfter(Landroidx/compose/runtime/SlotWriter;II)V
    .locals 5
    .param p1    # Landroidx/compose/runtime/SlotWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GroupSourceInformation;->groups:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/runtime/GroupSourceInformation;->groups:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    if-ltz p2, :cond_3

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotWriter;->tryAnchor$runtime(I)Landroidx/compose/runtime/Anchor;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_3

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    :goto_0
    if-ge v1, v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_3

    .line 36
    .line 37
    instance-of v4, v3, Landroidx/compose/runtime/GroupSourceInformation;

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    check-cast v3, Landroidx/compose/runtime/GroupSourceInformation;

    .line 42
    .line 43
    invoke-direct {v3, p2}, Landroidx/compose/runtime/GroupSourceInformation;->hasAnchor(Landroidx/compose/runtime/Anchor;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v1, -0x1

    .line 54
    :cond_3
    :goto_1
    invoke-virtual {p1, p3}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final close(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/runtime/GroupSourceInformation;->closed:Z

    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/runtime/GroupSourceInformation;->dataEndOffset:I

    .line 5
    .line 6
    return-void
.end method

.method public final endGrouplessCall(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/GroupSourceInformation;->openInformation()Landroidx/compose/runtime/GroupSourceInformation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GroupSourceInformation;->close(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final getClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/GroupSourceInformation;->closed:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getDataEndOffset()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/GroupSourceInformation;->dataEndOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDataStartOffset()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/GroupSourceInformation;->dataStartOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public final getGroups()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GroupSourceInformation;->groups:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getKey()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/GroupSourceInformation;->key:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSourceInformation()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GroupSourceInformation;->sourceInformation:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final removeAnchor(Landroidx/compose/runtime/Anchor;)Z
    .locals 5
    .param p1    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GroupSourceInformation;->groups:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    sub-int/2addr v2, v1

    .line 11
    :goto_0
    if-ltz v2, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    instance-of v4, v3, Landroidx/compose/runtime/Anchor;

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    instance-of v4, v3, Landroidx/compose/runtime/GroupSourceInformation;

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    check-cast v3, Landroidx/compose/runtime/GroupSourceInformation;

    .line 36
    .line 37
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/GroupSourceInformation;->removeAnchor(Landroidx/compose/runtime/Anchor;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Landroidx/compose/runtime/GroupSourceInformation;->groups:Ljava/util/ArrayList;

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    return p1

    .line 60
    :cond_3
    return v1
.end method

.method public final reportGroup(Landroidx/compose/runtime/SlotTable;I)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/SlotTable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Landroidx/compose/runtime/GroupSourceInformation;->openInformation()Landroidx/compose/runtime/GroupSourceInformation;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotTable;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/compose/runtime/GroupSourceInformation;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final reportGroup(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/SlotWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/GroupSourceInformation;->openInformation()Landroidx/compose/runtime/GroupSourceInformation;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/compose/runtime/GroupSourceInformation;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final setClosed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/runtime/GroupSourceInformation;->closed:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setDataEndOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/GroupSourceInformation;->dataEndOffset:I

    .line 2
    .line 3
    return-void
.end method

.method public final setGroups(Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/GroupSourceInformation;->groups:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public final setSourceInformation(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/GroupSourceInformation;->sourceInformation:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final startGrouplessCall(ILjava/lang/String;I)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/GroupSourceInformation;->openInformation()Landroidx/compose/runtime/GroupSourceInformation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/compose/runtime/GroupSourceInformation;

    .line 6
    .line 7
    invoke-direct {v1, p1, p2, p3}, Landroidx/compose/runtime/GroupSourceInformation;-><init>(ILjava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroidx/compose/runtime/GroupSourceInformation;->add(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
