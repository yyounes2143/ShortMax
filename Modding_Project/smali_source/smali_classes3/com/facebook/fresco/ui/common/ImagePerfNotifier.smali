.class public interface abstract Lcom/facebook/fresco/ui/common/ImagePerfNotifier;
.super Ljava/lang/Object;
.source "ImagePerfNotifier.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract notifyStatusUpdated(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V
    .param p1    # Lcom/facebook/fresco/ui/common/ImagePerfState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/ui/common/ImageLoadStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract notifyVisibilityUpdated(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/VisibilityState;)V
    .param p1    # Lcom/facebook/fresco/ui/common/ImagePerfState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/ui/common/VisibilityState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
