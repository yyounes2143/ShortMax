.class public interface abstract Lcom/vungle/ads/InitializationListener;
.super Ljava/lang/Object;
.source "InitializationListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract onError(Lcom/vungle/ads/VungleError;)V
    .param p1    # Lcom/vungle/ads/VungleError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onSuccess()V
.end method
