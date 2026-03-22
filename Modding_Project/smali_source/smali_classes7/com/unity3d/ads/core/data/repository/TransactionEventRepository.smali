.class public interface abstract Lcom/unity3d/ads/core/data/repository/TransactionEventRepository;
.super Ljava/lang/Object;
.source "TransactionEventRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract addTransactionEvent(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;)V
    .param p1    # Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getTransactionEvents()Lkt/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/f<",
            "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
