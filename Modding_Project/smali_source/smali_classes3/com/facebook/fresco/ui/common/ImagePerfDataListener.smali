.class public interface abstract Lcom/facebook/fresco/ui/common/ImagePerfDataListener;
.super Ljava/lang/Object;
.source "ImagePerfDataListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract onImageLoadStatusUpdated(Lcom/facebook/fresco/ui/common/ImagePerfData;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V
    .param p1    # Lcom/facebook/fresco/ui/common/ImagePerfData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/ui/common/ImageLoadStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onImageVisibilityUpdated(Lcom/facebook/fresco/ui/common/ImagePerfData;Lcom/facebook/fresco/ui/common/VisibilityState;)V
    .param p1    # Lcom/facebook/fresco/ui/common/ImagePerfData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/ui/common/VisibilityState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
