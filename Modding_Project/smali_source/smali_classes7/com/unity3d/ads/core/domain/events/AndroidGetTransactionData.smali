.class public final Lcom/unity3d/ads/core/domain/events/AndroidGetTransactionData;
.super Ljava/lang/Object;
.source "AndroidGetTransactionData.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/events/GetTransactionData;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAndroidGetTransactionData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGetTransactionData.kt\ncom/unity3d/ads/core/domain/events/AndroidGetTransactionData\n+ 2 TransactionDataKt.kt\ngatewayprotocol/v1/TransactionDataKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,27:1\n10#2:28\n1#3:29\n*S KotlinDebug\n*F\n+ 1 AndroidGetTransactionData.kt\ncom/unity3d/ads/core/domain/events/AndroidGetTransactionData\n*L\n17#1:28\n17#1:29\n*E\n"
    }
.end annotation


# instance fields
.field private final getByteStringId:Lcom/unity3d/ads/core/domain/GetByteStringId;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/GetByteStringId;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/domain/GetByteStringId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "getByteStringId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/events/AndroidGetTransactionData;->getByteStringId:Lcom/unity3d/ads/core/domain/GetByteStringId;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public invoke(Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge;Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsBridge;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;
    .locals 3
    .param p1    # Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsBridge;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "purchaseDetail"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "productDetail"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->Companion:Lgatewayprotocol/v1/TransactionDataKt$Dsl$Companion;

    .line 12
    .line 13
    invoke-static {}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->newBuilder()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "newBuilder()"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/TransactionDataKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;)Lgatewayprotocol/v1/TransactionDataKt$Dsl;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/CommonJsonResponseBridge;->getOriginalJson()Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "productId"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->setProductId(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/events/AndroidGetTransactionData;->getByteStringId:Lcom/unity3d/ads/core/domain/GetByteStringId;

    .line 44
    .line 45
    invoke-interface {v1}, Lcom/unity3d/ads/core/domain/GetByteStringId;->invoke()Lcom/google/protobuf/ByteString;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->setEventId(Lcom/google/protobuf/ByteString;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/CommonJsonResponseBridge;->getOriginalJson()Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "purchaseTime"

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "null cannot be cast to non-null type kotlin.Long"

    .line 63
    .line 64
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    check-cast v1, Ljava/lang/Long;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    invoke-static {v1, v2}, Lcom/unity3d/ads/core/extensions/TimestampExtensionsKt;->fromMillis(J)Lcom/google/protobuf/Timestamp;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->setTimestamp(Lcom/google/protobuf/Timestamp;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/CommonJsonResponseBridge;->getOriginalJson()Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string v2, "orderId"

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->setTransactionId(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/unity3d/services/store/gpbl/bridges/CommonJsonResponseBridge;->getOriginalJson()Lorg/json/JSONObject;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    const-string v1, "productDetail.originalJson.toString()"

    .line 106
    .line 107
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p2}, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->setProduct(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/CommonJsonResponseBridge;->getOriginalJson()Lorg/json/JSONObject;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    const-string v1, "purchaseDetail.originalJson.toString()"

    .line 122
    .line 123
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p2}, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->setTransaction(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/CommonJsonResponseBridge;->getOriginalJson()Lorg/json/JSONObject;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    const-string p2, "purchaseState"

    .line 134
    .line 135
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    const-string p2, "null cannot be cast to non-null type kotlin.Int"

    .line 140
    .line 141
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    check-cast p1, Ljava/lang/Integer;

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    invoke-static {p1}, Lcom/unity3d/ads/core/extensions/TransactionStateExtensionsKt;->fromPurchaseState(I)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->setTransactionState(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_build()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    return-object p1
.end method
