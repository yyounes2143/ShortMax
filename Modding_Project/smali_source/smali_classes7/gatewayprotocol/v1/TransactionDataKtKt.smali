.class public final Lgatewayprotocol/v1/TransactionDataKtKt;
.super Ljava/lang/Object;
.source "TransactionDataKt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTransactionDataKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionDataKt.kt\ngatewayprotocol/v1/TransactionDataKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,230:1\n1#2:231\n*E\n"
    }
.end annotation


# direct methods
.method public static final -initializetransactionData(Lkotlin/jvm/functions/Function1;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;
    .locals 3
    .param p0    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lgatewayprotocol/v1/TransactionDataKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->Companion:Lgatewayprotocol/v1/TransactionDataKt$Dsl$Companion;

    .line 7
    .line 8
    invoke-static {}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->newBuilder()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "newBuilder()"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/TransactionDataKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;)Lgatewayprotocol/v1/TransactionDataKt$Dsl;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_build()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static final copy(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;Lkotlin/jvm/functions/Function1;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;
    .locals 2
    .param p0    # Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lgatewayprotocol/v1/TransactionDataKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->Companion:Lgatewayprotocol/v1/TransactionDataKt$Dsl$Companion;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v1, "this.toBuilder()"

    .line 18
    .line 19
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/TransactionDataKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;)Lgatewayprotocol/v1/TransactionDataKt$Dsl;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_build()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static final getTimestampOrNull(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionDataOrBuilder;)Lcom/google/protobuf/Timestamp;
    .locals 1
    .param p0    # Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionDataOrBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionDataOrBuilder;->hasTimestamp()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionDataOrBuilder;->getTimestamp()Lcom/google/protobuf/Timestamp;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return-object p0
.end method
