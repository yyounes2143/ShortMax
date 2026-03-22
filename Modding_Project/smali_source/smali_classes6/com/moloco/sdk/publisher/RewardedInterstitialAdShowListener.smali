.class public interface abstract Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/publisher/InterstitialAdShowListener;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract onRewardedVideoCompleted(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onRewardedVideoStarted(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onUserRewarded(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
