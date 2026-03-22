.class public Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
.super Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
.source "DecodedImageOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/vito/options/DecodedImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder<",
        "TT;>;>",
        "Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDecodedImageOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DecodedImageOptions.kt\ncom/facebook/fresco/vito/options/DecodedImageOptions$Builder\n*L\n1#1,205:1\n200#1,2:206\n200#1,2:208\n200#1,2:210\n200#1,2:212\n200#1,2:214\n200#1,2:216\n200#1,2:218\n200#1,2:220\n200#1,2:222\n200#1,2:224\n200#1,2:226\n200#1,2:228\n200#1,2:230\n*S KotlinDebug\n*F\n+ 1 DecodedImageOptions.kt\ncom/facebook/fresco/vito/options/DecodedImageOptions$Builder\n*L\n134#1:206,2\n142#1:208,2\n146#1:210,2\n150#1:212,2\n154#1:214,2\n164#1:216,2\n168#1:218,2\n170#1:220,2\n175#1:222,2\n183#1:224,2\n187#1:226,2\n191#1:228,2\n193#1:230,2\n*E\n"
    }
.end annotation


# instance fields
.field private actualFocusPoint:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private actualImageScaleType:Lc3/q;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private bitmapConfig:Landroid/graphics/Bitmap$Config;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private imageDecodeOptions:Ls3/d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private loadThumbnailOnly:Z

.field private localThumbnailPreviewsEnabled:Z

.field private postprocessor:Le4/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private progressiveDecodingEnabled:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private resizeOptions:Ls3/f;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rotationOptions:Ls3/g;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;-><init>()V

    .line 2
    sget-object v0, Lc3/q;->i:Lc3/q;

    const-string v1, "CENTER_CROP"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualImageScaleType:Lc3/q;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/vito/options/DecodedImageOptions;)V
    .locals 2
    .param p1    # Lcom/facebook/fresco/vito/options/DecodedImageOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "decodedImageOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;-><init>(Lcom/facebook/fresco/vito/options/EncodedImageOptions;)V

    .line 4
    sget-object v0, Lc3/q;->i:Lc3/q;

    const-string v1, "CENTER_CROP"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualImageScaleType:Lc3/q;

    .line 5
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->getResizeOptions()Ls3/f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->resizeOptions:Ls3/f;

    .line 6
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->getDownsampleOverride()Lcom/facebook/imagepipeline/core/DownsampleMode;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 7
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->getRotationOptions()Ls3/g;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->rotationOptions:Ls3/g;

    .line 8
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->getPostprocessor()Le4/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->postprocessor:Le4/b;

    .line 9
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->getImageDecodeOptions()Ls3/d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->imageDecodeOptions:Ls3/d;

    .line 10
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->getRoundingOptions()Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 11
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->getBorderOptions()Lcom/facebook/fresco/vito/options/BorderOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    .line 12
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->getActualImageScaleType()Lc3/q;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualImageScaleType:Lc3/q;

    .line 13
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->getActualImageFocusPoint()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualFocusPoint:Landroid/graphics/PointF;

    .line 14
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->areLocalThumbnailPreviewsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->localThumbnailPreviewsEnabled:Z

    .line 15
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->getLoadThumbnailOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->loadThumbnailOnly:Z

    .line 16
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 17
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->isProgressiveDecodingEnabled()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->progressiveDecodingEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/vito/options/ImageOptions;)V
    .locals 1
    .param p1    # Lcom/facebook/fresco/vito/options/ImageOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "defaultOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;-><init>(Lcom/facebook/fresco/vito/options/DecodedImageOptions;)V

    return-void
.end method

