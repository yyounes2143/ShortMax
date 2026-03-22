.class public interface abstract Lcom/vungle/ads/BaseAdListener;
.super Ljava/lang/Object;
.source "BaseAdListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract onAdClicked(Lcom/vungle/ads/BaseAd;)V
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onAdEnd(Lcom/vungle/ads/BaseAd;)V
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onAdFailedToLoad(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/VungleError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onAdFailedToPlay(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/VungleError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onAdImpression(Lcom/vungle/ads/BaseAd;)V
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onAdLeftApplication(Lcom/vungle/ads/BaseAd;)V
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onAdLoaded(Lcom/vungle/ads/BaseAd;)V
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onAdStart(Lcom/vungle/ads/BaseAd;)V
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
