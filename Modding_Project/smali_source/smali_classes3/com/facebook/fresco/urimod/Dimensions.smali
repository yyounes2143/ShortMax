.class public final Lcom/facebook/fresco/urimod/Dimensions;
.super Ljava/lang/Object;
.source "Dimensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final h:I

.field private final w:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/facebook/fresco/urimod/Dimensions;->w:I

    .line 5
    .line 6
    iput p2, p0, Lcom/facebook/fresco/urimod/Dimensions;->h:I

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic copy$default(Lcom/facebook/fresco/urimod/Dimensions;IIILjava/lang/Object;)Lcom/facebook/fresco/urimod/Dimensions;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/facebook/fresco/urimod/Dimensions;->w:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/facebook/fresco/urimod/Dimensions;->h:I

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/fresco/urimod/Dimensions;->copy(II)Lcom/facebook/fresco/urimod/Dimensions;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/urimod/Dimensions;->w:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/urimod/Dimensions;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(II)Lcom/facebook/fresco/urimod/Dimensions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/fresco/urimod/Dimensions;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/facebook/fresco/urimod/Dimensions;-><init>(II)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v1, 0x0

    .line 13
    :goto_0
    const-class v2, Lcom/facebook/fresco/urimod/Dimensions;

    .line 14
    .line 15
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    return v2

    .line 23
    :cond_2
    const-string v1, "null cannot be cast to non-null type com.facebook.fresco.urimod.Dimensions"

    .line 24
    .line 25
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    check-cast p1, Lcom/facebook/fresco/urimod/Dimensions;

    .line 29
    .line 30
    iget v1, p0, Lcom/facebook/fresco/urimod/Dimensions;->w:I

    .line 31
    .line 32
    iget v3, p1, Lcom/facebook/fresco/urimod/Dimensions;->w:I

    .line 33
    .line 34
    if-ne v1, v3, :cond_3

    .line 35
    .line 36
    iget v1, p0, Lcom/facebook/fresco/urimod/Dimensions;->h:I

    .line 37
    .line 38
    iget p1, p1, Lcom/facebook/fresco/urimod/Dimensions;->h:I

    .line 39
    .line 40
    if-ne v1, p1, :cond_3

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    move v0, v2

    .line 44
    :goto_1
    return v0
.end method

.method public final getH()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/urimod/Dimensions;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public final getW()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/urimod/Dimensions;->w:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/fresco/urimod/Dimensions;->w:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lcom/facebook/fresco/urimod/Dimensions;->h:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Lcom/facebook/fresco/urimod/Dimensions;->w:I

    .line 2
    .line 3
    iget v1, p0, Lcom/facebook/fresco/urimod/Dimensions;->h:I

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v0, "x"

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
