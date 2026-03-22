.class public interface abstract Lcom/facebook/fresco/vito/renderer/CanvasTransformation;
.super Ljava/lang/Object;
.source "CanvasTransformation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract calculateTransformation(Landroid/graphics/Matrix;Landroid/graphics/Rect;II)Landroid/graphics/Matrix;
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
