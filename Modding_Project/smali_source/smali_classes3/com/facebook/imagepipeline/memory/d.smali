.class public Lcom/facebook/imagepipeline/memory/d;
.super Lcom/facebook/imagepipeline/memory/BasePool;
.source "GenericByteArrayPool.kt"

# interfaces
.implements Ln2/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/memory/BasePool<",
        "[B>;",
        "Ln2/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final k:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln2/c;Lb4/e0;Lb4/f0;)V
    .locals 2
    .param p1    # Ln2/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lb4/e0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lb4/f0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "memoryTrimmableRegistry"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "poolParams"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "poolStatsTracker"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/BasePool;-><init>(Ln2/c;Lb4/e0;Lb4/f0;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p2, Lb4/e0;->c:Landroid/util/SparseIntArray;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    new-array p3, p3, [I

    .line 29
    .line 30
    iput-object p3, p0, Lcom/facebook/imagepipeline/memory/d;->k:[I

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    :goto_0
    if-ge p2, p3, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/d;->k:[I

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    aput v1, v0, p2

    .line 45
    .line 46
    add-int/lit8 p2, p2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-array p1, p2, [I

    .line 50
    .line 51
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/d;->k:[I

    .line 52
    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->r()V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method protected A([B)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected B([B)I
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length p1, p1

    .line 7
    return p1
.end method

.method public bridge synthetic f(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/d;->z(I)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic j(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [B

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/d;->A([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected m(I)I
    .locals 4

    .line 1
    if-lez p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/d;->k:[I

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget v3, v0, v2

    .line 10
    .line 11
    if-lt v3, p1, :cond_0

    .line 12
    .line 13
    return v3

    .line 14
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return p1

    .line 18
    :cond_2
    new-instance v0, Lcom/facebook/imagepipeline/memory/BasePool$InvalidSizeException;

    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/memory/BasePool$InvalidSizeException;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public bridge synthetic n(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, [B

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/d;->B([B)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected o(I)I
    .locals 0

    .line 1
    return p1
.end method

.method protected z(I)[B
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-array p1, p1, [B

    .line 2
    .line 3
    return-object p1
.end method
