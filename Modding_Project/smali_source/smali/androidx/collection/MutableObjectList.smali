.class public final Landroidx/collection/MutableObjectList;
.super Landroidx/collection/ObjectList;
.source "ObjectList.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/collection/MutableObjectList$MutableObjectListIterator;,
        Landroidx/collection/MutableObjectList$ObjectListMutableList;,
        Landroidx/collection/MutableObjectList$SubList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/collection/ObjectList<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nObjectList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectList.kt\nandroidx/collection/MutableObjectList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 5 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 6 ObjectList.kt\nandroidx/collection/ObjectList\n+ 7 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 8 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1548:1\n903#1,5:1549\n903#1,5:1554\n903#1,5:1559\n903#1,5:1564\n903#1,5:1572\n903#1,5:1577\n903#1,5:1582\n919#1,2:1604\n903#1,5:1613\n903#1,5:1618\n919#1,2:1624\n919#1,2:1628\n629#1:1631\n924#1,2:1634\n924#1,2:1641\n924#1,2:1661\n924#1,2:1670\n924#1,2:1673\n924#1,2:1677\n1864#2,3:1569\n1855#2:1623\n1856#2:1626\n1855#2:1672\n1856#2:1675\n231#3,3:1587\n200#3,7:1590\n211#3,3:1598\n214#3,2:1602\n217#3,6:1606\n234#3:1612\n231#3,3:1644\n200#3,7:1647\n211#3,3:1655\n214#3,2:1659\n217#3,6:1663\n234#3:1669\n1399#4:1597\n1270#4:1601\n1399#4:1654\n1270#4:1658\n1313#5:1627\n1314#5:1630\n1313#5:1676\n1314#5:1679\n84#6:1632\n287#6,4:1637\n292#6:1643\n80#6:1680\n80#6:1681\n80#6:1682\n80#6:1683\n80#6:1684\n80#6:1685\n13309#7:1633\n13310#7:1636\n1#8:1686\n*S KotlinDebug\n*F\n+ 1 ObjectList.kt\nandroidx/collection/MutableObjectList\n*L\n633#1:1549,5\n649#1:1554,5\n678#1:1559,5\n708#1:1564,5\n738#1:1572,5\n825#1:1577,5\n839#1:1582,5\n840#1:1604,2\n846#1:1613,5\n856#1:1618,5\n866#1:1624,2\n871#1:1628,2\n892#1:1631\n1020#1:1634,2\n1025#1:1641,2\n1030#1:1661,2\n1036#1:1670,2\n1042#1:1673,2\n1047#1:1677,2\n718#1:1569,3\n866#1:1623\n866#1:1626\n1042#1:1672\n1042#1:1675\n840#1:1587,3\n840#1:1590,7\n840#1:1598,3\n840#1:1602,2\n840#1:1606,6\n840#1:1612\n1030#1:1644,3\n1030#1:1647,7\n1030#1:1655,3\n1030#1:1659,2\n1030#1:1663,6\n1030#1:1669\n840#1:1597\n840#1:1601\n1030#1:1654\n1030#1:1658\n871#1:1627\n871#1:1630\n1047#1:1676\n1047#1:1679\n946#1:1632\n1025#1:1637,4\n1025#1:1643\n1061#1:1680\n1113#1:1681\n1130#1:1682\n1147#1:1683\n1164#1:1684\n1181#1:1685\n1020#1:1633\n1020#1:1636\n*E\n"
    }
.end annotation


# instance fields
.field private list:Landroidx/collection/MutableObjectList$ObjectListMutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectList$ObjectListMutableList<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/MutableObjectList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/collection/ObjectList;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x10

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/MutableObjectList;-><init>(I)V

    return-void
.end method

