.class public final Landroidx/compose/runtime/SlotTableKt;
.super Ljava/lang/Object;
.source "SlotTable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,4061:1\n3824#1:4063\n3911#1:4064\n3911#1:4065\n3824#1:4066\n3824#1:4067\n3911#1:4086\n3911#1:4087\n3911#1:4088\n1#2:4062\n4807#3:4068\n4802#3,4:4069\n4807#3:4081\n4802#3,4:4082\n82#4,2:4073\n34#4,5:4075\n84#4:4080\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n*L\n3778#1:4063\n3795#1:4064\n3805#1:4065\n3816#1:4066\n3821#1:4067\n3903#1:4086\n3904#1:4087\n3905#1:4088\n3837#1:4068\n3837#1:4069,4\n3860#1:4081\n3860#1:4082,4\n3843#1:4073,2\n3843#1:4075,5\n3843#1:4080\n*E\n"
    }
.end annotation


# static fields
.field private static final Aux_Mask:I = 0x10000000

.field private static final Aux_Shift:I = 0x1c

.field private static final ContainsMark_Mask:I = 0x4000000

.field private static final ContainsMark_Shift:I = 0x1a

.field private static final DataAnchor_Offset:I = 0x4

.field private static final EmptyLongArray:[J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final GroupInfo_Offset:I = 0x1

.field private static final Group_Fields_Size:I = 0x5

.field private static final Key_Offset:I = 0x0

.field private static final LIVE_EDIT_INVALID_KEY:I = -0x3

.field private static final Mark_Mask:I = 0x8000000

.field private static final Mark_Shift:I = 0x1b

.field private static final MinGroupGrowthSize:I = 0x20

.field private static final MinSlotsGrowthSize:I = 0x20

.field private static final NodeBit_Mask:I = 0x40000000

.field private static final NodeBit_Shift:I = 0x1e

.field private static final NodeCount_Mask:I = 0x3ffffff

.field private static final ObjectKey_Mask:I = 0x20000000

.field private static final ObjectKey_Shift:I = 0x1d

.field private static final ParentAnchor_Offset:I = 0x2

.field private static final Size_Offset:I = 0x3

.field private static final Slots_Shift:I = 0x1c

.field private static final parentAnchorPivot:I = -0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [J

    .line 3
    .line 4
    sput-object v0, Landroidx/compose/runtime/SlotTableKt;->EmptyLongArray:[J

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic access$add(Landroidx/collection/MutableIntObjectMap;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->add(Landroidx/collection/MutableIntObjectMap;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$addAux([II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->addAux([II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$auxIndex([II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->auxIndex([II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$dataAnchors([II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->dataAnchors([II)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$find(Ljava/util/ArrayList;II)Landroidx/compose/runtime/Anchor;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->find(Ljava/util/ArrayList;II)Landroidx/compose/runtime/Anchor;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getEmptyLongArray$p()[J
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/SlotTableKt;->EmptyLongArray:[J

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$groupSize([II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->groupSize([II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$groupSizes([II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->groupSizes([II)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$initGroup([IIIZZZII)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Landroidx/compose/runtime/SlotTableKt;->initGroup([IIIZZZII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$keys([II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->keys([II)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$locationOf(Ljava/util/ArrayList;II)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->locationOf(Ljava/util/ArrayList;II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$nodeCounts([II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->nodeCounts([II)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$objectKeyIndex([II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->objectKeyIndex([II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$parentAnchors([II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->parentAnchors([II)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$search(Ljava/util/ArrayList;II)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->search(Ljava/util/ArrayList;II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$slotAnchor([II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->slotAnchor([II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$summarize(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->summarize(Ljava/lang/String;I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$updateContainsMark([IIZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->updateContainsMark([IIZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$updateGroupKey([III)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->updateGroupKey([III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$updateGroupSize([III)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->updateGroupSize([III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$updateMark([IIZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->updateMark([IIZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$updateNodeCount([III)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->updateNodeCount([III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final add(Landroidx/collection/MutableIntObjectMap;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/collection/MutableIntSet;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/collection/MutableIntSet;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroidx/collection/MutableIntSet;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0, p2}, Landroidx/collection/MutableIntSet;->add(I)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static final addAux([II)V
    .locals 2

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    aget v0, p0, p1

    .line 6
    .line 7
    const/high16 v1, 0x10000000

    .line 8
    .line 9
    or-int/2addr v0, v1

    .line 10
    aput v0, p0, p1

    .line 11
    .line 12
    return-void
.end method

.method private static final auxIndex([II)I
    .locals 1

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    .line 6
    array-length p0, p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    add-int/lit8 v0, p1, 0x4

    .line 9
    .line 10
    aget v0, p0, v0

    .line 11
    .line 12
    add-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    aget p0, p0, p1

    .line 15
    .line 16
    shr-int/lit8 p0, p0, 0x1d

    .line 17
    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    add-int/2addr p0, v0

    .line 23
    :goto_0
    return p0
.end method

.method public static final compositionGroupOf(Landroidx/compose/runtime/SlotTable;I)Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 2
    .param p0    # Landroidx/compose/runtime/SlotTable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/runtime/SlotTableGroup;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotTable;->getVersion$runtime()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, p0, p1, v1}, Landroidx/compose/runtime/SlotTableGroup;-><init>(Landroidx/compose/runtime/SlotTable;II)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private static final containsAnyMark([II)Z
    .locals 1

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    add-int/2addr p1, v0

    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    const/high16 p1, 0xc000000

    .line 8
    .line 9
    and-int/2addr p0, p1

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private static final containsMark([II)Z
    .locals 1

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    add-int/2addr p1, v0

    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    const/high16 p1, 0x4000000

    .line 8
    .line 9
    and-int/2addr p0, p1

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private static final countOneBits(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final dataAnchor([II)I
    .locals 0

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x4

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    return p0
.end method

.method private static final dataAnchors([II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {v0, p1}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    const/4 v0, 0x5

    .line 7
    invoke-static {p1, v0}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->slice([ILjava/lang/Iterable;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method static synthetic dataAnchors$default([IIILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    array-length p1, p0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->dataAnchors([II)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static final fastIndexOf(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    return v1

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, -0x1

    .line 29
    return p0
.end method

.method private static final fastLastOrNull(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method private static final find(Ljava/util/ArrayList;II)Landroidx/compose/runtime/Anchor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;II)",
            "Landroidx/compose/runtime/Anchor;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->search(Ljava/util/ArrayList;II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroidx/compose/runtime/Anchor;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method

.method private static final getFirstBitSet(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final getOrAdd(Ljava/util/ArrayList;IILkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/Anchor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;II",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/runtime/Anchor;",
            ">;)",
            "Landroidx/compose/runtime/Anchor;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$search(Ljava/util/ArrayList;II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Landroidx/compose/runtime/Anchor;

    .line 12
    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    neg-int p1, p1

    .line 16
    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    move-object p2, p0

    .line 25
    check-cast p2, Landroidx/compose/runtime/Anchor;

    .line 26
    .line 27
    :goto_0
    return-object p2
.end method

.method private static final groupInfo([II)I
    .locals 0

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    return p0
.end method

.method private static final groupSize([II)I
    .locals 0

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x3

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    return p0
.end method

.method private static final groupSizes([II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0, p1}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    const/4 v0, 0x5

    .line 7
    invoke-static {p1, v0}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->slice([ILjava/lang/Iterable;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method static synthetic groupSizes$default([IIILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    array-length p1, p0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->groupSizes([II)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static final hasAux([II)Z
    .locals 1

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    add-int/2addr p1, v0

    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    const/high16 p1, 0x10000000

    .line 8
    .line 9
    and-int/2addr p0, p1

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private static final hasMark([II)Z
    .locals 1

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    add-int/2addr p1, v0

    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    const/high16 p1, 0x8000000

    .line 8
    .line 9
    and-int/2addr p0, p1

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private static final hasObjectKey([II)Z
    .locals 1

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    add-int/2addr p1, v0

    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    const/high16 p1, 0x20000000

    .line 8
    .line 9
    and-int/2addr p0, p1

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private static final initGroup([IIIZZZII)V
    .locals 0

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    aput p2, p0, p1

    .line 4
    .line 5
    add-int/lit8 p2, p1, 0x1

    .line 6
    .line 7
    shl-int/lit8 p3, p3, 0x1e

    .line 8
    .line 9
    shl-int/lit8 p4, p4, 0x1d

    .line 10
    .line 11
    or-int/2addr p3, p4

    .line 12
    shl-int/lit8 p4, p5, 0x1c

    .line 13
    .line 14
    or-int/2addr p3, p4

    .line 15
    aput p3, p0, p2

    .line 16
    .line 17
    add-int/lit8 p2, p1, 0x2

    .line 18
    .line 19
    aput p6, p0, p2

    .line 20
    .line 21
    add-int/lit8 p2, p1, 0x3

    .line 22
    .line 23
    const/4 p3, 0x0

    .line 24
    aput p3, p0, p2

    .line 25
    .line 26
    add-int/lit8 p1, p1, 0x4

    .line 27
    .line 28
    aput p7, p0, p1

    .line 29
    .line 30
    return-void
.end method

.method private static final isNode([II)Z
    .locals 1

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    add-int/2addr p1, v0

    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    const/high16 p1, 0x40000000    # 2.0f

    .line 8
    .line 9
    and-int/2addr p0, p1

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private static final key([II)I
    .locals 0

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    aget p0, p0, p1

    .line 4
    .line 5
    return p0
.end method

.method private static final keys([II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    const/4 v0, 0x5

    .line 7
    invoke-static {p1, v0}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->slice([ILjava/lang/Iterable;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method static synthetic keys$default([IIILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    array-length p1, p0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->keys([II)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static final locationOf(Ljava/util/ArrayList;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;II)I"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->search(Ljava/util/ArrayList;II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-ltz p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 9
    .line 10
    neg-int p0, p0

    .line 11
    :goto_0
    return p0
.end method

.method private static final nodeCount([II)I
    .locals 0

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    const p1, 0x3ffffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p0, p1

    .line 11
    return p0
.end method

.method private static final nodeCounts([II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p1}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    const/4 v0, 0x5

    .line 7
    invoke-static {p1, v0}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->slice([ILjava/lang/Iterable;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    move-object v0, p0

    .line 25
    check-cast v0, Ljava/util/Collection;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x0

    .line 32
    :goto_0
    if-ge v1, v0, :cond_0

    .line 33
    .line 34
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/Number;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const v3, 0x3ffffff

    .line 45
    .line 46
    .line 47
    and-int/2addr v2, v3

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    return-object p1
.end method

.method static synthetic nodeCounts$default([IIILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    array-length p1, p0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->nodeCounts([II)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static final nodeIndex([II)I
    .locals 0

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x4

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    return p0
.end method

.method private static final objectKeyIndex([II)I
    .locals 1

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    add-int/lit8 v0, p1, 0x4

    .line 4
    .line 5
    aget v0, p0, v0

    .line 6
    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    aget p0, p0, p1

    .line 10
    .line 11
    shr-int/lit8 p0, p0, 0x1e

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    add-int/2addr v0, p0

    .line 18
    return v0
.end method

.method private static final parentAnchor([II)I
    .locals 0

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    return p0
.end method

.method private static final parentAnchors([II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0, p1}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    const/4 v0, 0x5

    .line 7
    invoke-static {p1, v0}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->slice([ILjava/lang/Iterable;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method static synthetic parentAnchors$default([IIILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    array-length p1, p0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->parentAnchors([II)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static final search(Ljava/util/ArrayList;II)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;II)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-gt v1, v0, :cond_3

    .line 9
    .line 10
    add-int v2, v1, v0

    .line 11
    .line 12
    ushr-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Landroidx/compose/runtime/Anchor;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroidx/compose/runtime/Anchor;->getLocation$runtime()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-gez v3, :cond_0

    .line 25
    .line 26
    add-int/2addr v3, p2

    .line 27
    :cond_0
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-gez v3, :cond_1

    .line 32
    .line 33
    add-int/lit8 v1, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    if-lez v3, :cond_2

    .line 37
    .line 38
    add-int/lit8 v0, v2, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return v2

    .line 42
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    neg-int p0, v1

    .line 45
    return p0
.end method

.method private static final slice([ILjava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Number;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    aget v1, p0, v1

    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-object v0
.end method

.method private static final slotAnchor([II)I
    .locals 1

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    add-int/lit8 v0, p1, 0x4

    .line 4
    .line 5
    aget v0, p0, v0

    .line 6
    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    aget p0, p0, p1

    .line 10
    .line 11
    shr-int/lit8 p0, p0, 0x1c

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    add-int/2addr v0, p0

    .line 18
    return v0
.end method

.method private static final summarize(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    .line 1
    const/4 v4, 0x4

    .line 2
    const/4 v5, 0x0

    .line 3
    const-string v1, "androidx."

    .line 4
    .line 5
    const-string v2, "a."

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    move-object v0, p0

    .line 9
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    const/4 v10, 0x4

    .line 14
    const/4 v11, 0x0

    .line 15
    const-string v7, "compose."

    .line 16
    .line 17
    const-string v8, "c."

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "runtime."

    .line 25
    .line 26
    const-string v2, "r."

    .line 27
    .line 28
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    const-string v7, "internal."

    .line 33
    .line 34
    const-string v8, "\u03b9."

    .line 35
    .line 36
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "ui."

    .line 41
    .line 42
    const-string v2, "u."

    .line 43
    .line 44
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    const-string v7, "Modifier"

    .line 49
    .line 50
    const-string v8, "\u03bc"

    .line 51
    .line 52
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "material."

    .line 57
    .line 58
    const-string v2, "m."

    .line 59
    .line 60
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    const-string v7, "Function"

    .line 65
    .line 66
    const-string v8, "\u03bb"

    .line 67
    .line 68
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "OpaqueKey"

    .line 73
    .line 74
    const-string v2, "\u03ba"

    .line 75
    .line 76
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    const-string v7, "MutableState"

    .line 81
    .line 82
    const-string v8, "\u03c3"

    .line 83
    .line 84
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    const-string p1, "substring(...)"

    .line 102
    .line 103
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-object p0
.end method

.method public static final throwConcurrentModificationException()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method private static final toBit(Z)I
    .locals 0

    .line 1
    return p0
.end method

.method private static final updateContainsMark([IIZ)V
    .locals 2

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    aget v0, p0, p1

    .line 6
    .line 7
    const v1, -0x4000001

    .line 8
    .line 9
    .line 10
    and-int/2addr v0, v1

    .line 11
    shl-int/lit8 p2, p2, 0x1a

    .line 12
    .line 13
    or-int/2addr p2, v0

    .line 14
    aput p2, p0, p1

    .line 15
    .line 16
    return-void
.end method

.method private static final updateDataAnchor([III)V
    .locals 0

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x4

    .line 4
    .line 5
    aput p2, p0, p1

    .line 6
    .line 7
    return-void
.end method

.method private static final updateGroupKey([III)V
    .locals 0

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    aput p2, p0, p1

    .line 4
    .line 5
    return-void
.end method

.method private static final updateGroupSize([III)V
    .locals 0

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x3

    .line 4
    .line 5
    aput p2, p0, p1

    .line 6
    .line 7
    return-void
.end method

.method private static final updateMark([IIZ)V
    .locals 2

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    aget v0, p0, p1

    .line 6
    .line 7
    const v1, -0x8000001

    .line 8
    .line 9
    .line 10
    and-int/2addr v0, v1

    .line 11
    shl-int/lit8 p2, p2, 0x1b

    .line 12
    .line 13
    or-int/2addr p2, v0

    .line 14
    aput p2, p0, p1

    .line 15
    .line 16
    return-void
.end method

.method private static final updateNodeCount([III)V
    .locals 2

    .line 1
    if-ltz p2, :cond_0

    .line 2
    .line 3
    const v0, 0x3ffffff

    .line 4
    .line 5
    .line 6
    :cond_0
    mul-int/lit8 p1, p1, 0x5

    .line 7
    .line 8
    add-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    aget v0, p0, p1

    .line 11
    .line 12
    const/high16 v1, -0x4000000

    .line 13
    .line 14
    and-int/2addr v0, v1

    .line 15
    or-int/2addr p2, v0

    .line 16
    aput p2, p0, p1

    .line 17
    .line 18
    return-void
.end method

.method private static final updateParentAnchor([III)V
    .locals 0

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    aput p2, p0, p1

    .line 6
    .line 7
    return-void
.end method
