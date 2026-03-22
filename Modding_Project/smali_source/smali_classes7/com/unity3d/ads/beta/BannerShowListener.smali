.class public interface abstract Lcom/unity3d/ads/beta/BannerShowListener;
.super Ljava/lang/Object;
.source "BannerShowListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract unityAdsBannerDidClick(Lcom/unity3d/ads/beta/BannerAd;)V
    .param p1    # Lcom/unity3d/ads/beta/BannerAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract unityAdsBannerDidFailShow(Lcom/unity3d/ads/beta/BannerAd;Lcom/unity3d/ads/beta/UnityAdsError;)V
    .param p1    # Lcom/unity3d/ads/beta/BannerAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/beta/UnityAdsError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract unityAdsBannerImpression(Lcom/unity3d/ads/beta/BannerAd;)V
    .param p1    # Lcom/unity3d/ads/beta/BannerAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
