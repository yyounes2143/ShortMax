.class public interface abstract Lcom/unity3d/ads/beta/LoadListener;
.super Ljava/lang/Object;
.source "LoadListener.kt"


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
.method public abstract onAdLoaded(Ljava/lang/Object;Lcom/unity3d/ads/beta/UnityAdsError;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/beta/UnityAdsError;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
