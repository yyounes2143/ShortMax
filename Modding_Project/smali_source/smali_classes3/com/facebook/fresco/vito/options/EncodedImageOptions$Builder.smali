.class public Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
.super Ljava/lang/Object;
.source "EncodedImageOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/vito/options/EncodedImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEncodedImageOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EncodedImageOptions.kt\ncom/facebook/fresco/vito/options/EncodedImageOptions$Builder\n*L\n1#1,91:1\n86#1,2:92\n86#1,2:94\n86#1,2:96\n*S KotlinDebug\n*F\n+ 1 EncodedImageOptions.kt\ncom/facebook/fresco/vito/options/EncodedImageOptions$Builder\n*L\n75#1:92,2\n77#1:94,2\n79#1:96,2\n*E\n"
    }
.end annotation


# instance fields
.field private cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private diskCacheId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private priority:Lcom/facebook/imagepipeline/common/Priority;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/facebook/fresco/vito/options/EncodedImageOptions;)V
    .locals 1
    .param p1    # Lcom/facebook/fresco/vito/options/EncodedImageOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "defaultOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->priority:Lcom/facebook/imagepipeline/common/Priority;

    .line 4
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 5
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->getDiskCacheId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->diskCacheId:Ljava/lang/String;

    return-void
.end method

.method private final modify(Lkotlin/jvm/functions/Function1;)Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method


# virtual methods
.method public build()Lcom/facebook/fresco/vito/options/EncodedImageOptions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;-><init>(Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final cacheChoice(Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final diskCacheId(Ljava/lang/String;)Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->diskCacheId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final getCacheChoice$options_release()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDiskCacheId$options_release()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->diskCacheId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPriority$options_release()Lcom/facebook/imagepipeline/common/Priority;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->priority:Lcom/facebook/imagepipeline/common/Priority;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "null cannot be cast to non-null type T of com.facebook.fresco.vito.options.EncodedImageOptions.Builder"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final priority(Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/common/Priority;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/common/Priority;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->priority:Lcom/facebook/imagepipeline/common/Priority;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final setCacheChoice$options_release(Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)V
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 2
    .line 3
    return-void
.end method

.method public final setDiskCacheId$options_release(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->diskCacheId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPriority$options_release(Lcom/facebook/imagepipeline/common/Priority;)V
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/common/Priority;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->priority:Lcom/facebook/imagepipeline/common/Priority;

    .line 2
    .line 3
    return-void
.end method
