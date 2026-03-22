.class public interface abstract Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;
.super Ljava/lang/Object;
.source "HandleGatewayInitializationResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract invoke(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Lrs/c;)Ljava/lang/Object;
    .param p1    # Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;",
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
