.class public Lcom/facebook/fresco/vito/options/DecodedImageOptions;
.super Lcom/facebook/fresco/vito/options/EncodedImageOptions;
.source "DecodedImageOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final actualImageFocusPoint:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final actualImageScaleType:Lc3/q;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bitmapConfig:Landroid/graphics/Bitmap$Config;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final imageDecodeOptions:Ls3/d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final isProgressiveDecodingEnabled:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final loadThumbnailOnly:Z

.field private final mLocalThumbnailPreviewsEnabled:Z

.field private final postprocessor:Le4/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final resizeOptions:Ls3/f;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final rotationOptions:Ls3/g;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;)V
    .locals 1
    .param p1    # Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder<",
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
    invoke-direct {p0, p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;-><init>(Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getResizeOptions$options_release()Ls3/f;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->resizeOptions:Ls3/f;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getDownsampleOverride$options_release()Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getRotationOptions$options_release()Ls3/g;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->rotationOptions:Ls3/g;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getPostprocessor$options_release()Le4/b;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->postprocessor:Le4/b;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getImageDecodeOptions$options_release()Ls3/d;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->imageDecodeOptions:Ls3/d;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getRoundingOptions$options_release()Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getBorderOptions$options_release()Lcom/facebook/fresco/vito/options/BorderOptions;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getActualImageScaleType$options_release()Lc3/q;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageScaleType:Lc3/q;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getActualFocusPoint$options_release()Landroid/graphics/PointF;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageFocusPoint:Landroid/graphics/PointF;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getLocalThumbnailPreviewsEnabled$options_release()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->mLocalThumbnailPreviewsEnabled:Z

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getLoadThumbnailOnly$options_release()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->loadThumbnailOnly:Z

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getBitmapConfig$options_release()Landroid/graphics/Bitmap$Config;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getProgressiveDecodingEnabled$options_release()Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->isProgressiveDecodingEnabled:Ljava/lang/Boolean;

    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method public final areLocalThumbnailPreviewsEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->mLocalThumbnailPreviewsEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method protected final equalDecodedOptions(Lcom/facebook/fresco/vito/options/DecodedImageOptions;)Z
    .locals 2
    .param p1    # Lcom/facebook/fresco/vito/options/DecodedImageOptions;
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
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->resizeOptions:Ls3/f;

    .line 7
    .line 8
    iget-object v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->resizeOptions:Ls3/f;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 17
    .line 18
    iget-object v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->rotationOptions:Ls3/g;

    .line 27
    .line 28
    iget-object v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->rotationOptions:Ls3/g;

    .line 29
    .line 30
    invoke-static {v0, v1}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->postprocessor:Le4/b;

    .line 37
    .line 38
    iget-object v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->postprocessor:Le4/b;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->imageDecodeOptions:Ls3/d;

    .line 47
    .line 48
    iget-object v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->imageDecodeOptions:Ls3/d;

    .line 49
    .line 50
    invoke-static {v0, v1}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 57
    .line 58
    iget-object v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 59
    .line 60
    invoke-static {v0, v1}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    .line 67
    .line 68
    iget-object v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    .line 69
    .line 70
    invoke-static {v0, v1}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageScaleType:Lc3/q;

    .line 77
    .line 78
    iget-object v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageScaleType:Lc3/q;

    .line 79
    .line 80
    invoke-static {v0, v1}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_1

    .line 85
    .line 86
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageFocusPoint:Landroid/graphics/PointF;

    .line 87
    .line 88
    iget-object v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageFocusPoint:Landroid/graphics/PointF;

    .line 89
    .line 90
    invoke-static {v0, v1}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->mLocalThumbnailPreviewsEnabled:Z

    .line 97
    .line 98
    iget-boolean v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->mLocalThumbnailPreviewsEnabled:Z

    .line 99
    .line 100
    if-ne v0, v1, :cond_1

    .line 101
    .line 102
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->loadThumbnailOnly:Z

    .line 103
    .line 104
    iget-boolean v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->loadThumbnailOnly:Z

    .line 105
    .line 106
    if-ne v0, v1, :cond_1

    .line 107
    .line 108
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->isProgressiveDecodingEnabled:Ljava/lang/Boolean;

    .line 109
    .line 110
    iget-object v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->isProgressiveDecodingEnabled:Ljava/lang/Boolean;

    .line 111
    .line 112
    if-ne v0, v1, :cond_1

    .line 113
    .line 114
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 115
    .line 116
    iget-object v1, p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 117
    .line 118
    invoke-static {v0, v1}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_0

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->equalEncodedOptions(Lcom/facebook/fresco/vito/options/EncodedImageOptions;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    goto :goto_1

    .line 130
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 131
    :goto_1
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
    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->equalDecodedOptions(Lcom/facebook/fresco/vito/options/DecodedImageOptions;)Z

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

.method public final getActualImageFocusPoint()Landroid/graphics/PointF;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageFocusPoint:Landroid/graphics/PointF;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getActualImageScaleType()Lc3/q;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageScaleType:Lc3/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBorderOptions()Lcom/facebook/fresco/vito/options/BorderOptions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDownsampleOverride()Lcom/facebook/imagepipeline/core/DownsampleMode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getImageDecodeOptions()Ls3/d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->imageDecodeOptions:Ls3/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLoadThumbnailOnly()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->loadThumbnailOnly:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getMLocalThumbnailPreviewsEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->mLocalThumbnailPreviewsEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getPostprocessor()Le4/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->postprocessor:Le4/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResizeOptions()Ls3/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->resizeOptions:Ls3/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRotationOptions()Ls3/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->rotationOptions:Ls3/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRoundingOptions()Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->resizeOptions:Ls3/f;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Ls3/f;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v2

    .line 18
    :goto_0
    add-int/2addr v0, v1

    .line 19
    mul-int/lit8 v0, v0, 0x1f

    .line 20
    .line 21
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v1, v2

    .line 31
    :goto_1
    add-int/2addr v0, v1

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->rotationOptions:Ls3/g;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Ls3/g;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move v1, v2

    .line 44
    :goto_2
    add-int/2addr v0, v1

    .line 45
    mul-int/lit8 v0, v0, 0x1f

    .line 46
    .line 47
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->postprocessor:Le4/b;

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    goto :goto_3

    .line 56
    :cond_3
    move v1, v2

    .line 57
    :goto_3
    add-int/2addr v0, v1

    .line 58
    mul-int/lit8 v0, v0, 0x1f

    .line 59
    .line 60
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->imageDecodeOptions:Ls3/d;

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    invoke-virtual {v1}, Ls3/d;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    goto :goto_4

    .line 69
    :cond_4
    move v1, v2

    .line 70
    :goto_4
    add-int/2addr v0, v1

    .line 71
    mul-int/lit8 v0, v0, 0x1f

    .line 72
    .line 73
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 74
    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/facebook/fresco/vito/options/RoundingOptions;->hashCode()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    goto :goto_5

    .line 82
    :cond_5
    move v1, v2

    .line 83
    :goto_5
    add-int/2addr v0, v1

    .line 84
    mul-int/lit8 v0, v0, 0x1f

    .line 85
    .line 86
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    .line 87
    .line 88
    if-eqz v1, :cond_6

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/facebook/fresco/vito/options/BorderOptions;->hashCode()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    goto :goto_6

    .line 95
    :cond_6
    move v1, v2

    .line 96
    :goto_6
    add-int/2addr v0, v1

    .line 97
    mul-int/lit8 v0, v0, 0x1f

    .line 98
    .line 99
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageScaleType:Lc3/q;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    add-int/2addr v0, v1

    .line 106
    mul-int/lit8 v0, v0, 0x1f

    .line 107
    .line 108
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageFocusPoint:Landroid/graphics/PointF;

    .line 109
    .line 110
    if-eqz v1, :cond_7

    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/graphics/PointF;->hashCode()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    goto :goto_7

    .line 117
    :cond_7
    move v1, v2

    .line 118
    :goto_7
    add-int/2addr v0, v1

    .line 119
    mul-int/lit8 v0, v0, 0x1f

    .line 120
    .line 121
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->mLocalThumbnailPreviewsEnabled:Z

    .line 122
    .line 123
    add-int/2addr v0, v1

    .line 124
    mul-int/lit8 v0, v0, 0x1f

    .line 125
    .line 126
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->loadThumbnailOnly:Z

    .line 127
    .line 128
    add-int/2addr v0, v1

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    .line 130
    .line 131
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 132
    .line 133
    if-eqz v1, :cond_8

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    goto :goto_8

    .line 140
    :cond_8
    move v1, v2

    .line 141
    :goto_8
    add-int/2addr v0, v1

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    .line 143
    .line 144
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->isProgressiveDecodingEnabled:Ljava/lang/Boolean;

    .line 145
    .line 146
    if-eqz v1, :cond_9

    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    :cond_9
    add-int/2addr v0, v2

    .line 153
    return v0
.end method

.method public final isProgressiveDecodingEnabled()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->isProgressiveDecodingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->toStringHelper()Lk2/f$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "DecodedImageOptions{"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, "}"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method protected toStringHelper()Lk2/f$a;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->toStringHelper()Lk2/f$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "resizeOptions"

    .line 6
    .line 7
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->resizeOptions:Ls3/f;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "downsampleOverride"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->downsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "rotationOptions"

    .line 22
    .line 23
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->rotationOptions:Ls3/g;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "postprocessor"

    .line 30
    .line 31
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->postprocessor:Le4/b;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "imageDecodeOptions"

    .line 38
    .line 39
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->imageDecodeOptions:Ls3/d;

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "roundingOptions"

    .line 46
    .line 47
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "borderOptions"

    .line 54
    .line 55
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "actualImageScaleType"

    .line 62
    .line 63
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageScaleType:Lc3/q;

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "actualImageFocusPoint"

    .line 70
    .line 71
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->actualImageFocusPoint:Landroid/graphics/PointF;

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "localThumbnailPreviewsEnabled"

    .line 78
    .line 79
    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->mLocalThumbnailPreviewsEnabled:Z

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->d(Ljava/lang/String;Z)Lk2/f$a;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v1, "loadThumbnailOnly"

    .line 86
    .line 87
    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->loadThumbnailOnly:Z

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->d(Ljava/lang/String;Z)Lk2/f$a;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "bitmapConfig"

    .line 94
    .line 95
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v1, "progressiveRenderingEnabled"

    .line 102
    .line 103
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->isProgressiveDecodingEnabled:Ljava/lang/Boolean;

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v1, "add(...)"

    .line 110
    .line 111
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-object v0
.end method
