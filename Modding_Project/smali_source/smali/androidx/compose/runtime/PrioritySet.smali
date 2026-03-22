.class public final Landroidx/compose/runtime/PrioritySet;
.super Ljava/lang/Object;
.source "SlotTable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/PrioritySet\n+ 2 IntList.kt\nandroidx/collection/IntList\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 5 IntList.kt\nandroidx/collection/IntListKt\n*L\n1#1,4061:1\n366#2:4062\n65#2:4063\n65#2:4064\n363#2:4065\n366#2:4066\n65#2:4067\n366#2:4072\n65#2:4073\n65#2:4074\n65#2:4075\n65#2:4076\n4802#3,4:4068\n58#4,4:4077\n58#4,4:4081\n905#5:4085\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/PrioritySet\n*L\n3973#1:4062\n3973#1:4063\n3975#1:4064\n3990#1:4065\n3992#1:4066\n3998#1:4067\n4005#1:4072\n4008#1:4073\n4010#1:4074\n4011#1:4075\n4042#1:4076\n3998#1:4068,4\n4046#1:4077,4\n4047#1:4081,4\n3969#1:4085\n*E\n"
    }
.end annotation


# instance fields
.field private final list:Landroidx/collection/MutableIntList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private synthetic constructor <init>(Landroidx/collection/MutableIntList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/PrioritySet;->list:Landroidx/collection/MutableIntList;

    .line 5
    .line 6
    return-void
.end method

.method public static final add-impl(Landroidx/collection/MutableIntList;I)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/collection/IntList;->get(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eq v0, p1, :cond_0

    .line 11
    .line 12
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/collection/IntList;->get(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, p1, :cond_1

    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntList;->add(I)Z

    .line 26
    .line 27
    .line 28
    :goto_0
    if-lez v0, :cond_2

    .line 29
    .line 30
    add-int/lit8 v1, v0, 0x1

    .line 31
    .line 32
    ushr-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroidx/collection/IntList;->get(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-le p1, v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, v0, v2}, Landroidx/collection/MutableIntList;->set(II)I

    .line 43
    .line 44
    .line 45
    move v0, v1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0, v0, p1}, Landroidx/collection/MutableIntList;->set(II)I

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static final synthetic box-impl(Landroidx/collection/MutableIntList;)Landroidx/compose/runtime/PrioritySet;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/runtime/PrioritySet;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/runtime/PrioritySet;-><init>(Landroidx/collection/MutableIntList;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static constructor-impl(Landroidx/collection/MutableIntList;)Landroidx/collection/MutableIntList;
    .locals 0
    .param p0    # Landroidx/collection/MutableIntList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public static synthetic constructor-impl$default(Landroidx/collection/MutableIntList;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/collection/MutableIntList;
    .locals 1

    .line 1
    const/4 p2, 0x1

    .line 2
    and-int/2addr p1, p2

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p0, Landroidx/collection/MutableIntList;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, v0}, Landroidx/collection/MutableIntList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p0}, Landroidx/compose/runtime/PrioritySet;->constructor-impl(Landroidx/collection/MutableIntList;)Landroidx/collection/MutableIntList;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static equals-impl(Landroidx/collection/MutableIntList;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/compose/runtime/PrioritySet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroidx/compose/runtime/PrioritySet;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/runtime/PrioritySet;->unbox-impl()Landroidx/collection/MutableIntList;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public static final equals-impl0(Landroidx/collection/MutableIntList;Landroidx/collection/MutableIntList;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static hashCode-impl(Landroidx/collection/MutableIntList;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/collection/IntList;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final isEmpty-impl(Landroidx/collection/MutableIntList;)Z
    .locals 0

    .line 1
    iget p0, p0, Landroidx/collection/IntList;->_size:I

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public static final isNotEmpty-impl(Landroidx/collection/MutableIntList;)Z
    .locals 0

    .line 1
    iget p0, p0, Landroidx/collection/IntList;->_size:I

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public static final peek-impl(Landroidx/collection/MutableIntList;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/collection/IntList;->first()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final takeMax-impl(Landroidx/collection/MutableIntList;)I
    .locals 10

    .line 1
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroidx/collection/IntList;->get(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    :cond_0
    iget v2, p0, Landroidx/collection/IntList;->_size:I

    .line 9
    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/collection/IntList;->get(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ne v2, v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/collection/IntList;->last()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {p0, v0, v2}, Landroidx/collection/MutableIntList;->set(II)I

    .line 23
    .line 24
    .line 25
    iget v2, p0, Landroidx/collection/IntList;->_size:I

    .line 26
    .line 27
    add-int/lit8 v2, v2, -0x1

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroidx/collection/MutableIntList;->removeAt(I)I

    .line 30
    .line 31
    .line 32
    iget v2, p0, Landroidx/collection/IntList;->_size:I

    .line 33
    .line 34
    ushr-int/lit8 v3, v2, 0x1

    .line 35
    .line 36
    move v4, v0

    .line 37
    :goto_0
    if-ge v4, v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, v4}, Landroidx/collection/IntList;->get(I)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    add-int/lit8 v6, v4, 0x1

    .line 44
    .line 45
    mul-int/lit8 v6, v6, 0x2

    .line 46
    .line 47
    add-int/lit8 v7, v6, -0x1

    .line 48
    .line 49
    invoke-virtual {p0, v7}, Landroidx/collection/IntList;->get(I)I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-ge v6, v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0, v6}, Landroidx/collection/IntList;->get(I)I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    if-le v9, v8, :cond_1

    .line 60
    .line 61
    if-le v9, v5, :cond_0

    .line 62
    .line 63
    invoke-virtual {p0, v4, v9}, Landroidx/collection/MutableIntList;->set(II)I

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v6, v5}, Landroidx/collection/MutableIntList;->set(II)I

    .line 67
    .line 68
    .line 69
    move v4, v6

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    if-le v8, v5, :cond_0

    .line 72
    .line 73
    invoke-virtual {p0, v4, v8}, Landroidx/collection/MutableIntList;->set(II)I

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v7, v5}, Landroidx/collection/MutableIntList;->set(II)I

    .line 77
    .line 78
    .line 79
    move v4, v7

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    return v1
.end method

.method public static toString-impl(Landroidx/collection/MutableIntList;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "PrioritySet(list="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/16 p0, 0x29

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static final validateHeap-impl(Landroidx/collection/MutableIntList;)V
    .locals 9

    .line 1
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    .line 2
    .line 3
    div-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    if-ge v3, v1, :cond_5

    .line 8
    .line 9
    add-int/lit8 v4, v3, 0x1

    .line 10
    .line 11
    mul-int/lit8 v5, v4, 0x2

    .line 12
    .line 13
    add-int/lit8 v6, v5, -0x1

    .line 14
    .line 15
    invoke-virtual {p0, v3}, Landroidx/collection/IntList;->get(I)I

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    invoke-virtual {p0, v6}, Landroidx/collection/IntList;->get(I)I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    const/4 v8, 0x1

    .line 24
    if-lt v7, v6, :cond_0

    .line 25
    .line 26
    move v6, v8

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    move v6, v2

    .line 29
    :goto_1
    const-string v7, "Check failed."

    .line 30
    .line 31
    if-nez v6, :cond_1

    .line 32
    .line 33
    invoke-static {v7}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    if-ge v5, v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0, v3}, Landroidx/collection/IntList;->get(I)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {p0, v5}, Landroidx/collection/IntList;->get(I)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-lt v3, v5, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move v8, v2

    .line 50
    :cond_3
    :goto_2
    if-nez v8, :cond_4

    .line 51
    .line 52
    invoke-static {v7}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_4
    move v3, v4

    .line 56
    goto :goto_0

    .line 57
    :cond_5
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/PrioritySet;->list:Landroidx/collection/MutableIntList;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/runtime/PrioritySet;->equals-impl(Landroidx/collection/MutableIntList;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/PrioritySet;->list:Landroidx/collection/MutableIntList;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/PrioritySet;->hashCode-impl(Landroidx/collection/MutableIntList;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/PrioritySet;->list:Landroidx/collection/MutableIntList;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/PrioritySet;->toString-impl(Landroidx/collection/MutableIntList;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final synthetic unbox-impl()Landroidx/collection/MutableIntList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/PrioritySet;->list:Landroidx/collection/MutableIntList;

    .line 2
    .line 3
    return-object v0
.end method
