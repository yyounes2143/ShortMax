.class public Lcom/facebook/fresco/vito/options/EncodedImageOptions;
.super Ljava/lang/Object;
.source "EncodedImageOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final diskCacheId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final priority:Lcom/facebook/imagepipeline/common/Priority;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;)V
    .locals 2
    .param p1    # Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "builder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getPriority$options_release()Lcom/facebook/imagepipeline/common/Priority;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->priority:Lcom/facebook/imagepipeline/common/Priority;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getCacheChoice$options_release()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getDiskCacheId$options_release()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->diskCacheId:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getCacheChoice$options_release()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->DYNAMIC:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 32
    .line 33
    if-ne p1, v1, :cond_1

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;

    .line 39
    .line 40
    const-string v0, "Disk cache id must be set for dynamic cache choice"

    .line 41
    .line 42
    invoke-direct {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_1
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;

    .line 56
    .line 57
    const-string v0, "Ensure that if you want to use a disk cache id, you set the CacheChoice to DYNAMIC"

    .line 58
    .line 59
    invoke-direct {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected final equalEncodedOptions(Lcom/facebook/fresco/vito/options/EncodedImageOptions;)Z
    .locals 2
    .param p1    # Lcom/facebook/fresco/vito/options/EncodedImageOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->priority:Lcom/facebook/imagepipeline/common/Priority;

    .line 7
    .line 8
    iget-object v1, p1, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->priority:Lcom/facebook/imagepipeline/common/Priority;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 17
    .line 18
    iget-object v1, p1, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->diskCacheId:Ljava/lang/String;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->diskCacheId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0, p1}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    if-eqz p1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    check-cast p1, Lcom/facebook/fresco/vito/options/EncodedImageOptions;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->equalEncodedOptions(Lcom/facebook/fresco/vito/options/EncodedImageOptions;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method public final getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDiskCacheId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->diskCacheId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPriority()Lcom/facebook/imagepipeline/common/Priority;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->priority:Lcom/facebook/imagepipeline/common/Priority;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->priority:Lcom/facebook/imagepipeline/common/Priority;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v2, v1

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->diskCacheId:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    :cond_2
    add-int/2addr v0, v1

    .line 36
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->toStringHelper()Lk2/f$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lk2/f$a;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "toString(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method protected toStringHelper()Lk2/f$a;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lk2/f;->b(Ljava/lang/Object;)Lk2/f$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "priority"

    .line 6
    .line 7
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->priority:Lcom/facebook/imagepipeline/common/Priority;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "cacheChoice"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "diskCacheId"

    .line 22
    .line 23
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->diskCacheId:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "add(...)"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method
