.class public final Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender;
.super Ljava/lang/Object;
.source "UniversalRequestEventSender.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handleGatewayEventResponse:Lcom/unity3d/ads/core/domain/events/HandleGatewayEventResponse;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final universalRequestTtlValidator:Lcom/unity3d/ads/core/domain/events/UniversalRequestTtlValidator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/domain/events/HandleGatewayEventResponse;Lcom/unity3d/ads/core/domain/events/UniversalRequestTtlValidator;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/gatewayclient/GatewayClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/domain/events/HandleGatewayEventResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/core/domain/events/UniversalRequestTtlValidator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "gatewayClient"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "handleGatewayEventResponse"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "universalRequestTtlValidator"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender;->gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender;->handleGatewayEventResponse:Lcom/unity3d/ads/core/domain/events/HandleGatewayEventResponse;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender;->universalRequestTtlValidator:Lcom/unity3d/ads/core/domain/events/UniversalRequestTtlValidator;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final invoke(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lrs/c;)Ljava/lang/Object;
    .locals 11
    .param p1    # Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/gatewayclient/RequestPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;",
            "Lcom/unity3d/ads/gatewayclient/RequestPolicy;",
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
    instance-of v0, p3, Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender$invoke$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender$invoke$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender$invoke$1;->label:I

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
    iput v1, v0, Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender$invoke$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender$invoke$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender$invoke$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    iget v1, v0, Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender$invoke$1;->label:I

    .line 32
    .line 33
    const/4 v10, 0x2

    .line 34
    const/4 v2, 0x1

    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    if-eq v1, v2, :cond_2

    .line 38
    .line 39
    if-ne v1, v10, :cond_1

    .line 40
    .line 41
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_4

    .line 45
    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender$invoke$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender;

    .line 57
    .line 58
    :try_start_0
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception p2

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object p3, p0, Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender;->universalRequestTtlValidator:Lcom/unity3d/ads/core/domain/events/UniversalRequestTtlValidator;

    .line 68
    .line 69
    invoke-interface {p3, p1, p2}, Lcom/unity3d/ads/core/domain/events/UniversalRequestTtlValidator;->invoke(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;)Z

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    if-nez p3, :cond_4

    .line 74
    .line 75
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 76
    .line 77
    return-object p1

    .line 78
    :cond_4
    :try_start_1
    sget-object p3, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender;->gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;

    .line 81
    .line 82
    sget-object v5, Lcom/unity3d/ads/core/data/model/OperationType;->UNIVERSAL_EVENT:Lcom/unity3d/ads/core/data/model/OperationType;

    .line 83
    .line 84
    iput-object p0, v0, Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender$invoke$1;->L$0:Ljava/lang/Object;

    .line 85
    .line 86
    iput v2, v0, Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender$invoke$1;->label:I

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    const/4 v7, 0x1

    .line 90
    const/4 v8, 0x0

    .line 91
    move-object v3, p1

    .line 92
    move-object v4, p2

    .line 93
    move-object v6, v0

    .line 94
    invoke-static/range {v1 .. v8}, Lcom/unity3d/ads/gatewayclient/GatewayClient$DefaultImpls;->request$default(Lcom/unity3d/ads/gatewayclient/GatewayClient;Ljava/lang/String;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    if-ne p3, v9, :cond_5

    .line 99
    .line 100
    return-object v9

    .line 101
    :cond_5
    move-object p1, p0

    .line 102
    :goto_1
    :try_start_2
    check-cast p3, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    .line 103
    .line 104
    invoke-static {p3}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    goto :goto_3

    .line 109
    :catchall_1
    move-exception p2

    .line 110
    move-object p1, p0

    .line 111
    :goto_2
    sget-object p3, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 112
    .line 113
    invoke-static {p2}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-static {p2}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    :goto_3
    invoke-static {p2}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    instance-of p3, p3, Lcom/unity3d/ads/core/data/model/exception/GatewayException;

    .line 126
    .line 127
    if-eqz p3, :cond_6

    .line 128
    .line 129
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 130
    .line 131
    return-object p1

    .line 132
    :cond_6
    iget-object p1, p1, Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender;->handleGatewayEventResponse:Lcom/unity3d/ads/core/domain/events/HandleGatewayEventResponse;

    .line 133
    .line 134
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    check-cast p2, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    .line 138
    .line 139
    const/4 p3, 0x0

    .line 140
    iput-object p3, v0, Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender$invoke$1;->L$0:Ljava/lang/Object;

    .line 141
    .line 142
    iput v10, v0, Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender$invoke$1;->label:I

    .line 143
    .line 144
    invoke-interface {p1, p2, v0}, Lcom/unity3d/ads/core/domain/events/HandleGatewayEventResponse;->invoke(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;Lrs/c;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-ne p1, v9, :cond_7

    .line 149
    .line 150
    return-object v9

    .line 151
    :cond_7
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 152
    .line 153
    return-object p1
.end method
