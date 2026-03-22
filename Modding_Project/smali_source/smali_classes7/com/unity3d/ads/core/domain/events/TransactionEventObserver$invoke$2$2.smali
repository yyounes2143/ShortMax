.class final Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransactionEventObserver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.unity3d.ads.core.domain.events.TransactionEventObserver$invoke$2$2"
    f = "TransactionEventObserver.kt"
    l = {
        0x2c,
        0x2e,
        0x37
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTransactionEventObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionEventObserver.kt\ncom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2\n+ 2 UniversalRequestKt.kt\ngatewayprotocol/v1/UniversalRequestKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n484#2:61\n1#3:62\n*S KotlinDebug\n*F\n+ 1 TransactionEventObserver.kt\ncom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2\n*L\n41#1:61\n41#1:62\n*E\n"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2;->this$0:Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2;->this$0:Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2;-><init>(Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2;->invoke(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    if-eq v1, v4, :cond_2

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2;->L$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;

    .line 49
    .line 50
    sget-object v1, Lgatewayprotocol/v1/UniversalRequestKt;->INSTANCE:Lgatewayprotocol/v1/UniversalRequestKt;

    .line 51
    .line 52
    sget-object v1, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;->Companion:Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl$Companion;

    .line 53
    .line 54
    invoke-static {}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->newBuilder()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    const-string v6, "newBuilder()"

    .line 59
    .line 60
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v5}, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;)Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1, p1}, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;->setTransactionEventRequest(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;->_build()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2;->this$0:Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;

    .line 75
    .line 76
    invoke-static {v1}, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;->access$getGetUniversalRequestForPayLoad$p(Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;)Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iput v4, p0, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2;->label:I

    .line 81
    .line 82
    invoke-interface {v1, p1, p0}, Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;->invoke(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lrs/c;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-ne p1, v0, :cond_4

    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_4
    :goto_0
    move-object v1, p1

    .line 90
    check-cast v1, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;

    .line 91
    .line 92
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2;->this$0:Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;

    .line 93
    .line 94
    invoke-static {p1}, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;->access$getGatewayClient$p(Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;)Lcom/unity3d/ads/gatewayclient/GatewayClient;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2;->this$0:Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;->access$getGetRequestPolicy$p(Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-interface {p1}, Lcom/unity3d/ads/core/domain/GetRequestPolicy;->invoke()Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    sget-object v8, Lcom/unity3d/ads/core/data/model/OperationType;->TRANSACTION_EVENT:Lcom/unity3d/ads/core/data/model/OperationType;

    .line 109
    .line 110
    iput-object v1, p0, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2;->L$0:Ljava/lang/Object;

    .line 111
    .line 112
    iput v3, p0, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2;->label:I

    .line 113
    .line 114
    const/4 v5, 0x0

    .line 115
    const/4 v10, 0x1

    .line 116
    const/4 v11, 0x0

    .line 117
    move-object v6, v1

    .line 118
    move-object v9, p0

    .line 119
    invoke-static/range {v4 .. v11}, Lcom/unity3d/ads/gatewayclient/GatewayClient$DefaultImpls;->request$default(Lcom/unity3d/ads/gatewayclient/GatewayClient;Ljava/lang/String;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-ne p1, v0, :cond_5

    .line 124
    .line 125
    return-object v0

    .line 126
    :cond_5
    :goto_1
    check-cast p1, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    .line 127
    .line 128
    invoke-virtual {p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    if-eqz p1, :cond_6

    .line 133
    .line 134
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2;->this$0:Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;

    .line 135
    .line 136
    invoke-static {p1}, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;->access$getIapTransactionStore$p(Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {v1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;->getSharedData()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->getTimestamps()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v1}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->getTimestamp()Lcom/google/protobuf/Timestamp;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lcom/google/protobuf/AbstractMessageLite;->toByteString()Lcom/google/protobuf/ByteString;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const-string v3, "fullRequest.sharedData.t\u2026.timestamp.toByteString()"

    .line 157
    .line 158
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const/4 v3, 0x0

    .line 162
    iput-object v3, p0, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2;->L$0:Ljava/lang/Object;

    .line 163
    .line 164
    iput v2, p0, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2;->label:I

    .line 165
    .line 166
    invoke-interface {p1, v1, p0}, Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;->set(Lcom/google/protobuf/ByteString;Lrs/c;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-ne p1, v0, :cond_6

    .line 171
    .line 172
    return-object v0

    .line 173
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 174
    .line 175
    return-object p1
.end method