.method private final throwIndexOutOfBoundsInclusiveException(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Index "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, " must be in 0.."

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static synthetic trim$default(Landroidx/collection/MutableObjectList;IILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->trim(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 7
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/MutableObjectList;->throwIndexOutOfBoundsInclusiveException(I)V

    .line 9
    :goto_0
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    add-int/lit8 v0, v0, 0x1

    .line 10
    iget-object v1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 11
    array-length v2, v1

    if-ge v2, v0, :cond_1

    .line 12
    invoke-virtual {p0, v0, v1}, Landroidx/collection/MutableObjectList;->resizeStorage(I[Ljava/lang/Object;)V

    .line 13
    :cond_1
    iget-object v0, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 14
    iget v1, p0, Landroidx/collection/ObjectList;->_size:I

    if-eq p1, v1, :cond_2

    add-int/lit8 v2, p1, 0x1

    .line 15
    invoke-static {v0, v0, v2, p1, v1}, Lkotlin/collections/n;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 16
    :cond_2
    aput-object p2, v0, p1

    .line 17
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/collection/ObjectList;->_size:I

    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 3
    array-length v3, v2

    if-ge v3, v0, :cond_0

    .line 4
    invoke-virtual {p0, v0, v2}, Landroidx/collection/MutableObjectList;->resizeStorage(I[Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/ObjectList;->_size:I

    aput-object p1, v0, v2

    add-int/2addr v2, v1

    .line 6
    iput v2, p0, Landroidx/collection/ObjectList;->_size:I

    return v1
.end method

.method public final addAll(ILandroidx/collection/ObjectList;)Z
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Landroidx/collection/ObjectList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/collection/ObjectList<",
            "TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    .line 30
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/MutableObjectList;->throwIndexOutOfBoundsInclusiveException(I)V

    .line 32
    :goto_0
    invoke-virtual {p2}, Landroidx/collection/ObjectList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 33
    :cond_1
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    iget v2, p2, Landroidx/collection/ObjectList;->_size:I

    add-int/2addr v0, v2

    .line 34
    iget-object v2, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 35
    array-length v3, v2

    if-ge v3, v0, :cond_2

    .line 36
    invoke-virtual {p0, v0, v2}, Landroidx/collection/MutableObjectList;->resizeStorage(I[Ljava/lang/Object;)V

    .line 37
    :cond_2
    iget-object v0, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 38
    iget v2, p0, Landroidx/collection/ObjectList;->_size:I

    if-eq p1, v2, :cond_3

    .line 39
    iget v3, p2, Landroidx/collection/ObjectList;->_size:I

    add-int/2addr v3, p1

    .line 40
    invoke-static {v0, v0, v3, p1, v2}, Lkotlin/collections/n;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 41
    :cond_3
    iget-object v2, p2, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 42
    iget v3, p2, Landroidx/collection/ObjectList;->_size:I

    .line 43
    invoke-static {v2, v0, p1, v1, v3}, Lkotlin/collections/n;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 44
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    iget p2, p2, Landroidx/collection/ObjectList;->_size:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/collection/ObjectList;->_size:I

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    .line 14
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/MutableObjectList;->throwIndexOutOfBoundsInclusiveException(I)V

    .line 16
    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 17
    :cond_1
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 18
    iget-object v2, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 19
    array-length v3, v2

    if-ge v3, v0, :cond_2

    .line 20
    invoke-virtual {p0, v0, v2}, Landroidx/collection/MutableObjectList;->resizeStorage(I[Ljava/lang/Object;)V

    .line 21
    :cond_2
    iget-object v0, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 22
    iget v2, p0, Landroidx/collection/ObjectList;->_size:I

    if-eq p1, v2, :cond_3

    .line 23
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, p1

    .line 24
    iget v3, p0, Landroidx/collection/ObjectList;->_size:I

    .line 25
    invoke-static {v0, v0, v2, p1, v3}, Lkotlin/collections/n;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 26
    :cond_3
    move-object v2, p2

    check-cast v2, Ljava/lang/Iterable;

    .line 27
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    :cond_4
    add-int/2addr v1, p1

    .line 28
    aput-object v3, v0, v1

    move v1, v4

    goto :goto_1

    .line 29
    :cond_5
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/collection/ObjectList;->_size:I

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(I[Ljava/lang/Object;)Z
    .locals 10
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TE;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/MutableObjectList;->throwIndexOutOfBoundsInclusiveException(I)V

    .line 3
    :goto_0
    array-length v0, p2

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    array-length v1, p2

    add-int/2addr v0, v1

    .line 5
    iget-object v1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 6
    array-length v2, v1

    if-ge v2, v0, :cond_2

    .line 7
    invoke-virtual {p0, v0, v1}, Landroidx/collection/MutableObjectList;->resizeStorage(I[Ljava/lang/Object;)V

    .line 8
    :cond_2
    iget-object v4, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 9
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    if-eq p1, v0, :cond_3

    .line 10
    array-length v1, p2

    add-int/2addr v1, p1

    .line 11
    invoke-static {v4, v4, v1, p1, v0}, Lkotlin/collections/n;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :cond_3
    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move v5, p1

    .line 12
    invoke-static/range {v3 .. v9}, Lkotlin/collections/n;->u([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 13
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    array-length p2, p2

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/collection/ObjectList;->_size:I

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(Landroidx/collection/ObjectList;)Z
    .locals 1
    .param p1    # Landroidx/collection/ObjectList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ObjectList<",
            "TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 46
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->plusAssign(Landroidx/collection/ObjectList;)V

    .line 47
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final addAll(Landroidx/collection/ScatterSet;)Z
    .locals 1
    .param p1    # Landroidx/collection/ScatterSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ScatterSet<",
            "TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 49
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->plusAssign(Landroidx/collection/ScatterSet;)V

    .line 50
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final addAll(Ljava/lang/Iterable;)Z
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 58
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->plusAssign(Ljava/lang/Iterable;)V

    .line 59
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final addAll(Ljava/util/List;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 55
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->plusAssign(Ljava/util/List;)V

    .line 56
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final addAll(Lkotlin/sequences/Sequence;)Z
    .locals 1
    .param p1    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 61
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->plusAssign(Lkotlin/sequences/Sequence;)V

    .line 62
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final addAll([Ljava/lang/Object;)Z
    .locals 1
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 52
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->plusAssign([Ljava/lang/Object;)V

    .line 53
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public asList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/collection/MutableObjectList;->asMutableList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final asMutableList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/collection/MutableObjectList;->list:Landroidx/collection/MutableObjectList$ObjectListMutableList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroidx/collection/MutableObjectList$ObjectListMutableList;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroidx/collection/MutableObjectList$ObjectListMutableList;-><init>(Landroidx/collection/MutableObjectList;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/collection/MutableObjectList;->list:Landroidx/collection/MutableObjectList$ObjectListMutableList;

    .line 12
    .line 13
    :goto_0
    return-object v0
.end method

.method public final clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Landroidx/collection/ObjectList;->_size:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-static {v0, v2, v3, v1}, Lkotlin/collections/n;->C([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 8
    .line 9
    .line 10
    iput v3, p0, Landroidx/collection/ObjectList;->_size:I

    .line 11
    .line 12
    return-void
.end method

.method public final ensureCapacity(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge v1, p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Landroidx/collection/MutableObjectList;->resizeStorage(I[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final getCapacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public final minusAssign(Landroidx/collection/ObjectList;)V
    .locals 3
    .param p1    # Landroidx/collection/ObjectList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ObjectList<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p1, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 8
    iget p1, p1, Landroidx/collection/ObjectList;->_size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 9
    aget-object v2, v0, v1

    .line 10
    invoke-virtual {p0, v2}, Landroidx/collection/MutableObjectList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final minusAssign(Landroidx/collection/ScatterSet;)V
    .locals 13
    .param p1    # Landroidx/collection/ScatterSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ScatterSet<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 12
    iget-object p1, p1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 13
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_3

    const/4 v2, 0x0

    move v3, v2

    .line 14
    :goto_0
    aget-wide v4, p1, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    sub-int v6, v3, v1

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move v8, v2

    :goto_1
    if-ge v8, v6, :cond_1

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    .line 15
    aget-object v9, v0, v9

    .line 16
    invoke-virtual {p0, v9}, Landroidx/collection/MutableObjectList;->remove(Ljava/lang/Object;)Z

    :cond_0
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    if-ne v6, v7, :cond_3

    :cond_2
    if-eq v3, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final minusAssign(Ljava/lang/Iterable;)V
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Landroidx/collection/MutableObjectList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final minusAssign(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final minusAssign(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v2}, Landroidx/collection/MutableObjectList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final minusAssign(Lkotlin/sequences/Sequence;)V
    .locals 1
    .param p1    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Landroidx/collection/MutableObjectList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final minusAssign([Ljava/lang/Object;)V
    .locals 3
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 6
    invoke-virtual {p0, v2}, Landroidx/collection/MutableObjectList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final plusAssign(Landroidx/collection/ObjectList;)V
    .locals 5
    .param p1    # Landroidx/collection/ObjectList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ObjectList<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/collection/ObjectList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    iget v1, p1, Landroidx/collection/ObjectList;->_size:I

    add-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 4
    array-length v2, v1

    if-ge v2, v0, :cond_1

    .line 5
    invoke-virtual {p0, v0, v1}, Landroidx/collection/MutableObjectList;->resizeStorage(I[Ljava/lang/Object;)V

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 7
    iget-object v1, p1, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 8
    iget v2, p0, Landroidx/collection/ObjectList;->_size:I

    const/4 v3, 0x0

    .line 9
    iget v4, p1, Landroidx/collection/ObjectList;->_size:I

    .line 10
    invoke-static {v1, v0, v2, v3, v4}, Lkotlin/collections/n;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 11
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    iget p1, p1, Landroidx/collection/ObjectList;->_size:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/collection/ObjectList;->_size:I

    return-void
.end method

.method public final plusAssign(Landroidx/collection/ScatterSet;)V
    .locals 13
    .param p1    # Landroidx/collection/ScatterSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ScatterSet<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Landroidx/collection/ScatterSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 13
    :cond_0
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    invoke-virtual {p1}, Landroidx/collection/ScatterSet;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    iget-object v1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 15
    array-length v2, v1

    if-ge v2, v0, :cond_1

    .line 16
    invoke-virtual {p0, v0, v1}, Landroidx/collection/MutableObjectList;->resizeStorage(I[Ljava/lang/Object;)V

    .line 17
    :cond_1
    iget-object v0, p1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 18
    iget-object p1, p1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 19
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_5

    const/4 v2, 0x0

    move v3, v2

    .line 20
    :goto_0
    aget-wide v4, p1, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    sub-int v6, v3, v1

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move v8, v2

    :goto_1
    if-ge v8, v6, :cond_3

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_2

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    .line 21
    aget-object v9, v0, v9

    .line 22
    invoke-virtual {p0, v9}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    :cond_2
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    if-ne v6, v7, :cond_5

    :cond_4
    if-eq v3, v1, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final plusAssign(Ljava/lang/Iterable;)V
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final plusAssign(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final plusAssign(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 34
    iget-object v2, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 35
    array-length v3, v2

    if-ge v3, v1, :cond_1

    .line 36
    invoke-virtual {p0, v1, v2}, Landroidx/collection/MutableObjectList;->resizeStorage(I[Ljava/lang/Object;)V

    .line 37
    :cond_1
    iget-object v1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 38
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    add-int v4, v3, v0

    .line 39
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    :cond_2
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/collection/ObjectList;->_size:I

    return-void
.end method

.method public final plusAssign(Lkotlin/sequences/Sequence;)V
    .locals 1
    .param p1    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final plusAssign([Ljava/lang/Object;)V
    .locals 10
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 24
    :cond_0
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    array-length v1, p1

    add-int/2addr v0, v1

    .line 25
    iget-object v1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 26
    array-length v2, v1

    if-ge v2, v0, :cond_1

    .line 27
    invoke-virtual {p0, v0, v1}, Landroidx/collection/MutableObjectList;->resizeStorage(I[Ljava/lang/Object;)V

    .line 28
    :cond_1
    iget-object v4, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 29
    iget v5, p0, Landroidx/collection/ObjectList;->_size:I

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Lkotlin/collections/n;->u([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 30
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/collection/ObjectList;->_size:I

    return-void
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/ObjectList;->indexOf(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public final removeAll(Landroidx/collection/ObjectList;)Z
    .locals 1
    .param p1    # Landroidx/collection/ObjectList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ObjectList<",
            "TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 6
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->minusAssign(Landroidx/collection/ObjectList;)V

    .line 7
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final removeAll(Landroidx/collection/ScatterSet;)Z
    .locals 1
    .param p1    # Landroidx/collection/ScatterSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ScatterSet<",
            "TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 9
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->minusAssign(Landroidx/collection/ScatterSet;)V

    .line 10
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final removeAll(Ljava/lang/Iterable;)Z
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 15
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->minusAssign(Ljava/lang/Iterable;)V

    .line 16
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final removeAll(Ljava/util/List;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 12
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->minusAssign(Ljava/util/List;)V

    .line 13
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final removeAll(Lkotlin/sequences/Sequence;)Z
    .locals 1
    .param p1    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 18
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->minusAssign(Lkotlin/sequences/Sequence;)V

    .line 19
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final removeAll([Ljava/lang/Object;)Z
    .locals 5
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 3
    aget-object v4, p1, v3

    invoke-virtual {p0, v4}, Landroidx/collection/MutableObjectList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    if-eq v0, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final removeAt(I)Ljava/lang/Object;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/collection/ObjectList;->throwIndexOutOfBoundsExclusiveException$collection(I)V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget-object v0, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 12
    .line 13
    aget-object v1, v0, p1

    .line 14
    .line 15
    iget v2, p0, Landroidx/collection/ObjectList;->_size:I

    .line 16
    .line 17
    add-int/lit8 v3, v2, -0x1

    .line 18
    .line 19
    if-eq p1, v3, :cond_1

    .line 20
    .line 21
    add-int/lit8 v3, p1, 0x1

    .line 22
    .line 23
    invoke-static {v0, v0, p1, v3, v2}, Lkotlin/collections/n;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_1
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    .line 27
    .line 28
    add-int/lit8 p1, p1, -0x1

    .line 29
    .line 30
    iput p1, p0, Landroidx/collection/ObjectList;->_size:I

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    aput-object v2, v0, p1

    .line 34
    .line 35
    return-object v1
.end method

.method public final removeIf(Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "predicate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v2, v0}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lkotlin/ranges/d;->c()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-virtual {v3}, Lkotlin/ranges/d;->d()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-gt v4, v3, :cond_1

    .line 24
    .line 25
    :goto_0
    sub-int v5, v4, v2

    .line 26
    .line 27
    aget-object v6, v1, v4

    .line 28
    .line 29
    aput-object v6, v1, v5

    .line 30
    .line 31
    aget-object v5, v1, v4

    .line 32
    .line 33
    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    :cond_0
    if-eq v4, v3, :cond_1

    .line 48
    .line 49
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    sub-int v3, v0, v2

    .line 54
    .line 55
    invoke-static {v1, p1, v3, v0}, Lkotlin/collections/n;->C([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 56
    .line 57
    .line 58
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    .line 59
    .line 60
    sub-int/2addr p1, v2

    .line 61
    iput p1, p0, Landroidx/collection/ObjectList;->_size:I

    .line 62
    .line 63
    return-void
.end method

.method public final removeRange(II)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    const-string v0, "Start ("

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    iget v1, p0, Landroidx/collection/ObjectList;->_size:I

    .line 6
    .line 7
    if-gt p1, v1, :cond_0

    .line 8
    .line 9
    if-ltz p2, :cond_0

    .line 10
    .line 11
    if-gt p2, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ") and end ("

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ") must be in 0.."

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v2, p0, Landroidx/collection/ObjectList;->_size:I

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    if-ge p2, p1, :cond_1

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, ") is more than end ("

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const/16 v0, 0x29

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    if-eq p2, p1, :cond_3

    .line 84
    .line 85
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 86
    .line 87
    if-ge p2, v0, :cond_2

    .line 88
    .line 89
    iget-object v1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 90
    .line 91
    invoke-static {v1, v1, p1, p2, v0}, Lkotlin/collections/n;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    :cond_2
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 95
    .line 96
    sub-int/2addr p2, p1

    .line 97
    sub-int p1, v0, p2

    .line 98
    .line 99
    iget-object p2, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    invoke-static {p2, v1, p1, v0}, Lkotlin/collections/n;->C([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 103
    .line 104
    .line 105
    iput p1, p0, Landroidx/collection/ObjectList;->_size:I

    .line 106
    .line 107
    :cond_3
    return-void
.end method

.method public final resizeStorage(I[Ljava/lang/Object;)V
    .locals 2
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "oldContent"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p2

    .line 7
    mul-int/lit8 v1, v0, 0x3

    .line 8
    .line 9
    div-int/lit8 v1, v1, 0x2

    .line 10
    .line 11
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    new-array p1, p1, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {p2, p1, v1, v1, v0}, Lkotlin/collections/n;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 23
    .line 24
    return-void
.end method

.method public final retainAll(Landroidx/collection/ObjectList;)Z
    .locals 4
    .param p1    # Landroidx/collection/ObjectList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ObjectList<",
            "TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 8
    iget-object v1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    add-int/lit8 v2, v0, -0x1

    :goto_0
    const/4 v3, -0x1

    if-ge v3, v2, :cond_1

    .line 9
    aget-object v3, v1, v2

    .line 10
    invoke-virtual {p1, v3}, Landroidx/collection/ObjectList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 11
    invoke-virtual {p0, v2}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 12
    :cond_1
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    if-eq v0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final retainAll(Ljava/lang/Iterable;)Z
    .locals 4
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 20
    iget-object v1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    add-int/lit8 v2, v0, -0x1

    :goto_0
    const/4 v3, -0x1

    if-ge v3, v2, :cond_1

    .line 21
    aget-object v3, v1, v2

    .line 22
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->g0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 23
    invoke-virtual {p0, v2}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 24
    :cond_1
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    if-eq v0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 14
    iget-object v1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    add-int/lit8 v2, v0, -0x1

    :goto_0
    const/4 v3, -0x1

    if-ge v3, v2, :cond_1

    .line 15
    aget-object v3, v1, v2

    .line 16
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 17
    invoke-virtual {p0, v2}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 18
    :cond_1
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    if-eq v0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final retainAll(Lkotlin/sequences/Sequence;)Z
    .locals 4
    .param p1    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 26
    iget-object v1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    add-int/lit8 v2, v0, -0x1

    :goto_0
    const/4 v3, -0x1

    if-ge v3, v2, :cond_1

    .line 27
    aget-object v3, v1, v2

    .line 28
    invoke-static {p1, v3}, Lkotlin/sequences/j;->q(Lkotlin/sequences/Sequence;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 29
    invoke-virtual {p0, v2}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 30
    :cond_1
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    if-eq v0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final retainAll([Ljava/lang/Object;)Z
    .locals 4
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 2
    iget-object v1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    add-int/lit8 v2, v0, -0x1

    :goto_0
    const/4 v3, -0x1

    if-ge v3, v2, :cond_1

    .line 3
    aget-object v3, v1, v2

    .line 4
    invoke-static {p1, v3}, Lkotlin/collections/n;->y0([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    .line 5
    invoke-virtual {p0, v2}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6
    :cond_1
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    if-eq v0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/collection/ObjectList;->throwIndexOutOfBoundsExclusiveException$collection(I)V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget-object v0, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 12
    .line 13
    aget-object v1, v0, p1

    .line 14
    .line 15
    aput-object p2, v0, p1

    .line 16
    .line 17
    return-object v1
.end method

.method public final trim(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    if-le v1, p1, :cond_0

    .line 11
    .line 12
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "copyOf(...)"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 22
    .line 23
    :cond_0
    return-void
.end method
