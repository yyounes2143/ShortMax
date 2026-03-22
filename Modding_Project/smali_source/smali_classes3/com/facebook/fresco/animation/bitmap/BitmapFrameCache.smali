.class public interface abstract Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;
.super Ljava/lang/Object;
.source "BitmapFrameCache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$DefaultImpls;,
        Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract contains(I)Z
.end method

.method public abstract getBitmapToReuseForFrame(III)Lo2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getCachedFrame(I)Lo2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getFallbackFrame(I)Lo2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getSizeInBytes()I
.end method

.method public abstract isAnimationReady()Z
.end method

.method public abstract onAnimationPrepared(Ljava/util/Map;)Z
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;)Z"
        }
    .end annotation
.end method

.method public abstract onFramePrepared(ILo2/a;I)V
    .param p2    # Lo2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onFrameRendered(ILo2/a;I)V
    .param p2    # Lo2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract setFrameCacheListener(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;)V
    .param p1    # Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
