.class public interface abstract Lcom/moloco/sdk/publisher/AdShowListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract onAdClicked(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onAdHidden(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onAdShowFailed(Lcom/moloco/sdk/publisher/MolocoAdError;)V
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAdError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onAdShowSuccess(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
