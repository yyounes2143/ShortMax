.class public interface abstract Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;
.super Ljava/lang/Object;
.source "SDKPropertiesManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract getCurrentInitializationState()Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract setInitializationTime()V
.end method

.method public abstract setInitializationTimeSinceEpoch()V
.end method

.method public abstract setInitializeState(Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;)V
    .param p1    # Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setInitialized(Z)V
.end method
