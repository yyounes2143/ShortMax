.class public interface abstract Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;
.super Ljava/lang/Object;
.source "BitmapFrameRenderer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract getIntrinsicHeight()I
.end method

.method public abstract getIntrinsicWidth()I
.end method

.method public abstract renderFrame(ILandroid/graphics/Bitmap;)Z
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setBounds(Landroid/graphics/Rect;)V
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
