.class public final Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;
.super Ljava/lang/Object;
.source "CommonGatewayClient.kt"

# interfaces
.implements Lcom/unity3d/ads/gatewayclient/GatewayClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCommonGatewayClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonGatewayClient.kt\ncom/unity3d/ads/gatewayclient/CommonGatewayClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 UniversalResponseKt.kt\ngatewayprotocol/v1/UniversalResponseKtKt\n+ 4 ErrorKt.kt\ngatewayprotocol/v1/ErrorKtKt\n*L\n1#1,265:1\n1#2:266\n1#2:268\n1#2:270\n10#3:267\n10#4:269\n*S KotlinDebug\n*F\n+ 1 CommonGatewayClient.kt\ncom/unity3d/ads/gatewayclient/CommonGatewayClient\n*L\n227#1:268\n228#1:270\n227#1:267\n228#1:269\n*E\n"
    }
.end annotation


# static fields
.field public static final CODE_400:I = 0x190

.field public static final CODE_599:I = 0x257

.field public static final CODE_TOO_MANY_REQUESTS:I = 0x1ad

.field public static final Companion:Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HEADER_PROTOBUF:Ljava/lang/String; = "application/x-protobuf"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HEADER_RETRY_AFTER:Ljava/lang/String; = "Retry-After"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HEADER_RETRY_ATTEMPT:Ljava/lang/String; = "X-RETRY-ATTEMPT"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final handleGatewayUniversalResponse:Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final httpClient:Lcom/unity3d/services/core/network/core/HttpClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->Companion:Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/unity3d/services/core/network/core/HttpClient;Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/SessionRepository;)V
    .locals 1
    .param p1    # Lcom/unity3d/services/core/network/core/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/unity3d/ads/core/data/repository/SessionRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "httpClient"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "handleGatewayUniversalResponse"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "sendDiagnosticEvent"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "sessionRepository"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->httpClient:Lcom/unity3d/services/core/network/core/HttpClient;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->handleGatewayUniversalResponse:Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 31
    .line 32
    return-void
.end method

