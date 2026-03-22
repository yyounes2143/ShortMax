.class public interface abstract Lcom/vungle/ads/internal/load/AdLoaderCallback;
.super Ljava/lang/Object;
.source "AdLoaderCallback.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/vungle/ads/VungleError;)V
    .param p1    # Lcom/vungle/ads/VungleError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onSuccess(Lcom/vungle/ads/internal/model/AdPayload;)V
    .param p1    # Lcom/vungle/ads/internal/model/AdPayload;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
