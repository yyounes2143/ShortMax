.class public interface abstract Lcom/unity3d/ads/core/domain/GetAsyncHeaderBiddingToken;
.super Ljava/lang/Object;
.source "GetAsyncHeaderBiddingToken.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract invoke(ILcom/unity3d/ads/TokenConfiguration;Lcom/unity3d/ads/IUnityAdsTokenListener;Lrs/c;)Ljava/lang/Object;
    .param p2    # Lcom/unity3d/ads/TokenConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/IUnityAdsTokenListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/unity3d/ads/TokenConfiguration;",
            "Lcom/unity3d/ads/IUnityAdsTokenListener;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
