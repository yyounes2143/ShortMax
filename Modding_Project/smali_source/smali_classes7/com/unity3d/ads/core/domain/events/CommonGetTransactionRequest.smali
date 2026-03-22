.class public final Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest;
.super Ljava/lang/Object;
.source "CommonGetTransactionRequest.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/events/GetTransactionRequest;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCommonGetTransactionRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonGetTransactionRequest.kt\ncom/unity3d/ads/core/domain/events/CommonGetTransactionRequest\n+ 2 TransactionEventRequestKt.kt\ngatewayprotocol/v1/TransactionEventRequestKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,22:1\n10#2:23\n1#3:24\n*S KotlinDebug\n*F\n+ 1 CommonGetTransactionRequest.kt\ncom/unity3d/ads/core/domain/events/CommonGetTransactionRequest\n*L\n13#1:23\n13#1:24\n*E\n"
    }
.end annotation


# instance fields
.field private final deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "deviceInfoRepository"

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
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public invoke(Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;",
            ">;",
            "Lrs/c<",
            "-",
            "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest$invoke$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest$invoke$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest$invoke$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest$invoke$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest$invoke$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest$invoke$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest$invoke$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest$invoke$1;->L$4:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lgatewayprotocol/v1/TransactionEventRequestKt$Dsl;

    .line 41
    .line 42
    iget-object v1, v0, Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest$invoke$1;->L$3:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Lgatewayprotocol/v1/TransactionEventRequestKt$Dsl;

    .line 45
    .line 46
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest$invoke$1;->L$2:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Lgatewayprotocol/v1/TransactionEventRequestKt$Dsl;

    .line 49
    .line 50
    iget-object v3, v0, Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest$invoke$1;->L$1:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v3, Ljava/util/List;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest$invoke$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest;

    .line 57
    .line 58
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    sget-object p2, Lgatewayprotocol/v1/TransactionEventRequestKt$Dsl;->Companion:Lgatewayprotocol/v1/TransactionEventRequestKt$Dsl$Companion;

    .line 74
    .line 75
    invoke-static {}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;->newBuilder()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-string v4, "newBuilder()"

    .line 80
    .line 81
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v2}, Lgatewayprotocol/v1/TransactionEventRequestKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest$Builder;)Lgatewayprotocol/v1/TransactionEventRequestKt$Dsl;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 89
    .line 90
    iput-object p0, v0, Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest$invoke$1;->L$0:Ljava/lang/Object;

    .line 91
    .line 92
    iput-object p1, v0, Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest$invoke$1;->L$1:Ljava/lang/Object;

    .line 93
    .line 94
    iput-object p2, v0, Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest$invoke$1;->L$2:Ljava/lang/Object;

    .line 95
    .line 96
    iput-object p2, v0, Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest$invoke$1;->L$3:Ljava/lang/Object;

    .line 97
    .line 98
    iput-object p2, v0, Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest$invoke$1;->L$4:Ljava/lang/Object;

    .line 99
    .line 100
    iput v3, v0, Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest$invoke$1;->label:I

    .line 101
    .line 102
    invoke-interface {v2, v0}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->staticDeviceInfo(Lrs/c;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-ne v0, v1, :cond_3

    .line 107
    .line 108
    return-object v1

    .line 109
    :cond_3
    move-object v3, p1

    .line 110
    move-object p1, p2

    .line 111
    move-object v1, p1

    .line 112
    move-object v2, v1

    .line 113
    move-object p2, v0

    .line 114
    move-object v0, p0

    .line 115
    :goto_1
    check-cast p2, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/TransactionEventRequestKt$Dsl;->setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 121
    .line 122
    invoke-interface {p1}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {v1, p1}, Lgatewayprotocol/v1/TransactionEventRequestKt$Dsl;->setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    .line 127
    .line 128
    .line 129
    sget-object p1, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$StoreType;->STORE_TYPE_GOOGLE_PLAY:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$StoreType;

    .line 130
    .line 131
    invoke-virtual {v1, p1}, Lgatewayprotocol/v1/TransactionEventRequestKt$Dsl;->setAppStore(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$StoreType;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Lgatewayprotocol/v1/TransactionEventRequestKt$Dsl;->getTransactionData()Lcom/google/protobuf/kotlin/DslList;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast v3, Ljava/lang/Iterable;

    .line 139
    .line 140
    invoke-virtual {v1, p1, v3}, Lgatewayprotocol/v1/TransactionEventRequestKt$Dsl;->addAllTransactionData(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Lgatewayprotocol/v1/TransactionEventRequestKt$Dsl;->_build()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    return-object p1
.end method