.method private final modify(Lkotlin/jvm/functions/Function1;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder<",
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
    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 9
    .line 10
    return-object p1
.end method


# virtual methods
.method public final bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$Config;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 8
    .line 9
    return-object p1
.end method

.method public final borders(Lcom/facebook/fresco/vito/options/BorderOptions;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 0
    .param p1    # Lcom/facebook/fresco/vito/options/BorderOptions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/options/BorderOptions;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 8
    .line 9
    return-object p1
.end method

.method public build()Lcom/facebook/fresco/vito/options/DecodedImageOptions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;-><init>(Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/facebook/fresco/vito/options/EncodedImageOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->build()Lcom/facebook/fresco/vito/options/DecodedImageOptions;

    move-result-object v0

    return-object v0
.end method

.method public final downsampleOverride(Lcom/facebook/imagepipeline/core/DownsampleMode;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/core/DownsampleMode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/core/DownsampleMode;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 8
    .line 9
    return-object p1
.end method

.method public final focusPoint(Landroid/graphics/PointF;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 0
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualFocusPoint:Landroid/graphics/PointF;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 8
    .line 9
    return-object p1
.end method

.method public final getActualFocusPoint$options_release()Landroid/graphics/PointF;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualFocusPoint:Landroid/graphics/PointF;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getActualImageScaleType$options_release()Lc3/q;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualImageScaleType:Lc3/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBitmapConfig$options_release()Landroid/graphics/Bitmap$Config;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBorderOptions$options_release()Lcom/facebook/fresco/vito/options/BorderOptions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDownsampleOverride$options_release()Lcom/facebook/imagepipeline/core/DownsampleMode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getImageDecodeOptions$options_release()Ls3/d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->imageDecodeOptions:Ls3/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLoadThumbnailOnly$options_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->loadThumbnailOnly:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getLocalThumbnailPreviewsEnabled$options_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->localThumbnailPreviewsEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getPostprocessor$options_release()Le4/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->postprocessor:Le4/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProgressiveDecodingEnabled$options_release()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->progressiveDecodingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResizeOptions$options_release()Ls3/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->resizeOptions:Ls3/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRotationOptions$options_release()Ls3/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->rotationOptions:Ls3/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRoundingOptions$options_release()Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 2
    .line 3
    return-object v0
.end method

.method public final imageDecodeOptions(Ls3/d;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 0
    .param p1    # Ls3/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls3/d;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->imageDecodeOptions:Ls3/d;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 8
    .line 9
    return-object p1
.end method

.method public final loadThumbnailOnly(Z)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->loadThumbnailOnly:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 8
    .line 9
    return-object p1
.end method

.method public final localThumbnailPreviewsEnabled(Z)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->localThumbnailPreviewsEnabled:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 8
    .line 9
    return-object p1
.end method

.method public final postprocess(Le4/b;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 0
    .param p1    # Le4/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le4/b;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->postprocessor:Le4/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 8
    .line 9
    return-object p1
.end method

.method public final progressiveRendering(Ljava/lang/Boolean;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->progressiveDecodingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 8
    .line 9
    return-object p1
.end method

.method public final resize(Ls3/f;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 0
    .param p1    # Ls3/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls3/f;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->resizeOptions:Ls3/f;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 8
    .line 9
    return-object p1
.end method

.method public final rotate(Ls3/g;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 0
    .param p1    # Ls3/g;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls3/g;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->rotationOptions:Ls3/g;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 8
    .line 9
    return-object p1
.end method

.method public final round(Lcom/facebook/fresco/vito/options/RoundingOptions;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 0
    .param p1    # Lcom/facebook/fresco/vito/options/RoundingOptions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/options/RoundingOptions;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 8
    .line 9
    return-object p1
.end method

.method public final scale(Lc3/q;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 0
    .param p1    # Lc3/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc3/q;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/facebook/fresco/vito/options/ImageOptions;->Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->defaults()Lcom/facebook/fresco/vito/options/ImageOptions;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->getActualImageScaleType()Lc3/q;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualImageScaleType:Lc3/q;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 20
    .line 21
    return-object p1
.end method

.method public final setActualFocusPoint$options_release(Landroid/graphics/PointF;)V
    .locals 0
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualFocusPoint:Landroid/graphics/PointF;

    .line 2
    .line 3
    return-void
.end method

.method public final setActualImageScaleType$options_release(Lc3/q;)V
    .locals 1
    .param p1    # Lc3/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualImageScaleType:Lc3/q;

    .line 7
    .line 8
    return-void
.end method

.method public final setBitmapConfig$options_release(Landroid/graphics/Bitmap$Config;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    return-void
.end method

.method public final setBorderOptions$options_release(Lcom/facebook/fresco/vito/options/BorderOptions;)V
    .locals 0
    .param p1    # Lcom/facebook/fresco/vito/options/BorderOptions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    .line 2
    .line 3
    return-void
.end method

.method public final setDownsampleOverride$options_release(Lcom/facebook/imagepipeline/core/DownsampleMode;)V
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/core/DownsampleMode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 2
    .line 3
    return-void
.end method

.method public final setImageDecodeOptions$options_release(Ls3/d;)V
    .locals 0
    .param p1    # Ls3/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->imageDecodeOptions:Ls3/d;

    .line 2
    .line 3
    return-void
.end method

.method public final setLoadThumbnailOnly$options_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->loadThumbnailOnly:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLocalThumbnailPreviewsEnabled$options_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->localThumbnailPreviewsEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPostprocessor$options_release(Le4/b;)V
    .locals 0
    .param p1    # Le4/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->postprocessor:Le4/b;

    .line 2
    .line 3
    return-void
.end method

.method public final setProgressiveDecodingEnabled$options_release(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->progressiveDecodingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setResizeOptions$options_release(Ls3/f;)V
    .locals 0
    .param p1    # Ls3/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->resizeOptions:Ls3/f;

    .line 2
    .line 3
    return-void
.end method

.method public final setRotationOptions$options_release(Ls3/g;)V
    .locals 0
    .param p1    # Ls3/g;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->rotationOptions:Ls3/g;

    .line 2
    .line 3
    return-void
.end method

.method public final setRoundingOptions$options_release(Lcom/facebook/fresco/vito/options/RoundingOptions;)V
    .locals 0
    .param p1    # Lcom/facebook/fresco/vito/options/RoundingOptions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 2
    .line 3
    return-void
.end method
