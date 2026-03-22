.class public interface abstract Lcom/unity3d/ads/beta/ShowListener;
.super Ljava/lang/Object;
.source "ShowListener.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnityAd:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract showClick(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUnityAd;)V"
        }
    .end annotation
.end method

.method public abstract showComplete(Ljava/lang/Object;Lcom/unity3d/ads/beta/ShowFinishState;)V
    .param p2    # Lcom/unity3d/ads/beta/ShowFinishState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUnityAd;",
            "Lcom/unity3d/ads/beta/ShowFinishState;",
            ")V"
        }
    .end annotation
.end method

.method public abstract showFailed(Ljava/lang/Object;Lcom/unity3d/ads/beta/UnityAdsError;)V
    .param p2    # Lcom/unity3d/ads/beta/UnityAdsError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUnityAd;",
            "Lcom/unity3d/ads/beta/UnityAdsError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract showImpression(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUnityAd;)V"
        }
    .end annotation
.end method

.method public abstract showStart(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUnityAd;)V"
        }
    .end annotation
.end method
