.class public final Landroidx/compose/foundation/lazy/DataIndex;
.super Ljava/lang/Object;
.source "DataIndex.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final value:I


# direct methods
.method private synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/foundation/lazy/DataIndex;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/foundation/lazy/DataIndex;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/lazy/DataIndex;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/foundation/lazy/DataIndex;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final compareTo-ZjPyQlc(II)I
    .locals 0

    .line 1
    sub-int/2addr p0, p1

    .line 2
    return p0
.end method

.method public static constructor-impl(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static final dec-jQJCoq8(I)I
    .locals 0

    .line 1
    add-int/lit8 p0, p0, -0x1

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/compose/foundation/lazy/DataIndex;

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
    check-cast p1, Landroidx/compose/foundation/lazy/DataIndex;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/DataIndex;->unbox-impl()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eq p0, p1, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    return p0
.end method

.method public static hashCode-impl(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final inc-jQJCoq8(I)I
    .locals 0

    .line 1
    add-int/lit8 p0, p0, 0x1

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static final minus-PBKCTt8(II)I
    .locals 0

    .line 1
    sub-int/2addr p0, p1

    .line 2
    invoke-static {p0}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static final minus-yUvdeeg(II)I
    .locals 0

    .line 1
    sub-int/2addr p0, p1

    .line 2
    invoke-static {p0}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static final plus-PBKCTt8(II)I
    .locals 0

    .line 1
    add-int/2addr p0, p1

    .line 2
    invoke-static {p0}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "DataIndex(value="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/DataIndex;->value:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/foundation/lazy/DataIndex;->equals-impl(ILjava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/DataIndex;->value:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/DataIndex;->value:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/foundation/lazy/DataIndex;->hashCode-impl(I)I

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
    iget v0, p0, Landroidx/compose/foundation/lazy/DataIndex;->value:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/foundation/lazy/DataIndex;->toString-impl(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final synthetic unbox-impl()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/DataIndex;->value:I

    .line 2
    .line 3
    return v0
.end method
