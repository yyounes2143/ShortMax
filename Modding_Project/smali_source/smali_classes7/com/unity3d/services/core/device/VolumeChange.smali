.class public interface abstract Lcom/unity3d/services/core/device/VolumeChange;
.super Ljava/lang/Object;
.source "VolumeChange.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract clearAllListeners()V
.end method

.method public abstract registerListener(Lcom/unity3d/services/core/device/VolumeChangeListener;)V
    .param p1    # Lcom/unity3d/services/core/device/VolumeChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract startObserving()V
.end method

.method public abstract stopObserving()V
.end method

.method public abstract unregisterListener(Lcom/unity3d/services/core/device/VolumeChangeListener;)V
    .param p1    # Lcom/unity3d/services/core/device/VolumeChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
