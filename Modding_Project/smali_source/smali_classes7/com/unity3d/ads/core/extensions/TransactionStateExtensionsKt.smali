.class public final Lcom/unity3d/ads/core/extensions/TransactionStateExtensionsKt;
.super Ljava/lang/Object;
.source "TransactionStateExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final fromPurchaseState(I)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;->UNRECOGNIZED:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;->TRANSACTION_STATE_PENDING:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    sget-object p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;->TRANSACTION_STATE_UNSPECIFIED:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    sget-object p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;->TRANSACTION_STATE_PURCHASED:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;

    .line 19
    .line 20
    :goto_0
    return-object p0
.end method
