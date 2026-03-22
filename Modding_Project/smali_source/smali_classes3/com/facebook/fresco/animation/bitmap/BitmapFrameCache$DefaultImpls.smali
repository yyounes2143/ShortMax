.class public final Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$DefaultImpls;
.super Ljava/lang/Object;
.source "BitmapFrameCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static isAnimationReady(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;)Z
    .locals 0
    .param p0    # Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public static onAnimationPrepared(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Ljava/util/Map;)Z
    .locals 0
    .param p0    # Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;)Z"
        }
    .end annotation

    .line 1
    const-string p0, "frameBitmaps"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0
.end method
