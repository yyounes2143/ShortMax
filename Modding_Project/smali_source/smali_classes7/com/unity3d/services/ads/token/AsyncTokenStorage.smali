.class public interface abstract Lcom/unity3d/services/ads/token/AsyncTokenStorage;
.super Ljava/lang/Object;
.source "AsyncTokenStorage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract getToken(Lcom/unity3d/services/ads/gmascar/managers/IBiddingManager;)V
    .param p1    # Lcom/unity3d/services/ads/gmascar/managers/IBiddingManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onTokenAvailable()V
.end method

.method public abstract setConfiguration(Lcom/unity3d/services/core/configuration/Configuration;)V
    .param p1    # Lcom/unity3d/services/core/configuration/Configuration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
