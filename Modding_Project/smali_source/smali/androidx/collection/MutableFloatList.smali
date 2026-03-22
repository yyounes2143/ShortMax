.class public final Landroidx/collection/MutableFloatList;
.super Landroidx/collection/FloatList;
.source "FloatList.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFloatList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatList.kt\nandroidx/collection/MutableFloatList\n+ 2 FloatList.kt\nandroidx/collection/FloatList\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,976:1\n559#1:978\n365#2:977\n70#2:979\n237#2,6:982\n70#2:988\n70#2:989\n70#2:996\n13344#3,2:980\n1687#3,6:990\n*S KotlinDebug\n*F\n+ 1 FloatList.kt\nandroidx/collection/MutableFloatList\n*L\n695#1:978\n631#1:977\n755#1:979\n768#1:982,6\n782#1:988\n828#1:989\n845#1:996\n763#1:980,2\n830#1:990,6\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/MutableFloatList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/collection/FloatList;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x10

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/MutableFloatList;-><init>(I)V

    return-void
.end method

.method public static synthetic trim$default(Landroidx/collection/MutableFloatList;IILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget p1, p0, Landroidx/collection/FloatList;->_size:I

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/collection/MutableFloatList;->trim(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final add(IF)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    if-ltz p1, :cond_0

    .line 4
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    const-string v0, "Index must be between 0 and size"

    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    .line 6
    :goto_0
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/collection/MutableFloatList;->ensureCapacity(I)V

    .line 7
    iget-object v0, p0, Landroidx/collection/FloatList;->content:[F

    .line 8
    iget v1, p0, Landroidx/collection/FloatList;->_size:I

    if-eq p1, v1, :cond_1

    add-int/lit8 v2, p1, 0x1

    .line 9
    invoke-static {v0, v0, v2, p1, v1}, Lkotlin/collections/n;->k([F[FIII)[F

    .line 10
    :cond_1
    aput p2, v0, p1

    .line 11
    iget p1, p0, Landroidx/collection/FloatList;->_size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/collection/FloatList;->_size:I

    return-void
.end method

.method public final add(F)Z
    .locals 3

    .line 1
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/collection/MutableFloatList;->ensureCapacity(I)V

    .line 2
    iget-object v0, p0, Landroidx/collection/FloatList;->content:[F

    iget v2, p0, Landroidx/collection/FloatList;->_size:I

    aput p1, v0, v2

    add-int/2addr v2, v1

    .line 3
    iput v2, p0, Landroidx/collection/FloatList;->_size:I

    return v1
.end method

.method public final addAll(ILandroidx/collection/FloatList;)Z
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Landroidx/collection/FloatList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    .line 11
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    const-string v0, ""

    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    .line 13
    :goto_0
    iget v0, p2, Landroidx/collection/FloatList;->_size:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 14
    :cond_1
    iget v2, p0, Landroidx/collection/FloatList;->_size:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroidx/collection/MutableFloatList;->ensureCapacity(I)V

    .line 15
    iget-object v0, p0, Landroidx/collection/FloatList;->content:[F

    .line 16
    iget v2, p0, Landroidx/collection/FloatList;->_size:I

    if-eq p1, v2, :cond_2

    .line 17
    iget v3, p2, Landroidx/collection/FloatList;->_size:I

    add-int/2addr v3, p1

    .line 18
    invoke-static {v0, v0, v3, p1, v2}, Lkotlin/collections/n;->k([F[FIII)[F

    .line 19
    :cond_2
    iget-object v2, p2, Landroidx/collection/FloatList;->content:[F

    .line 20
    iget v3, p2, Landroidx/collection/FloatList;->_size:I

    .line 21
    invoke-static {v2, v0, p1, v1, v3}, Lkotlin/collections/n;->k([F[FIII)[F

    .line 22
    iget p1, p0, Landroidx/collection/FloatList;->_size:I

    iget p2, p2, Landroidx/collection/FloatList;->_size:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/collection/FloatList;->_size:I

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(I[F)Z
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

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
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    array-length v1, p2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/collection/MutableFloatList;->ensureCapacity(I)V

    .line 5
    iget-object v2, p0, Landroidx/collection/FloatList;->content:[F

    .line 6
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    if-eq p1, v0, :cond_2

    .line 7
    array-length v1, p2

    add-int/2addr v1, p1

    .line 8
    invoke-static {v2, v2, v1, p1, v0}, Lkotlin/collections/n;->k([F[FIII)[F

    :cond_2
    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move v3, p1

    .line 9
    invoke-static/range {v1 .. v7}, Lkotlin/collections/n;->r([F[FIIIILjava/lang/Object;)[F

    .line 10
    iget p1, p0, Landroidx/collection/FloatList;->_size:I

    array-length p2, p2

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/collection/FloatList;->_size:I

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(Landroidx/collection/FloatList;)Z
    .locals 1
    .param p1    # Landroidx/collection/FloatList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    invoke-virtual {p0, v0, p1}, Landroidx/collection/MutableFloatList;->addAll(ILandroidx/collection/FloatList;)Z

    move-result p1

    return p1
.end method

.method public final addAll([F)Z
    .locals 1
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    invoke-virtual {p0, v0, p1}, Landroidx/collection/MutableFloatList;->addAll(I[F)Z

    move-result p1

    return p1
.end method

.method public final clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/collection/FloatList;->_size:I

    .line 3
    .line 4
    return-void
.end method

.method public final ensureCapacity(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/collection/FloatList;->content:[F

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
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([FI)[F

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
    iput-object p1, p0, Landroidx/collection/FloatList;->content:[F

    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final getCapacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/collection/FloatList;->content:[F

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public final minusAssign(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/MutableFloatList;->remove(F)Z

    return-void
.end method

.method public final minusAssign(Landroidx/collection/FloatList;)V
    .locals 3
    .param p1    # Landroidx/collection/FloatList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p1, Landroidx/collection/FloatList;->content:[F

    .line 5
    iget p1, p1, Landroidx/collection/FloatList;->_size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 6
    aget v2, v0, v1

    .line 7
    invoke-virtual {p0, v2}, Landroidx/collection/MutableFloatList;->remove(F)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final minusAssign([F)V
    .locals 3
    .param p1    # [F
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
    invoke-virtual {p0, v2}, Landroidx/collection/MutableFloatList;->remove(F)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final plusAssign(F)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/collection/MutableFloatList;->add(F)Z

    return-void
.end method

.method public final plusAssign(Landroidx/collection/FloatList;)V
    .locals 1
    .param p1    # Landroidx/collection/FloatList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    invoke-virtual {p0, v0, p1}, Landroidx/collection/MutableFloatList;->addAll(ILandroidx/collection/FloatList;)Z

    return-void
.end method

.method public final plusAssign([F)V
    .locals 1
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    invoke-virtual {p0, v0, p1}, Landroidx/collection/MutableFloatList;->addAll(I[F)Z

    return-void
.end method

.method public final remove(F)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/FloatList;->indexOf(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/collection/MutableFloatList;->removeAt(I)F

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

.method public final removeAll(Landroidx/collection/FloatList;)Z
    .locals 6
    .param p1    # Landroidx/collection/FloatList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    .line 6
    iget v1, p1, Landroidx/collection/FloatList;->_size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v4, v3

    .line 7
    :goto_0
    invoke-virtual {p1, v4}, Landroidx/collection/FloatList;->get(I)F

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/collection/MutableFloatList;->remove(F)Z

    if-eq v4, v1, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget p1, p0, Landroidx/collection/FloatList;->_size:I

    if-eq v0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method public final removeAll([F)Z
    .locals 5
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 3
    aget v4, p1, v3

    invoke-virtual {p0, v4}, Landroidx/collection/MutableFloatList;->remove(F)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Landroidx/collection/FloatList;->_size:I

    if-eq v0, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final removeAt(I)F
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
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

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
    iget-object v0, p0, Landroidx/collection/FloatList;->content:[F

    .line 14
    .line 15
    aget v1, v0, p1

    .line 16
    .line 17
    iget v2, p0, Landroidx/collection/FloatList;->_size:I

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
    invoke-static {v0, v0, p1, v3, v2}, Lkotlin/collections/n;->k([F[FIII)[F

    .line 26
    .line 27
    .line 28
    :cond_1
    iget p1, p0, Landroidx/collection/FloatList;->_size:I

    .line 29
    .line 30
    add-int/lit8 p1, p1, -0x1

    .line 31
    .line 32
    iput p1, p0, Landroidx/collection/FloatList;->_size:I

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
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

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
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    .line 27
    .line 28
    if-ge p2, v0, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/collection/FloatList;->content:[F

    .line 31
    .line 32
    invoke-static {v1, v1, p1, p2, v0}, Lkotlin/collections/n;->k([F[FIII)[F

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    .line 36
    .line 37
    sub-int/2addr p2, p1

    .line 38
    sub-int/2addr v0, p2

    .line 39
    iput v0, p0, Landroidx/collection/FloatList;->_size:I

    .line 40
    .line 41
    :cond_3
    return-void
.end method

.method public final retainAll(Landroidx/collection/FloatList;)Z
    .locals 4
    .param p1    # Landroidx/collection/FloatList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    .line 9
    iget-object v1, p0, Landroidx/collection/FloatList;->content:[F

    add-int/lit8 v2, v0, -0x1

    :goto_0
    const/4 v3, -0x1

    if-ge v3, v2, :cond_1

    .line 10
    aget v3, v1, v2

    .line 11
    invoke-virtual {p1, v3}, Landroidx/collection/FloatList;->contains(F)Z

    move-result v3

    if-nez v3, :cond_0

    .line 12
    invoke-virtual {p0, v2}, Landroidx/collection/MutableFloatList;->removeAt(I)F

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 13
    :cond_1
    iget p1, p0, Landroidx/collection/FloatList;->_size:I

    if-eq v0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final retainAll([F)Z
    .locals 8
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    .line 2
    iget-object v1, p0, Landroidx/collection/FloatList;->content:[F

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

    cmpg-float v7, v7, v5

    if-nez v7, :cond_0

    move v4, v3

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez v4, :cond_2

    .line 6
    invoke-virtual {p0, v2}, Landroidx/collection/MutableFloatList;->removeAt(I)F

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 7
    :cond_3
    iget p1, p0, Landroidx/collection/FloatList;->_size:I

    if-eq v0, p1, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3
.end method

.method public final set(IF)F
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
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

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
    iget-object v0, p0, Landroidx/collection/FloatList;->content:[F

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
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/collection/FloatList;->content:[F

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v1, v2, v0}, Lkotlin/collections/n;->O([FII)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final sortDescending()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/collection/FloatList;->content:[F

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v1, v2, v0}, Lkotlin/collections/n;->k1([FII)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final trim(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Landroidx/collection/FloatList;->content:[F

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    if-le v1, p1, :cond_0

    .line 11
    .line 12
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([FI)[F

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
    iput-object p1, p0, Landroidx/collection/FloatList;->content:[F

    .line 22
    .line 23
    :cond_0
    return-void
.end method