.method public static final synthetic access$executeRequest(Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;Lcom/unity3d/services/core/network/model/HttpRequest;ILcom/unity3d/ads/core/data/model/OperationType;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->executeRequest(Lcom/unity3d/services/core/network/model/HttpRequest;ILcom/unity3d/ads/core/data/model/OperationType;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$executeWithRetry(Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;Ljava/lang/String;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->executeWithRetry(Ljava/lang/String;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final buildHttpRequest(Ljava/lang/String;Ljava/util/Map;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;)Lcom/unity3d/services/core/network/model/HttpRequest;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/unity3d/ads/gatewayclient/RequestPolicy;",
            "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;",
            ")",
            "Lcom/unity3d/services/core/network/model/HttpRequest;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v5, p2

    .line 4
    .line 5
    new-instance v20, Lcom/unity3d/services/core/network/model/HttpRequest;

    .line 6
    .line 7
    move-object/from16 v0, v20

    .line 8
    .line 9
    sget-object v3, Lcom/unity3d/services/core/network/model/RequestType;->POST:Lcom/unity3d/services/core/network/model/RequestType;

    .line 10
    .line 11
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual/range {p3 .. p3}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getConnectTimeout()I

    .line 16
    .line 17
    .line 18
    move-result v10

    .line 19
    invoke-virtual/range {p3 .. p3}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getReadTimeout()I

    .line 20
    .line 21
    .line 22
    move-result v11

    .line 23
    invoke-virtual/range {p3 .. p3}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getWriteTimeout()I

    .line 24
    .line 25
    .line 26
    move-result v12

    .line 27
    invoke-virtual/range {p3 .. p3}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getOverallTimeout()I

    .line 28
    .line 29
    .line 30
    move-result v13

    .line 31
    const v18, 0x1c1e2

    .line 32
    .line 33
    .line 34
    const/16 v19, 0x0

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v14, 0x1

    .line 42
    const/4 v15, 0x0

    .line 43
    const/16 v16, 0x0

    .line 44
    .line 45
    const/16 v17, 0x0

    .line 46
    .line 47
    invoke-direct/range {v0 .. v19}, Lcom/unity3d/services/core/network/model/HttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/network/model/RequestType;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/services/core/network/model/BodyType;Ljava/lang/String;Ljava/lang/Integer;IIIIZLcom/unity3d/ads/core/data/model/OperationType;Ljava/io/File;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 48
    .line 49
    .line 50
    return-object v20
.end method

.method private final calculateDelayTime(JLcom/unity3d/ads/gatewayclient/RequestPolicy;I)J
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->calculateExponentialBackoff(JLcom/unity3d/ads/gatewayclient/RequestPolicy;I)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    invoke-virtual {p3}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getRetryWaitBase()I

    .line 6
    .line 7
    .line 8
    move-result p4

    .line 9
    invoke-virtual {p3}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getRetryJitterPct()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-direct {p0, p4, v0}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->calculateJitter(IF)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    add-long/2addr p1, v0

    .line 18
    invoke-virtual {p3}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getRetryMaxInterval()I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    int-to-long p3, p3

    .line 23
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    return-wide p1
.end method

.method private final calculateExponentialBackoff(JLcom/unity3d/ads/gatewayclient/RequestPolicy;I)J
    .locals 0

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    return-wide p1

    .line 4
    :cond_0
    long-to-float p1, p1

    .line 5
    invoke-virtual {p3}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getRetryScalingFactor()F

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    mul-float/2addr p1, p2

    .line 10
    float-to-long p1, p1

    .line 11
    return-wide p1
.end method

.method private final calculateJitter(IF)J
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p2, v0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    return-wide p1

    .line 9
    :cond_0
    int-to-float p1, p1

    .line 10
    mul-float/2addr p1, p2

    .line 11
    float-to-long p1, p1

    .line 12
    sget-object v0, Lkotlin/random/Random;->a:Lkotlin/random/Random$Default;

    .line 13
    .line 14
    neg-long v1, p1

    .line 15
    invoke-virtual {v0, v1, v2, p1, p2}, Lkotlin/random/Random$Default;->k(JJ)J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    return-wide p1
.end method

.method private final executeRequest(Lcom/unity3d/services/core/network/model/HttpRequest;ILcom/unity3d/ads/core/data/model/OperationType;Lrs/c;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/core/network/model/HttpRequest;",
            "I",
            "Lcom/unity3d/ads/core/data/model/OperationType;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/services/core/network/model/HttpResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p4

    .line 4
    .line 5
    instance-of v2, v0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeRequest$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeRequest$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeRequest$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeRequest$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeRequest$1;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeRequest$1;-><init>(Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeRequest$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeRequest$1;->label:I

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    if-ne v4, v5, :cond_1

    .line 41
    .line 42
    iget-wide v3, v2, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeRequest$1;->J$0:J

    .line 43
    .line 44
    iget v5, v2, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeRequest$1;->I$0:I

    .line 45
    .line 46
    iget-object v6, v2, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeRequest$1;->L$1:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v6, Lcom/unity3d/ads/core/data/model/OperationType;

    .line 49
    .line 50
    iget-object v2, v2, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeRequest$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;

    .line 53
    .line 54
    :try_start_0
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    move-wide/from16 v19, v3

    .line 58
    .line 59
    move-object v4, v6

    .line 60
    move-wide/from16 v6, v19

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    move v8, v5

    .line 65
    move-wide/from16 v19, v3

    .line 66
    .line 67
    move-object v4, v6

    .line 68
    move-wide/from16 v6, v19

    .line 69
    .line 70
    goto/16 :goto_4

    .line 71
    .line 72
    :catch_1
    move-exception v0

    .line 73
    move v8, v5

    .line 74
    move-wide/from16 v19, v3

    .line 75
    .line 76
    move-object v4, v6

    .line 77
    move-wide/from16 v6, v19

    .line 78
    .line 79
    goto/16 :goto_5

    .line 80
    .line 81
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 84
    .line 85
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v0

    .line 89
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    sget-object v0, Lkotlin/time/h;->a:Lkotlin/time/h;

    .line 93
    .line 94
    invoke-virtual {v0}, Lkotlin/time/h;->b()J

    .line 95
    .line 96
    .line 97
    move-result-wide v6

    .line 98
    :try_start_1
    iget-object v0, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->httpClient:Lcom/unity3d/services/core/network/core/HttpClient;

    .line 99
    .line 100
    iput-object v1, v2, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeRequest$1;->L$0:Ljava/lang/Object;
    :try_end_1
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_8

    .line 101
    .line 102
    move-object/from16 v4, p3

    .line 103
    .line 104
    :try_start_2
    iput-object v4, v2, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeRequest$1;->L$1:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_2 .. :try_end_2} :catch_6

    .line 105
    .line 106
    move/from16 v8, p2

    .line 107
    .line 108
    :try_start_3
    iput v8, v2, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeRequest$1;->I$0:I

    .line 109
    .line 110
    iput-wide v6, v2, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeRequest$1;->J$0:J

    .line 111
    .line 112
    iput v5, v2, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeRequest$1;->label:I

    .line 113
    .line 114
    move-object/from16 v5, p1

    .line 115
    .line 116
    invoke-interface {v0, v5, v2}, Lcom/unity3d/services/core/network/core/HttpClient;->execute(Lcom/unity3d/services/core/network/model/HttpRequest;Lrs/c;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0
    :try_end_3
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_3 .. :try_end_3} :catch_4

    .line 120
    if-ne v0, v3, :cond_3

    .line 121
    .line 122
    return-object v3

    .line 123
    :cond_3
    move-object v2, v1

    .line 124
    move v5, v8

    .line 125
    :goto_1
    :try_start_4
    check-cast v0, Lcom/unity3d/services/core/network/model/HttpResponse;

    .line 126
    .line 127
    invoke-static {v6, v7}, Lkotlin/time/h$a;->b(J)Lkotlin/time/h$a;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-direct {v2, v0, v5, v4, v3}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->sendNetworkSuccessDiagnosticEvent(Lcom/unity3d/services/core/network/model/HttpResponse;ILcom/unity3d/ads/core/data/model/OperationType;Lkotlin/time/TimeMark;)V
    :try_end_4
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_4 .. :try_end_4} :catch_2

    .line 132
    .line 133
    .line 134
    goto :goto_6

    .line 135
    :catch_2
    move-exception v0

    .line 136
    move v8, v5

    .line 137
    goto :goto_4

    .line 138
    :catch_3
    move-exception v0

    .line 139
    move v8, v5

    .line 140
    goto :goto_5

    .line 141
    :catch_4
    move-exception v0

    .line 142
    :goto_2
    move-object v2, v1

    .line 143
    goto :goto_4

    .line 144
    :catch_5
    move-exception v0

    .line 145
    :goto_3
    move-object v2, v1

    .line 146
    goto :goto_5

    .line 147
    :catch_6
    move-exception v0

    .line 148
    move/from16 v8, p2

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :catch_7
    move-exception v0

    .line 152
    move/from16 v8, p2

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :catch_8
    move-exception v0

    .line 156
    move/from16 v8, p2

    .line 157
    .line 158
    move-object/from16 v4, p3

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :catch_9
    move-exception v0

    .line 162
    move/from16 v8, p2

    .line 163
    .line 164
    move-object/from16 v4, p3

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :goto_4
    new-instance v3, Lcom/unity3d/ads/core/data/model/exception/NetworkTimeoutException;

    .line 168
    .line 169
    const/16 v17, 0x7e

    .line 170
    .line 171
    const/16 v18, 0x0

    .line 172
    .line 173
    const-string v10, "Gateway request was canceled due to exceeding timeout for operation"

    .line 174
    .line 175
    const/4 v11, 0x0

    .line 176
    const/4 v12, 0x0

    .line 177
    const/4 v13, 0x0

    .line 178
    const/4 v14, 0x0

    .line 179
    const/4 v15, 0x0

    .line 180
    const/16 v16, 0x0

    .line 181
    .line 182
    move-object v9, v3

    .line 183
    invoke-direct/range {v9 .. v18}, Lcom/unity3d/ads/core/data/model/exception/NetworkTimeoutException;-><init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v6, v7}, Lkotlin/time/h$a;->b(J)Lkotlin/time/h$a;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-direct {v2, v3, v8, v4, v5}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->sendNetworkErrorDiagnosticEvent(Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;ILcom/unity3d/ads/core/data/model/OperationType;Lkotlin/time/TimeMark;)V

    .line 191
    .line 192
    .line 193
    throw v0

    .line 194
    :goto_5
    invoke-static {v6, v7}, Lkotlin/time/h$a;->b(J)Lkotlin/time/h$a;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-direct {v2, v0, v8, v4, v3}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->sendNetworkErrorDiagnosticEvent(Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;ILcom/unity3d/ads/core/data/model/OperationType;Lkotlin/time/TimeMark;)V

    .line 199
    .line 200
    .line 201
    invoke-static {v0}, Lcom/unity3d/services/core/network/model/HttpResponseKt;->toHttpResponse(Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;)Lcom/unity3d/services/core/network/model/HttpResponse;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    :goto_6
    return-object v0
.end method

.method private final executeWithRetry(Ljava/lang/String;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lrs/c;)Ljava/lang/Object;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;",
            "Lcom/unity3d/ads/gatewayclient/RequestPolicy;",
            "Lcom/unity3d/ads/core/data/model/OperationType;",
            "Lrs/c<",
            "-",
            "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p5

    .line 2
    .line 3
    instance-of v1, v0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->label:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;-><init>(Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;Lrs/c;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget v4, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->label:I

    .line 38
    .line 39
    const/4 v5, 0x3

    .line 40
    const/4 v6, 0x2

    .line 41
    const/4 v7, 0x1

    .line 42
    if-eqz v4, :cond_4

    .line 43
    .line 44
    if-eq v4, v7, :cond_3

    .line 45
    .line 46
    if-eq v4, v6, :cond_2

    .line 47
    .line 48
    if-ne v4, v5, :cond_1

    .line 49
    .line 50
    iget-wide v8, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->J$1:J

    .line 51
    .line 52
    iget-wide v10, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->J$0:J

    .line 53
    .line 54
    iget v4, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->I$0:I

    .line 55
    .line 56
    iget-object v12, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$4:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v12, Ljava/lang/String;

    .line 59
    .line 60
    iget-object v13, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$3:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v13, Lcom/unity3d/ads/core/data/model/OperationType;

    .line 63
    .line 64
    iget-object v14, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$2:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v14, Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    .line 67
    .line 68
    iget-object v15, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$1:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v15, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;

    .line 71
    .line 72
    iget-object v5, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$0:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v5, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;

    .line 75
    .line 76
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move v6, v7

    .line 80
    const/4 v0, 0x3

    .line 81
    move-object v7, v3

    .line 82
    move-wide v2, v10

    .line 83
    move-object v10, v13

    .line 84
    move-wide/from16 v27, v8

    .line 85
    .line 86
    move-object v8, v1

    .line 87
    move-object v1, v14

    .line 88
    move-object v14, v5

    .line 89
    move-object v5, v12

    .line 90
    move-wide/from16 v11, v27

    .line 91
    .line 92
    goto/16 :goto_7

    .line 93
    .line 94
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0

    .line 102
    :cond_2
    iget-object v1, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$0:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v1, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    .line 105
    .line 106
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_3

    .line 110
    .line 111
    :cond_3
    iget-wide v4, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->J$1:J

    .line 112
    .line 113
    iget-wide v8, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->J$0:J

    .line 114
    .line 115
    iget v10, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->I$0:I

    .line 116
    .line 117
    iget-object v11, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$4:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v11, Ljava/lang/String;

    .line 120
    .line 121
    iget-object v12, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$3:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v12, Lcom/unity3d/ads/core/data/model/OperationType;

    .line 124
    .line 125
    iget-object v13, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$2:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v13, Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    .line 128
    .line 129
    iget-object v14, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$1:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v14, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;

    .line 132
    .line 133
    iget-object v15, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$0:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v15, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;

    .line 136
    .line 137
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    move-wide/from16 v27, v4

    .line 141
    .line 142
    move v4, v10

    .line 143
    move-object v10, v12

    .line 144
    move-object v5, v15

    .line 145
    move-object v15, v14

    .line 146
    move-object v14, v13

    .line 147
    move-object v13, v11

    .line 148
    move-wide/from16 v11, v27

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_4
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-direct/range {p0 .. p1}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->getGatewayUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    sget-object v4, Lkotlin/time/h;->a:Lkotlin/time/h;

    .line 159
    .line 160
    invoke-virtual {v4}, Lkotlin/time/h;->b()J

    .line 161
    .line 162
    .line 163
    move-result-wide v4

    .line 164
    invoke-virtual/range {p3 .. p3}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getRetryWaitBase()I

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    int-to-long v8, v8

    .line 169
    const/4 v10, 0x0

    .line 170
    move-object v14, v2

    .line 171
    move-wide v11, v8

    .line 172
    move v13, v10

    .line 173
    move-object v8, v1

    .line 174
    move-wide v9, v4

    .line 175
    move-object/from16 v1, p3

    .line 176
    .line 177
    move-object/from16 v4, p4

    .line 178
    .line 179
    move-object v5, v0

    .line 180
    move-object/from16 v0, p2

    .line 181
    .line 182
    :goto_1
    invoke-direct {v14, v13}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->getHeaders(I)Ljava/util/Map;

    .line 183
    .line 184
    .line 185
    move-result-object v15

    .line 186
    invoke-direct {v14, v5, v15, v1, v0}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->buildHttpRequest(Ljava/lang/String;Ljava/util/Map;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;)Lcom/unity3d/services/core/network/model/HttpRequest;

    .line 187
    .line 188
    .line 189
    move-result-object v15

    .line 190
    iput-object v14, v8, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$0:Ljava/lang/Object;

    .line 191
    .line 192
    iput-object v0, v8, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$1:Ljava/lang/Object;

    .line 193
    .line 194
    iput-object v1, v8, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$2:Ljava/lang/Object;

    .line 195
    .line 196
    iput-object v4, v8, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$3:Ljava/lang/Object;

    .line 197
    .line 198
    iput-object v5, v8, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$4:Ljava/lang/Object;

    .line 199
    .line 200
    iput v13, v8, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->I$0:I

    .line 201
    .line 202
    iput-wide v9, v8, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->J$0:J

    .line 203
    .line 204
    iput-wide v11, v8, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->J$1:J

    .line 205
    .line 206
    iput v7, v8, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->label:I

    .line 207
    .line 208
    invoke-direct {v14, v15, v13, v4, v8}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->executeRequest(Lcom/unity3d/services/core/network/model/HttpRequest;ILcom/unity3d/ads/core/data/model/OperationType;Lrs/c;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v15

    .line 212
    if-ne v15, v3, :cond_5

    .line 213
    .line 214
    return-object v3

    .line 215
    :cond_5
    move-object/from16 v27, v15

    .line 216
    .line 217
    move-object v15, v0

    .line 218
    move-object/from16 v0, v27

    .line 219
    .line 220
    move-object/from16 v28, v14

    .line 221
    .line 222
    move-object v14, v1

    .line 223
    move-object v1, v8

    .line 224
    move-wide v8, v9

    .line 225
    move-object v10, v4

    .line 226
    move v4, v13

    .line 227
    move-object v13, v5

    .line 228
    move-object/from16 v5, v28

    .line 229
    .line 230
    :goto_2
    check-cast v0, Lcom/unity3d/services/core/network/model/HttpResponse;

    .line 231
    .line 232
    invoke-static {v0}, Lcom/unity3d/services/core/network/model/HttpResponseKt;->isSuccessful(Lcom/unity3d/services/core/network/model/HttpResponse;)Z

    .line 233
    .line 234
    .line 235
    move-result v16

    .line 236
    const/4 v7, 0x0

    .line 237
    if-eqz v16, :cond_7

    .line 238
    .line 239
    invoke-direct {v5, v0, v10}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->getUniversalResponse(Lcom/unity3d/services/core/network/model/HttpResponse;Lcom/unity3d/ads/core/data/model/OperationType;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iget-object v4, v5, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->handleGatewayUniversalResponse:Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;

    .line 244
    .line 245
    iput-object v0, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$0:Ljava/lang/Object;

    .line 246
    .line 247
    iput-object v7, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$1:Ljava/lang/Object;

    .line 248
    .line 249
    iput-object v7, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$2:Ljava/lang/Object;

    .line 250
    .line 251
    iput-object v7, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$3:Ljava/lang/Object;

    .line 252
    .line 253
    iput-object v7, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$4:Ljava/lang/Object;

    .line 254
    .line 255
    iput v6, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->label:I

    .line 256
    .line 257
    invoke-interface {v4, v0, v1}, Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;->invoke(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;Lrs/c;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    if-ne v1, v3, :cond_6

    .line 262
    .line 263
    return-object v3

    .line 264
    :cond_6
    move-object v1, v0

    .line 265
    :goto_3
    return-object v1

    .line 266
    :cond_7
    invoke-virtual {v0}, Lcom/unity3d/services/core/network/model/HttpResponse;->getStatusCode()I

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    const/16 v7, 0x1ad

    .line 271
    .line 272
    if-ne v6, v7, :cond_8

    .line 273
    .line 274
    invoke-virtual {v0}, Lcom/unity3d/services/core/network/model/HttpResponse;->getHeaders()Ljava/util/Map;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    const-string v7, "Retry-After"

    .line 279
    .line 280
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    check-cast v6, Ljava/util/List;

    .line 285
    .line 286
    if-eqz v6, :cond_8

    .line 287
    .line 288
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    check-cast v6, Ljava/lang/String;

    .line 293
    .line 294
    if-eqz v6, :cond_8

    .line 295
    .line 296
    invoke-static {v6}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Long;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    if-eqz v6, :cond_8

    .line 301
    .line 302
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 303
    .line 304
    .line 305
    move-result-wide v6

    .line 306
    const/16 v2, 0x3e8

    .line 307
    .line 308
    move-object/from16 v18, v3

    .line 309
    .line 310
    int-to-long v2, v2

    .line 311
    mul-long/2addr v6, v2

    .line 312
    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    goto :goto_5

    .line 317
    :goto_4
    const/4 v7, 0x0

    .line 318
    goto :goto_5

    .line 319
    :cond_8
    move-object/from16 v18, v3

    .line 320
    .line 321
    goto :goto_4

    .line 322
    :goto_5
    if-eqz v7, :cond_9

    .line 323
    .line 324
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 325
    .line 326
    .line 327
    move-result-wide v2

    .line 328
    goto :goto_6

    .line 329
    :cond_9
    invoke-direct {v5, v11, v12, v14, v4}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->calculateDelayTime(JLcom/unity3d/ads/gatewayclient/RequestPolicy;I)J

    .line 330
    .line 331
    .line 332
    move-result-wide v2

    .line 333
    :goto_6
    invoke-static {v8, v9}, Lkotlin/time/h$a;->b(J)Lkotlin/time/h$a;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    invoke-static {v6}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    .line 338
    .line 339
    .line 340
    move-result-wide v6

    .line 341
    double-to-long v6, v6

    .line 342
    add-long v11, v6, v2

    .line 343
    .line 344
    invoke-virtual {v0}, Lcom/unity3d/services/core/network/model/HttpResponse;->getStatusCode()I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    move-wide/from16 p1, v6

    .line 349
    .line 350
    invoke-virtual {v14}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getMaxDuration()I

    .line 351
    .line 352
    .line 353
    move-result v6

    .line 354
    invoke-direct {v5, v0, v11, v12, v6}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->shouldRetry(IJI)Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-eqz v0, :cond_b

    .line 359
    .line 360
    iput-object v5, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$0:Ljava/lang/Object;

    .line 361
    .line 362
    iput-object v15, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$1:Ljava/lang/Object;

    .line 363
    .line 364
    iput-object v14, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$2:Ljava/lang/Object;

    .line 365
    .line 366
    iput-object v10, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$3:Ljava/lang/Object;

    .line 367
    .line 368
    iput-object v13, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->L$4:Ljava/lang/Object;

    .line 369
    .line 370
    iput v4, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->I$0:I

    .line 371
    .line 372
    iput-wide v8, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->J$0:J

    .line 373
    .line 374
    iput-wide v2, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->J$1:J

    .line 375
    .line 376
    const/4 v0, 0x3

    .line 377
    iput v0, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$executeWithRetry$1;->label:I

    .line 378
    .line 379
    invoke-static {v2, v3, v1}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v6

    .line 383
    move-object/from16 v7, v18

    .line 384
    .line 385
    if-ne v6, v7, :cond_a

    .line 386
    .line 387
    return-object v7

    .line 388
    :cond_a
    move-wide v11, v2

    .line 389
    move-wide v2, v8

    .line 390
    const/4 v6, 0x1

    .line 391
    move-object v8, v1

    .line 392
    move-object v1, v14

    .line 393
    move-object v14, v5

    .line 394
    move-object v5, v13

    .line 395
    :goto_7
    add-int/lit8 v13, v4, 0x1

    .line 396
    .line 397
    move-object v4, v10

    .line 398
    move-object v0, v15

    .line 399
    move-wide v9, v2

    .line 400
    move-object v3, v7

    .line 401
    move-object/from16 v2, p0

    .line 402
    .line 403
    move v7, v6

    .line 404
    const/4 v6, 0x2

    .line 405
    goto/16 :goto_1

    .line 406
    .line 407
    :cond_b
    new-instance v0, Lcom/unity3d/ads/core/data/model/exception/NetworkTimeoutException;

    .line 408
    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .line 413
    .line 414
    const-string v2, "Gateway request failed after "

    .line 415
    .line 416
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    const-string v2, " retries  currentDuration: "

    .line 423
    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    move-wide/from16 v2, p1

    .line 428
    .line 429
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    const-string v2, "ms maxDuration: "

    .line 433
    .line 434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v14}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getMaxDuration()I

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    const-string v2, "ms"

    .line 445
    .line 446
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v18

    .line 453
    const/16 v25, 0x7e

    .line 454
    .line 455
    const/16 v26, 0x0

    .line 456
    .line 457
    const/16 v19, 0x0

    .line 458
    .line 459
    const/16 v20, 0x0

    .line 460
    .line 461
    const/16 v21, 0x0

    .line 462
    .line 463
    const/16 v22, 0x0

    .line 464
    .line 465
    const/16 v23, 0x0

    .line 466
    .line 467
    const/16 v24, 0x0

    .line 468
    .line 469
    move-object/from16 v17, v0

    .line 470
    .line 471
    invoke-direct/range {v17 .. v26}, Lcom/unity3d/ads/core/data/model/exception/NetworkTimeoutException;-><init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 472
    .line 473
    .line 474
    throw v0
.end method

.method private final getGatewayUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "https://gateway.unityads.unity3d.com/v1"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getGatewayUrl()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    return-object p1
.end method

.method private final getHeaders(I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/collections/p0;->c()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "application/x-protobuf"

    .line 6
    .line 7
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "Content-Type"

    .line 12
    .line 13
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    if-lez p1, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v1, "X-RETRY-ATTEMPT"

    .line 27
    .line 28
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-static {v0}, Lkotlin/collections/p0;->b(Ljava/util/Map;)Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method private final getUniversalResponse(Lcom/unity3d/services/core/network/model/HttpResponse;Lcom/unity3d/ads/core/data/model/OperationType;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;
    .locals 11

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/unity3d/services/core/network/model/HttpResponse;->getBody()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, [B

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, [B

    .line 10
    .line 11
    invoke-static {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->parseFrom([B)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "parseFrom(responseBody)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "this as java.lang.String).getBytes(charset)"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->parseFrom([B)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "parseFrom(\n             \u2026.UTF_8)\n                )"

    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_1
    new-instance v0, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 51
    .line 52
    const-string v1, "Could not parse response from gateway service"

    .line 53
    .line 54
    invoke-direct {v0, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, "Failed to parse response from gateway service with exception: %s"

    .line 67
    .line 68
    invoke-static {v1, v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 72
    .line 73
    const-string v0, "operation"

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/unity3d/ads/core/data/model/OperationType;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-static {v0, p2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    const-string v0, "reason"

    .line 84
    .line 85
    const-string v1, "protobuf_parsing"

    .line 86
    .line 87
    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p1}, Lcom/unity3d/services/core/network/model/HttpResponse;->getBody()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const-string v1, "reason_debug"

    .line 100
    .line 101
    invoke-static {v1, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    filled-new-array {p2, v0, p1}, [Lkotlin/Pair;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {p1}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    const/16 v9, 0x3a

    .line 114
    .line 115
    const/4 v10, 0x0

    .line 116
    const-string v3, "native_network_parse_failure"

    .line 117
    .line 118
    const/4 v4, 0x0

    .line 119
    const/4 v6, 0x0

    .line 120
    const/4 v7, 0x0

    .line 121
    const/4 v8, 0x0

    .line 122
    invoke-static/range {v2 .. v10}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    sget-object p1, Lgatewayprotocol/v1/UniversalResponseKt$Dsl;->Companion:Lgatewayprotocol/v1/UniversalResponseKt$Dsl$Companion;

    .line 126
    .line 127
    invoke-static {}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->newBuilder()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    const-string v0, "newBuilder()"

    .line 132
    .line 133
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/UniversalResponseKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;)Lgatewayprotocol/v1/UniversalResponseKt$Dsl;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    sget-object p2, Lgatewayprotocol/v1/ErrorKt$Dsl;->Companion:Lgatewayprotocol/v1/ErrorKt$Dsl$Companion;

    .line 141
    .line 142
    invoke-static {}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->newBuilder()Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, v1}, Lgatewayprotocol/v1/ErrorKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;)Lgatewayprotocol/v1/ErrorKt$Dsl;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    const-string v0, "ERROR: Could not parse response from gateway service"

    .line 154
    .line 155
    invoke-virtual {p2, v0}, Lgatewayprotocol/v1/ErrorKt$Dsl;->setErrorText(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Lgatewayprotocol/v1/ErrorKt$Dsl;->_build()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/UniversalResponseKt$Dsl;->setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lgatewayprotocol/v1/UniversalResponseKt$Dsl;->_build()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    return-object p1
.end method

.method private final sendNetworkErrorDiagnosticEvent(Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;ILcom/unity3d/ads/core/data/model/OperationType;Lkotlin/time/TimeMark;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/unity3d/ads/core/data/model/OperationType;->UNIVERSAL_EVENT:Lcom/unity3d/ads/core/data/model/OperationType;

    .line 2
    .line 3
    if-ne p3, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "operation"

    .line 7
    .line 8
    invoke-virtual {p3}, Lcom/unity3d/ads/core/data/model/OperationType;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    invoke-static {v0, p3}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string p3, "retries"

    .line 17
    .line 18
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p3, p2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->getProtocol()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const-string p3, "protocol"

    .line 35
    .line 36
    invoke-static {p3, p2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->getClient()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const-string p3, "network_client"

    .line 49
    .line 50
    invoke-static {p3, p2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->getCode()Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    const-string p3, "reason_code"

    .line 63
    .line 64
    invoke-static {p3, p2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const-string p2, "reason_debug"

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->getMessage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p2, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    filled-new-array/range {v1 .. v6}, [Lkotlin/Pair;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iget-object v0, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 87
    .line 88
    invoke-static {p4}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    .line 89
    .line 90
    .line 91
    move-result-wide p1

    .line 92
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const/16 v7, 0x38

    .line 97
    .line 98
    const/4 v8, 0x0

    .line 99
    const-string v1, "native_network_failure_time"

    .line 100
    .line 101
    const/4 v4, 0x0

    .line 102
    const/4 v5, 0x0

    .line 103
    const/4 v6, 0x0

    .line 104
    invoke-static/range {v0 .. v8}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method private final sendNetworkSuccessDiagnosticEvent(Lcom/unity3d/services/core/network/model/HttpResponse;ILcom/unity3d/ads/core/data/model/OperationType;Lkotlin/time/TimeMark;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/unity3d/ads/core/data/model/OperationType;->UNIVERSAL_EVENT:Lcom/unity3d/ads/core/data/model/OperationType;

    .line 2
    .line 3
    if-ne p3, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "operation"

    .line 7
    .line 8
    invoke-virtual {p3}, Lcom/unity3d/ads/core/data/model/OperationType;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    invoke-static {v0, p3}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    const-string v0, "retries"

    .line 17
    .line 18
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {v0, p2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1}, Lcom/unity3d/services/core/network/model/HttpResponse;->getProtocol()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "protocol"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "network_client"

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/unity3d/services/core/network/model/HttpResponse;->getClient()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1}, Lcom/unity3d/services/core/network/model/HttpResponse;->getStatusCode()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v2, "reason_code"

    .line 55
    .line 56
    invoke-static {v2, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    filled-new-array {p3, p2, v0, v1, p1}, [Lkotlin/Pair;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iget-object v0, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 69
    .line 70
    invoke-static {p4}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    .line 71
    .line 72
    .line 73
    move-result-wide p1

    .line 74
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const/16 v7, 0x38

    .line 79
    .line 80
    const/4 v8, 0x0

    .line 81
    const-string v1, "native_network_success_time"

    .line 82
    .line 83
    const/4 v4, 0x0

    .line 84
    const/4 v5, 0x0

    .line 85
    const/4 v6, 0x0

    .line 86
    invoke-static/range {v0 .. v8}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method private final shouldRetry(IJI)Z
    .locals 2

    .line 1
    const/16 v0, 0x190

    .line 2
    .line 3
    if-gt v0, p1, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x258

    .line 6
    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    int-to-long v0, p4

    .line 10
    cmp-long p1, p2, v0

    .line 11
    .line 12
    if-gez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method


# virtual methods
.method public request(Ljava/lang/String;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lrs/c;)Ljava/lang/Object;
    .locals 20
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/gatewayclient/RequestPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/unity3d/ads/core/data/model/OperationType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;",
            "Lcom/unity3d/ads/gatewayclient/RequestPolicy;",
            "Lcom/unity3d/ads/core/data/model/OperationType;",
            "Lrs/c<",
            "-",
            "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p5

    .line 2
    .line 3
    instance-of v1, v0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->label:I

    .line 20
    .line 21
    move-object/from16 v9, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;

    .line 25
    .line 26
    move-object/from16 v9, p0

    .line 27
    .line 28
    invoke-direct {v1, v9, v0}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;-><init>(Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;Lrs/c;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v10

    .line 37
    iget v2, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->label:I

    .line 38
    .line 39
    const/4 v11, 0x1

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    if-ne v2, v11, :cond_1

    .line 43
    .line 44
    iget-object v1, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    .line 47
    .line 48
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sget-object v0, Lkotlin/time/b;->b:Lkotlin/time/b$a;

    .line 64
    .line 65
    invoke-virtual/range {p3 .. p3}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getMaxDuration()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 70
    .line 71
    invoke-static {v0, v2}, Lkotlin/time/c;->s(ILkotlin/time/DurationUnit;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v12

    .line 75
    new-instance v0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;

    .line 76
    .line 77
    const/4 v8, 0x0

    .line 78
    move-object v2, v0

    .line 79
    move-object/from16 v3, p0

    .line 80
    .line 81
    move-object/from16 v4, p1

    .line 82
    .line 83
    move-object/from16 v5, p2

    .line 84
    .line 85
    move-object/from16 v6, p3

    .line 86
    .line 87
    move-object/from16 v7, p4

    .line 88
    .line 89
    invoke-direct/range {v2 .. v8}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;-><init>(Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;Ljava/lang/String;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lrs/c;)V

    .line 90
    .line 91
    .line 92
    move-object/from16 v2, p3

    .line 93
    .line 94
    iput-object v2, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->L$0:Ljava/lang/Object;

    .line 95
    .line 96
    iput v11, v1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$1;->label:I

    .line 97
    .line 98
    invoke-static {v12, v13, v0, v1}, Lkotlinx/coroutines/TimeoutKt;->f(JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-ne v0, v10, :cond_3

    .line 103
    .line 104
    return-object v10

    .line 105
    :cond_3
    move-object v1, v2

    .line 106
    :goto_1
    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    .line 107
    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    return-object v0

    .line 111
    :cond_4
    new-instance v0, Lcom/unity3d/ads/core/data/model/exception/NetworkTimeoutException;

    .line 112
    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v3, "Gateway request timed out after "

    .line 119
    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/unity3d/ads/gatewayclient/RequestPolicy;->getMaxDuration()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v1, "ms"

    .line 131
    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v11

    .line 139
    const/16 v18, 0x7e

    .line 140
    .line 141
    const/16 v19, 0x0

    .line 142
    .line 143
    const/4 v12, 0x0

    .line 144
    const/4 v13, 0x0

    .line 145
    const/4 v14, 0x0

    .line 146
    const/4 v15, 0x0

    .line 147
    const/16 v16, 0x0

    .line 148
    .line 149
    const/16 v17, 0x0

    .line 150
    .line 151
    move-object v10, v0

    .line 152
    invoke-direct/range {v10 .. v19}, Lcom/unity3d/ads/core/data/model/exception/NetworkTimeoutException;-><init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 153
    .line 154
    .line 155
    throw v0
.end method
