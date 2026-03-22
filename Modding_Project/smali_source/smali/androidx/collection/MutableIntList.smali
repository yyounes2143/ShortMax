.class public final Landroidx/collection/MutableIntList;
.super Landroidx/collection/IntList;
.source "IntList.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIntList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntList.kt\nandroidx/collection/MutableIntList\n+ 2 IntList.kt\nandroidx/collection/IntList\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,968:1\n556#1:970\n363#2:969\n70#2:971\n237#2,6:974\n70#2:980\n70#2:981\n70#2:988\n13330#3,2:972\n1663#3,6:982\n*S KotlinDebug\n*F\n+ 1 IntList.kt\nandroidx/collection/MutableIntList\n*L\n692#1:970\n628#1:969\n749#1:971\n762#1:974,6\n776#1:980\n822#1:981\n839#1:988\n757#1:972,2\n824#1:982,6\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/MutableIntList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/collection/IntList;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x10

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/MutableIntList;-><init>(I)V

    return-void
.end method

.method public static synthetic trim$default(Landroidx/collection/MutableIntList;IILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget p1, p0, Landroidx/collection/IntList;->_size:I

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntList;->trim(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final add(II)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    if-ltz p1, :cond_0

    .line 4
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    const-string v0, "Index must be between 0 and size"

    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    .line 6
    :goto_0
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntList;->ensureCapacity(I)V

    .line 7
    iget-object v0, p0, Landroidx/collection/IntList;->content:[I

    .line 8
    iget v1, p0, Landroidx/collection/IntList;->_size:I

    if-eq p1, v1, :cond_1

    add-int/lit8 v2, p1, 0x1

    .line 9
    invoke-static {v0, v0, v2, p1, v1}, Lkotlin/collections/n;->l([I[IIII)[I

    .line 10
    :cond_1
    aput p2, v0, p1

    .line 11
    iget p1, p0, Landroidx/collection/IntList;->_size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/collection/IntList;->_size:I

    return-void
.end method

.method public final add(I)Z
    .locals 3

    .line 1
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntList;->ensureCapacity(I)V

    .line 2
    iget-object v0, p0, Landroidx/collection/IntList;->content:[I

    iget v2, p0, Landroidx/collection/IntList;->_size:I

    aput p1, v0, v2

    add-int/2addr v2, v1

    .line 3
    iput v2, p0, Landroidx/collection/IntList;->_size:I

    return v1
.end method

.method public final addAll(ILandroidx/collection/IntList;)Z
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Landroidx/collection/IntList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    .line 11
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    const-string v0, ""

    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    .line 13
    :goto_0
    iget v0, p2, Landroidx/collection/IntList;->_size:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 14
    :cond_1
    iget v2, p0, Landroidx/collection/IntList;->_size:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroidx/collection/MutableIntList;->ensureCapacity(I)V

    .line 15
    iget-object v0, p0, Landroidx/collection/IntList;->content:[I

    .line 16
    iget v2, p0, Landroidx/collection/IntList;->_size:I

    if-eq p1, v2, :cond_2

    .line 17
    iget v3, p2, Landroidx/collection/IntList;->_size:I

    add-int/2addr v3, p1

    .line 18
    invoke-static {v0, v0, v3, p1, v2}, Lkotlin/collections/n;->l([I[IIII)[I

    .line 19
    :cond_2
    iget-object v2, p2, Landroidx/collection/IntList;->content:[I

    .line 20
    iget v3, p2, Landroidx/collection/IntList;->_size:I

    .line 21
    invoke-static {v2, v0, p1, v1, v3}, Lkotlin/collections/n;->l([I[IIII)[I

    .line 22
    iget p1, p0, Landroidx/collection/IntList;->_size:I

    iget p2, p2, Landroidx/collection/IntList;->_size:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/collection/IntList;->_size:I

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(I[I)Z
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const-string v0, ""

    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    .line 3
    :goto_0
    array-length v0, p2

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    array-length v1, p2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntList;->ensureCapacity(I)V

    .line 5
    iget-object v2, p0, Landroidx/collection/IntList;->content:[I

    .line 6
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    if-eq p1, v0, :cond_2

    .line 7
    array-length v1, p2

    add-int/2addr v1, p1

    .line 8
    invoke-static {v2, v2, v1, p1, v0}, Lkotlin/collections/n;->l([I[IIII)[I

    :cond_2
    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move v3, p1

    .line 9
    invoke-static/range {v1 .. v7}, Lkotlin/collections/n;->s([I[IIIIILjava/lang/Object;)[I

    .line 10
    iget p1, p0, Landroidx/collection/IntList;->_size:I

    array-length p2, p2

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/collection/IntList;->_size:I

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(Landroidx/collection/IntList;)Z
    .locals 1
    .param p1    # Landroidx/collection/IntList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    invoke-virtual {p0, v0, p1}, Landroidx/collection/MutableIntList;->addAll(ILandroidx/collection/IntList;)Z

    move-result p1

    return p1
.end method

.method public final addAll([I)Z
    .locals 1
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    invoke-virtual {p0, v0, p1}, Landroidx/collection/MutableIntList;->addAll(I[I)Z

    move-result p1

    return p1
.end method

.method public final clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/collection/IntList;->_size:I

    .line 3
    .line 4
    return-void
.end method

.method public final ensureCapacity(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/collection/IntList;->content:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge v1, p1, :cond_0

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    mul-int/lit8 v1, v1, 0x3

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
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "copyOf(...)"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/collection/IntList;->content:[I

    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final getCapacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/collection/IntList;->content:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public final minusAssign(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntList;->remove(I)Z

    return-void
.end method

.method public final minusAssign(Landroidx/collection/IntList;)V
    .locals 3
    .param p1    # Landroidx/collection/IntList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p1, Landroidx/collection/IntList;->content:[I

    .line 5
    iget p1, p1, Landroidx/collection/IntList;->_size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 6
    aget v2, v0, v1

    .line 7
    invoke-virtual {p0, v2}, Landroidx/collection/MutableIntList;->remove(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final minusAssign([I)V
    .locals 3
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 3
    invoke-virtual {p0, v2}, Landroidx/collection/MutableIntList;->remove(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final plusAssign(I)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntList;->add(I)Z

    return-void
.end method

.method public final plusAssign(Landroidx/collection/IntList;)V
    .locals 1
    .param p1    # Landroidx/collection/IntList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    invoke-virtual {p0, v0, p1}, Landroidx/collection/MutableIntList;->addAll(ILandroidx/collection/IntList;)Z

    return-void
.end method

.method public final plusAssign([I)V
    .locals 1
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    invoke-virtual {p0, v0, p1}, Landroidx/collection/MutableIntList;->addAll(I[I)Z

    return-void
.end method

.method public final remove(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/IntList;->indexOf(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntList;->removeAt(I)I

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

.method public final removeAll(Landroidx/collection/IntList;)Z
    .locals 6
    .param p1    # Landroidx/collection/IntList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    .line 6
    iget v1, p1, Landroidx/collection/IntList;->_size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v4, v3

    .line 7
    :goto_0
    invoke-virtual {p1, v4}, Landroidx/collection/IntList;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/collection/MutableIntList;->remove(I)Z

    if-eq v4, v1, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget p1, p0, Landroidx/collection/IntList;->_size:I

    if-eq v0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method public final removeAll([I)Z
    .locals 5
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 3
    aget v4, p1, v3

    invoke-virtual {p0, v4}, Landroidx/collection/MutableIntList;->remove(I)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Landroidx/collection/IntList;->_size:I

    if-eq v0, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final removeAt(I)I
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "Index must be between 0 and size"

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    iget-object v0, p0, Landroidx/collection/IntList;->content:[I

    .line 14
    .line 15
    aget v1, v0, p1

    .line 16
    .line 17
    iget v2, p0, Landroidx/collection/IntList;->_size:I

    .line 18
    .line 19
    add-int/lit8 v3, v2, -0x1

    .line 20
    .line 21
    if-eq p1, v3, :cond_1

    .line 22
    .line 23
    add-int/lit8 v3, p1, 0x1

    .line 24
    .line 25
    invoke-static {v0, v0, p1, v3, v2}, Lkotlin/collections/n;->l([I[IIII)[I

    .line 26
    .line 27
    .line 28
    :cond_1
    iget p1, p0, Landroidx/collection/IntList;->_size:I

    .line 29
    .line 30
    add-int/lit8 p1, p1, -0x1

    .line 31
    .line 32
    iput p1, p0, Landroidx/collection/IntList;->_size:I

    .line 33
    .line 34
    return v1
.end method

.method public final removeRange(II)V
    .locals 2
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
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    .line 4
    .line 5
    if-gt p1, v0, :cond_0

    .line 6
    .line 7
    if-ltz p2, :cond_0

    .line 8
    .line 9
    if-gt p2, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "Index must be between 0 and size"

    .line 13
    .line 14
    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    if-ge p2, p1, :cond_1

    .line 18
    .line 19
    const-string v0, "The end index must be < start index"

    .line 20
    .line 21
    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    if-eq p2, p1, :cond_3

    .line 25
    .line 26
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    .line 27
    .line 28
    if-ge p2, v0, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/collection/IntList;->content:[I

    .line 31
    .line 32
    invoke-static {v1, v1, p1, p2, v0}, Lkotlin/collections/n;->l([I[IIII)[I

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    .line 36
    .line 37
    sub-int/2addr p2, p1

    .line 38
    sub-int/2addr v0, p2

    .line 39
    iput v0, p0, Landroidx/collection/IntList;->_size:I

    .line 40
    .line 41
    :cond_3
    return-void
.end method

.method public final retainAll(Landroidx/collection/IntList;)Z
    .locals 4
    .param p1    # Landroidx/collection/IntList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    .line 9
    iget-object v1, p0, Landroidx/collection/IntList;->content:[I

    add-int/lit8 v2, v0, -0x1

    :goto_0
    const/4 v3, -0x1

    if-ge v3, v2, :cond_1

    .line 10
    aget v3, v1, v2

    .line 11
    invoke-virtual {p1, v3}, Landroidx/collection/IntList;->contains(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 12
    invoke-virtual {p0, v2}, Landroidx/collection/MutableIntList;->removeAt(I)I

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 13
    :cond_1
    iget p1, p0, Landroidx/collection/IntList;->_size:I

    if-eq v0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final retainAll([I)Z
    .locals 8
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    .line 2
    iget-object v1, p0, Landroidx/collection/IntList;->content:[I

    add-int/lit8 v2, v0, -0x1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ge v4, v2, :cond_3

    .line 3
    aget v5, v1, v2

    .line 4
    array-length v6, p1

    :goto_1
    if-ge v3, v6, :cond_1

    .line 5
    aget v7, p1, v3

    if-ne v7, v5, :cond_0

    move v4, v3

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez v4, :cond_2

    .line 6
    invoke-virtual {p0, v2}, Landroidx/collection/MutableIntList;->removeAt(I)I

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 7
    :cond_3
    iget p1, p0, Landroidx/collection/IntList;->_size:I

    if-eq v0, p1, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3
.end method

.method public final set(II)I
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "Index must be between 0 and size"

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    iget-object v0, p0, Landroidx/collection/IntList;->content:[I

    .line 14
    .line 15
    aget v1, v0, p1

    .line 16
    .line 17
    aput p2, v0, p1

    .line 18
    .line 19
    return v1
.end method

.method public final sort()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/collection/IntList;->content:[I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v1, v2, v0}, Lkotlin/collections/n;->P([III)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final sortDescending()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/collection/IntList;->content:[I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v1, v2, v0}, Lkotlin/collections/n;->l1([III)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final trim(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Landroidx/collection/IntList;->content:[I

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    if-le v1, p1, :cond_0

    .line 11
    .line 12
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

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
    iput-object p1, p0, Landroidx/collection/IntList;->content:[I

    .line 22
    .line 23
    :cond_0
    return-void
.end method
