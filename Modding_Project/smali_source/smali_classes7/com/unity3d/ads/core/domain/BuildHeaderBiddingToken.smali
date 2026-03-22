.class public interface abstract Lcom/unity3d/ads/core/domain/BuildHeaderBiddingToken;
.super Ljava/lang/Object;
.source "BuildHeaderBiddingToken.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/BuildHeaderBiddingToken$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract invoke(ILcom/unity3d/ads/TokenConfiguration;ZLrs/c;)Ljava/lang/Object;
    .param p2    # Lcom/unity3d/ads/TokenConfiguration;
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
            "Z",
            "Lrs/c<",
            "-",
            "Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
