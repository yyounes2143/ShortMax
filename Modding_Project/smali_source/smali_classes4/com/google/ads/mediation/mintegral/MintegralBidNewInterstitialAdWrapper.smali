.class public interface abstract Lcom/google/ads/mediation/mintegral/MintegralBidNewInterstitialAdWrapper;
.super Ljava/lang/Object;
.source "MintegralFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract createAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract loadFromBid(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract playVideoMute(I)V
.end method

.method public abstract setExtraInfo(Lorg/json/JSONObject;)V
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setInterstitialVideoListener(Lcom/mbridge/msdk/newinterstitial/out/NewInterstitialWithCodeListener;)V
    .param p1    # Lcom/mbridge/msdk/newinterstitial/out/NewInterstitialWithCodeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract showFromBid()V
.end method
