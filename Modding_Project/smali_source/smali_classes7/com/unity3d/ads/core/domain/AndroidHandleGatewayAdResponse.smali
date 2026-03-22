.class public final Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;
.super Ljava/lang/Object;
.source "AndroidHandleGatewayAdResponse.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAndroidHandleGatewayAdResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidHandleGatewayAdResponse.kt\ncom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 4 OperativeEventErrorDataKt.kt\ngatewayprotocol/v1/OperativeEventErrorDataKtKt\n*L\n1#1,245:1\n1#2:246\n1#2:260\n79#3,5:247\n113#3,7:252\n10#4:259\n*S KotlinDebug\n*F\n+ 1 AndroidHandleGatewayAdResponse.kt\ncom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse\n*L\n231#1:260\n144#1:247,5\n144#1:252,7\n231#1:259\n*E\n"
    }
.end annotation


# instance fields
.field private final adPlayerScope:Lcom/unity3d/ads/adplayer/AdPlayerScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cacheWebViewAssets:Lcom/unity3d/ads/core/domain/CacheWebViewAssets;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final campaignRepository:Lcom/unity3d/ads/core/data/repository/CampaignRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getAdPlayer:Lcom/unity3d/ads/core/domain/GetAdPlayer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getHandleInvocationsFromAdViewer:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getLatestWebViewConfiguration:Lcom/unity3d/ads/core/domain/GetLatestWebViewConfiguration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getOperativeEventApi:Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getWebViewBridge:Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getWebViewContainerUseCase:Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/repository/CampaignRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/domain/GetLatestWebViewConfiguration;Lcom/unity3d/ads/adplayer/AdPlayerScope;Lcom/unity3d/ads/core/domain/GetAdPlayer;Lcom/unity3d/ads/core/domain/CacheWebViewAssets;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/data/repository/AdRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/unity3d/ads/core/data/repository/CampaignRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/unity3d/ads/core/domain/GetLatestWebViewConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/unity3d/ads/adplayer/AdPlayerScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/unity3d/ads/core/domain/GetAdPlayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Lcom/unity3d/ads/core/domain/CacheWebViewAssets;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "getWebViewContainerUseCase"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "getWebViewBridge"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "deviceInfoRepository"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "getHandleInvocationsFromAdViewer"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "campaignRepository"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "sendDiagnosticEvent"

    .line 32
    .line 33
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "getOperativeEventApi"

    .line 37
    .line 38
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "getLatestWebViewConfiguration"

    .line 42
    .line 43
    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "adPlayerScope"

    .line 47
    .line 48
    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "getAdPlayer"

    .line 52
    .line 53
    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "cacheWebViewAssets"

    .line 57
    .line 58
    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    .line 65
    .line 66
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getWebViewContainerUseCase:Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;

    .line 67
    .line 68
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getWebViewBridge:Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;

    .line 69
    .line 70
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 71
    .line 72
    iput-object p5, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getHandleInvocationsFromAdViewer:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    .line 73
    .line 74
    iput-object p6, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->campaignRepository:Lcom/unity3d/ads/core/data/repository/CampaignRepository;

    .line 75
    .line 76
    iput-object p7, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 77
    .line 78
    iput-object p8, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getOperativeEventApi:Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;

    .line 79
    .line 80
    iput-object p9, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getLatestWebViewConfiguration:Lcom/unity3d/ads/core/domain/GetLatestWebViewConfiguration;

    .line 81
    .line 82
    iput-object p10, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->adPlayerScope:Lcom/unity3d/ads/adplayer/AdPlayerScope;

    .line 83
    .line 84
    iput-object p11, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getAdPlayer:Lcom/unity3d/ads/core/domain/GetAdPlayer;

    .line 85
    .line 86
    iput-object p12, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->cacheWebViewAssets:Lcom/unity3d/ads/core/domain/CacheWebViewAssets;

    .line 87
    .line 88
    return-void
.end method

.method public static final synthetic access$cleanup(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/adplayer/AdPlayer;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->cleanup(Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/adplayer/AdPlayer;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 2
    .line 3
    return-object p0
.end method

.method private final cleanup(Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/adplayer/AdPlayer;Lrs/c;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lcom/google/protobuf/ByteString;",
            "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;",
            "Lcom/unity3d/ads/adplayer/AdPlayer;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p5

    .line 3
    .line 4
    instance-of v2, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    move-object v2, v1

    .line 9
    check-cast v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;

    .line 10
    .line 11
    iget v3, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;->label:I

    .line 12
    .line 13
    const/high16 v4, -0x80000000

    .line 14
    .line 15
    and-int v5, v3, v4

    .line 16
    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    sub-int/2addr v3, v4

    .line 20
    iput v3, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;->label:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;

    .line 24
    .line 25
    invoke-direct {v2, p0, v1}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lrs/c;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v1, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;->result:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v13

    .line 34
    iget v3, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;->label:I

    .line 35
    .line 36
    const/4 v14, 0x2

    .line 37
    const/4 v4, 0x1

    .line 38
    if-eqz v3, :cond_3

    .line 39
    .line 40
    if-eq v3, v4, :cond_2

    .line 41
    .line 42
    if-ne v3, v14, :cond_1

    .line 43
    .line 44
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v1

    .line 57
    :cond_2
    iget-object v3, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;->L$0:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v3, Lcom/unity3d/ads/adplayer/AdPlayer;

    .line 60
    .line 61
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    move-object v1, v3

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    sget-object v1, Lgatewayprotocol/v1/OperativeEventErrorDataKt$Dsl;->Companion:Lgatewayprotocol/v1/OperativeEventErrorDataKt$Dsl$Companion;

    .line 70
    .line 71
    invoke-static {}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;->newBuilder()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const-string v5, "newBuilder()"

    .line 76
    .line 77
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v3}, Lgatewayprotocol/v1/OperativeEventErrorDataKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData$Builder;)Lgatewayprotocol/v1/OperativeEventErrorDataKt$Dsl;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    sget-object v3, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;->OPERATIVE_EVENT_ERROR_TYPE_UNSPECIFIED:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Lgatewayprotocol/v1/OperativeEventErrorDataKt$Dsl;->setErrorType(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    if-eqz v3, :cond_4

    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    if-nez v3, :cond_5

    .line 100
    .line 101
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-nez v3, :cond_5

    .line 106
    .line 107
    const-string v3, ""

    .line 108
    .line 109
    :cond_5
    invoke-virtual {v1, v3}, Lgatewayprotocol/v1/OperativeEventErrorDataKt$Dsl;->setMessage(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Lgatewayprotocol/v1/OperativeEventErrorDataKt$Dsl;->_build()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorData;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iget-object v3, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getOperativeEventApi:Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;

    .line 117
    .line 118
    sget-object v5, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;->OPERATIVE_EVENT_TYPE_LOAD_ERROR:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;

    .line 119
    .line 120
    invoke-virtual/range {p3 .. p3}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getTrackingToken()Lcom/google/protobuf/ByteString;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    const-string v7, "response.trackingToken"

    .line 125
    .line 126
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/google/protobuf/AbstractMessageLite;->toByteString()Lcom/google/protobuf/ByteString;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    const-string v1, "operativeEventErrorData.toByteString()"

    .line 134
    .line 135
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    move-object/from16 v1, p4

    .line 139
    .line 140
    iput-object v1, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;->L$0:Ljava/lang/Object;

    .line 141
    .line 142
    iput v4, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;->label:I

    .line 143
    .line 144
    const/4 v8, 0x0

    .line 145
    const/4 v9, 0x0

    .line 146
    const/16 v11, 0x30

    .line 147
    .line 148
    const/4 v12, 0x0

    .line 149
    move-object v4, v5

    .line 150
    move-object/from16 v5, p2

    .line 151
    .line 152
    move-object v10, v2

    .line 153
    invoke-static/range {v3 .. v12}, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;->invoke$default(Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    if-ne v3, v13, :cond_6

    .line 158
    .line 159
    return-object v13

    .line 160
    :cond_6
    :goto_1
    if-eqz v1, :cond_8

    .line 161
    .line 162
    const/4 v3, 0x0

    .line 163
    iput-object v3, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;->L$0:Ljava/lang/Object;

    .line 164
    .line 165
    iput v14, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$cleanup$1;->label:I

    .line 166
    .line 167
    invoke-interface {v1, v2}, Lcom/unity3d/ads/adplayer/AdPlayer;->destroy(Lrs/c;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    if-ne v1, v13, :cond_7

    .line 172
    .line 173
    return-object v13

    .line 174
    :cond_7
    :goto_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 175
    .line 176
    return-object v1

    .line 177
    :cond_8
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 178
    .line 179
    return-object v1
.end method


# virtual methods
.method public invoke(Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;ZLrs/c;)Ljava/lang/Object;
    .locals 52
    .param p1    # Lcom/unity3d/ads/UnityAdsLoadOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/protobuf/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/UnityAdsLoadOptions;",
            "Lcom/google/protobuf/ByteString;",
            "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;",
            "Z",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/data/model/LoadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p8

    .line 4
    .line 5
    instance-of v2, v0, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I

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
    iput v3, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    iget v3, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I

    .line 36
    .line 37
    const/4 v12, 0x1

    .line 38
    packed-switch v3, :pswitch_data_0

    .line 39
    .line 40
    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :pswitch_0
    iget-object v2, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Ljava/util/concurrent/CancellationException;

    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_11

    .line 57
    .line 58
    :pswitch_1
    iget-object v3, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v3, Lcom/unity3d/ads/adplayer/model/LoadEvent;

    .line 61
    .line 62
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v4, Lcom/unity3d/ads/core/data/model/AdObject;

    .line 65
    .line 66
    iget-object v5, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 69
    .line 70
    iget-object v6, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v6, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    .line 73
    .line 74
    iget-object v7, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v7, Lcom/google/protobuf/ByteString;

    .line 77
    .line 78
    iget-object v8, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v8, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    .line 81
    .line 82
    :try_start_0
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    move-object v12, v9

    .line 86
    goto/16 :goto_d

    .line 87
    .line 88
    :catch_0
    move-exception v0

    .line 89
    move-object v12, v9

    .line 90
    :goto_1
    move-object/from16 v50, v7

    .line 91
    .line 92
    move-object v7, v6

    .line 93
    move-object v6, v8

    .line 94
    move-object/from16 v8, v50

    .line 95
    .line 96
    goto/16 :goto_10

    .line 97
    .line 98
    :pswitch_2
    iget-wide v3, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->J$0:J

    .line 99
    .line 100
    iget-object v5, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v5, Lcom/unity3d/ads/core/data/model/AdObject;

    .line 103
    .line 104
    iget-object v6, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 107
    .line 108
    iget-object v7, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v7, Ljava/lang/String;

    .line 111
    .line 112
    iget-object v8, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v8, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    .line 115
    .line 116
    iget-object v10, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v10, Lcom/google/protobuf/ByteString;

    .line 119
    .line 120
    iget-object v11, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v11, Lcom/unity3d/ads/UnityAdsLoadOptions;

    .line 123
    .line 124
    iget-object v12, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v12, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    .line 127
    .line 128
    :try_start_1
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    .line 130
    .line 131
    move-object v1, v12

    .line 132
    move-object v12, v9

    .line 133
    move-object/from16 v50, v10

    .line 134
    .line 135
    move-object v10, v7

    .line 136
    move-object v7, v8

    .line 137
    move-object/from16 v8, v50

    .line 138
    .line 139
    goto/16 :goto_c

    .line 140
    .line 141
    :catch_1
    move-exception v0

    .line 142
    move-object v5, v6

    .line 143
    move-object v7, v8

    .line 144
    move-object v8, v10

    .line 145
    move-object v6, v12

    .line 146
    :goto_2
    move-object v12, v9

    .line 147
    goto/16 :goto_10

    .line 148
    .line 149
    :pswitch_3
    iget-wide v3, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->J$0:J

    .line 150
    .line 151
    iget-object v5, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$8:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v5, Ljava/lang/String;

    .line 154
    .line 155
    iget-object v6, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$7:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v6, Ljava/lang/String;

    .line 158
    .line 159
    iget-object v7, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v7, Lcom/unity3d/ads/core/data/model/AdObject;

    .line 162
    .line 163
    iget-object v8, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 166
    .line 167
    iget-object v10, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v10, Ljava/lang/String;

    .line 170
    .line 171
    iget-object v14, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v14, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    .line 174
    .line 175
    iget-object v15, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v15, Lcom/google/protobuf/ByteString;

    .line 178
    .line 179
    iget-object v11, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v11, Lcom/unity3d/ads/UnityAdsLoadOptions;

    .line 182
    .line 183
    iget-object v13, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v13, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    .line 186
    .line 187
    :try_start_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    .line 189
    .line 190
    goto/16 :goto_7

    .line 191
    .line 192
    :catchall_0
    move-exception v0

    .line 193
    move-object v12, v0

    .line 194
    move-object v0, v5

    .line 195
    move-object v1, v7

    .line 196
    move-object v5, v8

    .line 197
    move-object v7, v14

    .line 198
    move-object v8, v15

    .line 199
    goto/16 :goto_8

    .line 200
    .line 201
    :pswitch_4
    iget-object v3, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$7:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v3, Lcom/unity3d/ads/core/data/model/AdObject;

    .line 204
    .line 205
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v4, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;

    .line 208
    .line 209
    iget-object v5, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 212
    .line 213
    iget-object v6, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v6, Ljava/lang/String;

    .line 216
    .line 217
    iget-object v7, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v7, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    .line 220
    .line 221
    iget-object v8, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v8, Lcom/google/protobuf/ByteString;

    .line 224
    .line 225
    iget-object v11, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v11, Lcom/unity3d/ads/UnityAdsLoadOptions;

    .line 228
    .line 229
    iget-object v13, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast v13, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    .line 232
    .line 233
    :try_start_3
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2

    .line 234
    .line 235
    .line 236
    move-object v10, v6

    .line 237
    goto/16 :goto_5

    .line 238
    .line 239
    :catch_2
    move-exception v0

    .line 240
    move-object v12, v9

    .line 241
    :goto_3
    move-object v6, v13

    .line 242
    goto/16 :goto_10

    .line 243
    .line 244
    :pswitch_5
    iget-boolean v3, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->Z$0:Z

    .line 245
    .line 246
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    .line 247
    .line 248
    move-object v5, v4

    .line 249
    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 250
    .line 251
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v4, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    .line 254
    .line 255
    iget-object v6, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast v6, Ljava/lang/String;

    .line 258
    .line 259
    iget-object v7, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v7, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    .line 262
    .line 263
    iget-object v8, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v8, Lcom/google/protobuf/ByteString;

    .line 266
    .line 267
    iget-object v11, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v11, Lcom/unity3d/ads/UnityAdsLoadOptions;

    .line 270
    .line 271
    iget-object v13, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast v13, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;

    .line 274
    .line 275
    :try_start_4
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_2

    .line 276
    .line 277
    .line 278
    move/from16 v30, v3

    .line 279
    .line 280
    move-object/from16 v31, v4

    .line 281
    .line 282
    move-object v15, v6

    .line 283
    goto/16 :goto_4

    .line 284
    .line 285
    :pswitch_6
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 289
    .line 290
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 291
    .line 292
    .line 293
    :try_start_5
    invoke-virtual/range {p3 .. p3}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->hasError()Z

    .line 294
    .line 295
    .line 296
    move-result v0
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_b

    .line 297
    if-eqz v0, :cond_1

    .line 298
    .line 299
    :try_start_6
    new-instance v0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 300
    .line 301
    sget-object v14, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    .line 302
    .line 303
    const-string v15, "[UnityAds] Internal communication failure"

    .line 304
    .line 305
    const-string v17, "gateway"

    .line 306
    .line 307
    invoke-virtual/range {p3 .. p3}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    invoke-virtual {v3}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorText()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v18

    .line 315
    const/16 v20, 0x24

    .line 316
    .line 317
    const/16 v21, 0x0

    .line 318
    .line 319
    const/16 v16, 0x0

    .line 320
    .line 321
    const/16 v19, 0x0

    .line 322
    .line 323
    move-object v13, v0

    .line 324
    invoke-direct/range {v13 .. v21}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_3

    .line 325
    .line 326
    .line 327
    return-object v0

    .line 328
    :catch_3
    move-exception v0

    .line 329
    move-object/from16 v8, p2

    .line 330
    .line 331
    move-object/from16 v7, p3

    .line 332
    .line 333
    move-object v6, v1

    .line 334
    move-object v12, v9

    .line 335
    move-object v5, v11

    .line 336
    goto/16 :goto_10

    .line 337
    .line 338
    :cond_1
    :try_start_7
    invoke-virtual/range {p3 .. p3}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getAdData()Lcom/google/protobuf/ByteString;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 343
    .line 344
    .line 345
    move-result v0
    :try_end_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_b

    .line 346
    if-eqz v0, :cond_2

    .line 347
    .line 348
    :try_start_8
    new-instance v0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 349
    .line 350
    sget-object v14, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->NO_FILL:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    .line 351
    .line 352
    const-string v15, "[UnityAds] No fill"

    .line 353
    .line 354
    const-string v17, "no_fill"

    .line 355
    .line 356
    const/16 v20, 0x34

    .line 357
    .line 358
    const/16 v21, 0x0

    .line 359
    .line 360
    const/16 v16, 0x0

    .line 361
    .line 362
    const/16 v18, 0x0

    .line 363
    .line 364
    const/16 v19, 0x0

    .line 365
    .line 366
    move-object v13, v0

    .line 367
    invoke-direct/range {v13 .. v21}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_3

    .line 368
    .line 369
    .line 370
    return-object v0

    .line 371
    :cond_2
    :try_start_9
    iget-object v3, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getLatestWebViewConfiguration:Lcom/unity3d/ads/core/domain/GetLatestWebViewConfiguration;

    .line 372
    .line 373
    invoke-virtual/range {p3 .. p3}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getWebviewConfiguration()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getEntryPoint()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    invoke-virtual/range {p3 .. p3}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getWebviewConfiguration()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getVersion()I

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    invoke-virtual/range {p3 .. p3}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getWebviewConfiguration()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getAdditionalFilesList()Ljava/util/List;

    .line 398
    .line 399
    .line 400
    move-result-object v6

    .line 401
    invoke-virtual/range {p3 .. p3}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getWebviewConfiguration()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-virtual {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getType()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v7

    .line 409
    iput-object v1, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    .line 410
    .line 411
    move-object/from16 v0, p1

    .line 412
    .line 413
    iput-object v0, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;
    :try_end_9
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_9} :catch_b

    .line 414
    .line 415
    move-object/from16 v13, p2

    .line 416
    .line 417
    :try_start_a
    iput-object v13, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;
    :try_end_a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_a} :catch_a

    .line 418
    .line 419
    move-object/from16 v14, p3

    .line 420
    .line 421
    :try_start_b
    iput-object v14, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    .line 422
    .line 423
    move-object/from16 v15, p5

    .line 424
    .line 425
    iput-object v15, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    .line 426
    .line 427
    move-object/from16 v8, p6

    .line 428
    .line 429
    iput-object v8, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    .line 430
    .line 431
    iput-object v11, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    .line 432
    .line 433
    move/from16 v10, p7

    .line 434
    .line 435
    iput-boolean v10, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->Z$0:Z

    .line 436
    .line 437
    iput v12, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I

    .line 438
    .line 439
    move-object v8, v2

    .line 440
    invoke-virtual/range {v3 .. v8}, Lcom/unity3d/ads/core/domain/GetLatestWebViewConfiguration;->invoke(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v3
    :try_end_b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b .. :try_end_b} :catch_9

    .line 444
    if-ne v3, v9, :cond_3

    .line 445
    .line 446
    return-object v9

    .line 447
    :cond_3
    move-object/from16 v31, p6

    .line 448
    .line 449
    move/from16 v30, v10

    .line 450
    .line 451
    move-object v5, v11

    .line 452
    move-object v8, v13

    .line 453
    move-object v7, v14

    .line 454
    move-object v11, v0

    .line 455
    move-object v13, v1

    .line 456
    move-object v0, v3

    .line 457
    :goto_4
    :try_start_c
    move-object v4, v0

    .line 458
    check-cast v4, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;

    .line 459
    .line 460
    invoke-virtual {v7}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getTrackingToken()Lcom/google/protobuf/ByteString;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    new-instance v3, Lcom/unity3d/ads/core/data/model/AdObject;

    .line 465
    .line 466
    const-string v6, "trackingToken"

    .line 467
    .line 468
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    const v34, 0xc7f8

    .line 472
    .line 473
    .line 474
    const/16 v35, 0x0

    .line 475
    .line 476
    const/16 v21, 0x0

    .line 477
    .line 478
    const/16 v22, 0x0

    .line 479
    .line 480
    const/16 v23, 0x0

    .line 481
    .line 482
    const/16 v24, 0x0

    .line 483
    .line 484
    const/16 v25, 0x0

    .line 485
    .line 486
    const/16 v26, 0x0

    .line 487
    .line 488
    const/16 v27, 0x0

    .line 489
    .line 490
    const/16 v28, 0x0

    .line 491
    .line 492
    const/16 v32, 0x0

    .line 493
    .line 494
    const/16 v33, 0x0

    .line 495
    .line 496
    move-object/from16 v17, v3

    .line 497
    .line 498
    move-object/from16 v18, v8

    .line 499
    .line 500
    move-object/from16 v19, v15

    .line 501
    .line 502
    move-object/from16 v20, v0

    .line 503
    .line 504
    move-object/from16 v29, v11

    .line 505
    .line 506
    invoke-direct/range {v17 .. v35}, Lcom/unity3d/ads/core/data/model/AdObject;-><init>(Lcom/google/protobuf/ByteString;Ljava/lang/String;Lcom/google/protobuf/ByteString;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/unity3d/ads/adplayer/AdPlayer;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;ZLgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lkt/e;Lkt/e;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 507
    .line 508
    .line 509
    iget-object v0, v13, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->cacheWebViewAssets:Lcom/unity3d/ads/core/domain/CacheWebViewAssets;

    .line 510
    .line 511
    iput-object v13, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    .line 512
    .line 513
    iput-object v11, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    .line 514
    .line 515
    iput-object v8, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    .line 516
    .line 517
    iput-object v7, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    .line 518
    .line 519
    iput-object v15, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    .line 520
    .line 521
    iput-object v5, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    .line 522
    .line 523
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    .line 524
    .line 525
    iput-object v3, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$7:Ljava/lang/Object;

    .line 526
    .line 527
    const/4 v6, 0x2

    .line 528
    iput v6, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I

    .line 529
    .line 530
    invoke-interface {v0, v4, v2}, Lcom/unity3d/ads/core/domain/CacheWebViewAssets;->invoke(Lcom/unity3d/ads/core/data/model/WebViewConfiguration;Lrs/c;)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    if-ne v0, v9, :cond_4

    .line 535
    .line 536
    return-object v9

    .line 537
    :cond_4
    move-object v10, v15

    .line 538
    :goto_5
    invoke-virtual {v4}, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;->getEntryPoint()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 543
    .line 544
    .line 545
    move-result v0

    .line 546
    if-nez v0, :cond_5

    .line 547
    .line 548
    new-instance v0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 549
    .line 550
    sget-object v18, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    .line 551
    .line 552
    const-string v19, "[UnityAds] Internal communication failure"

    .line 553
    .line 554
    const-string v21, "no_webview_entry_point"

    .line 555
    .line 556
    const/16 v24, 0x34

    .line 557
    .line 558
    const/16 v25, 0x0

    .line 559
    .line 560
    const/16 v20, 0x0

    .line 561
    .line 562
    const/16 v22, 0x0

    .line 563
    .line 564
    const/16 v23, 0x0

    .line 565
    .line 566
    move-object/from16 v17, v0

    .line 567
    .line 568
    invoke-direct/range {v17 .. v25}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 569
    .line 570
    .line 571
    return-object v0

    .line 572
    :cond_5
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getConfigUrl()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    const-string v6, "it"

    .line 577
    .line 578
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    const-string v6, ".html"

    .line 582
    .line 583
    const/4 v12, 0x0

    .line 584
    const/4 v14, 0x2

    .line 585
    const/4 v15, 0x0

    .line 586
    invoke-static {v0, v6, v15, v14, v12}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    move-result v6

    .line 590
    if-eqz v6, :cond_6

    .line 591
    .line 592
    goto :goto_6

    .line 593
    :cond_6
    const/4 v0, 0x0

    .line 594
    :goto_6
    if-nez v0, :cond_7

    .line 595
    .line 596
    invoke-virtual {v4}, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;->getEntryPoint()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v0
    :try_end_c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c .. :try_end_c} :catch_2

    .line 600
    :cond_7
    :try_start_d
    new-instance v6, Ljava/net/URI;

    .line 601
    .line 602
    invoke-direct {v6, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 603
    .line 604
    .line 605
    :try_start_e
    new-instance v12, Ljava/lang/StringBuilder;

    .line 606
    .line 607
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    .line 609
    .line 610
    const-string v14, "?platform=android&mode=ad-viewer&webviewType="

    .line 611
    .line 612
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v4}, Lcom/unity3d/ads/core/data/model/WebViewConfiguration;->getType()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v4

    .line 619
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    const/16 v4, 0x26

    .line 623
    .line 624
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {v6}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v4

    .line 631
    if-nez v4, :cond_8

    .line 632
    .line 633
    const-string v4, ""

    .line 634
    .line 635
    :cond_8
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v4

    .line 642
    new-instance v6, Ljava/lang/StringBuilder;

    .line 643
    .line 644
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 645
    .line 646
    .line 647
    const-string v12, "?"

    .line 648
    .line 649
    const/4 v14, 0x2

    .line 650
    const/4 v15, 0x0

    .line 651
    invoke-static {v0, v12, v15, v14, v15}, Lkotlin/text/StringsKt;->t1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v6

    .line 665
    invoke-virtual {v7}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getImpressionConfiguration()Lcom/google/protobuf/ByteString;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    const/4 v4, 0x2

    .line 674
    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v4

    .line 678
    sget-object v0, Lkotlin/time/h;->a:Lkotlin/time/h;

    .line 679
    .line 680
    invoke-virtual {v0}, Lkotlin/time/h;->b()J

    .line 681
    .line 682
    .line 683
    move-result-wide v14
    :try_end_e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_e .. :try_end_e} :catch_2

    .line 684
    :try_start_f
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 685
    .line 686
    iget-object v0, v13, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getWebViewContainerUseCase:Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;

    .line 687
    .line 688
    iget-object v12, v13, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->adPlayerScope:Lcom/unity3d/ads/adplayer/AdPlayerScope;

    .line 689
    .line 690
    iput-object v13, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    .line 691
    .line 692
    iput-object v11, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    .line 693
    .line 694
    iput-object v8, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    .line 695
    .line 696
    iput-object v7, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    .line 697
    .line 698
    iput-object v10, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    .line 699
    .line 700
    iput-object v5, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    .line 701
    .line 702
    iput-object v3, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    .line 703
    .line 704
    iput-object v6, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$7:Ljava/lang/Object;

    .line 705
    .line 706
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$8:Ljava/lang/Object;

    .line 707
    .line 708
    iput-wide v14, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->J$0:J

    .line 709
    .line 710
    const/4 v1, 0x3

    .line 711
    iput v1, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I

    .line 712
    .line 713
    invoke-virtual {v0, v12, v2}, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 714
    .line 715
    .line 716
    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 717
    if-ne v0, v9, :cond_9

    .line 718
    .line 719
    return-object v9

    .line 720
    :cond_9
    move-object/from16 v50, v7

    .line 721
    .line 722
    move-object v7, v3

    .line 723
    move-object/from16 v51, v5

    .line 724
    .line 725
    move-object v5, v4

    .line 726
    move-wide v3, v14

    .line 727
    move-object/from16 v14, v50

    .line 728
    .line 729
    move-object v15, v8

    .line 730
    move-object/from16 v8, v51

    .line 731
    .line 732
    :goto_7
    :try_start_10
    check-cast v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    .line 733
    .line 734
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 738
    move-object/from16 v21, v6

    .line 739
    .line 740
    move-object v1, v10

    .line 741
    move-object v6, v13

    .line 742
    move-object v10, v7

    .line 743
    move-object v7, v14

    .line 744
    move-object v14, v5

    .line 745
    move-object v5, v8

    .line 746
    move-object v8, v15

    .line 747
    move-object v15, v11

    .line 748
    goto :goto_9

    .line 749
    :catchall_1
    move-exception v0

    .line 750
    move-object v12, v0

    .line 751
    move-object v1, v3

    .line 752
    move-object v0, v4

    .line 753
    move-wide v3, v14

    .line 754
    :goto_8
    :try_start_11
    sget-object v14, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 755
    .line 756
    invoke-static {v12}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 757
    .line 758
    .line 759
    move-result-object v12

    .line 760
    invoke-static {v12}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v12
    :try_end_11
    .catch Ljava/util/concurrent/CancellationException; {:try_start_11 .. :try_end_11} :catch_2

    .line 764
    move-object v14, v0

    .line 765
    move-object/from16 v21, v6

    .line 766
    .line 767
    move-object v15, v11

    .line 768
    move-object v0, v12

    .line 769
    move-object v6, v13

    .line 770
    move-object/from16 v50, v10

    .line 771
    .line 772
    move-object v10, v1

    .line 773
    move-object/from16 v1, v50

    .line 774
    .line 775
    :goto_9
    :try_start_12
    invoke-static {v0}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 776
    .line 777
    .line 778
    move-result-object v0

    .line 779
    new-instance v11, Let/c;

    .line 780
    .line 781
    invoke-static {v3, v4}, Lkotlin/time/h$a;->f(J)J

    .line 782
    .line 783
    .line 784
    move-result-wide v3

    .line 785
    const/4 v12, 0x0

    .line 786
    invoke-direct {v11, v0, v3, v4, v12}, Let/c;-><init>(Ljava/lang/Object;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 787
    .line 788
    .line 789
    invoke-virtual {v11}, Let/c;->a()Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object v0

    .line 793
    check-cast v0, Lkotlin/Result;

    .line 794
    .line 795
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object v0

    .line 799
    invoke-virtual {v11}, Let/c;->b()J

    .line 800
    .line 801
    .line 802
    move-result-wide v3

    .line 803
    iget-object v12, v6, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 804
    .line 805
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 806
    .line 807
    .line 808
    move-result v0

    .line 809
    if-eqz v0, :cond_a

    .line 810
    .line 811
    const-string v0, "native_webview_success_time"

    .line 812
    .line 813
    :goto_a
    move-object/from16 v23, v0

    .line 814
    .line 815
    goto :goto_b

    .line 816
    :catch_4
    move-exception v0

    .line 817
    goto/16 :goto_2

    .line 818
    .line 819
    :cond_a
    const-string v0, "native_webview_failure_time"

    .line 820
    .line 821
    goto :goto_a

    .line 822
    :goto_b
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 823
    .line 824
    invoke-static {v3, v4, v0}, Lkotlin/time/b;->H(JLkotlin/time/DurationUnit;)D

    .line 825
    .line 826
    .line 827
    move-result-wide v3

    .line 828
    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/a;->b(D)Ljava/lang/Double;

    .line 829
    .line 830
    .line 831
    move-result-object v24

    .line 832
    const/16 v29, 0x2c

    .line 833
    .line 834
    const/16 v30, 0x0

    .line 835
    .line 836
    const/16 v25, 0x0

    .line 837
    .line 838
    const/16 v26, 0x0

    .line 839
    .line 840
    const/16 v28, 0x0

    .line 841
    .line 842
    move-object/from16 v22, v12

    .line 843
    .line 844
    move-object/from16 v27, v10

    .line 845
    .line 846
    invoke-static/range {v22 .. v30}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 847
    .line 848
    .line 849
    invoke-virtual {v11}, Let/c;->c()Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    check-cast v0, Lkotlin/Result;

    .line 854
    .line 855
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 860
    .line 861
    .line 862
    check-cast v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    .line 863
    .line 864
    iget-object v3, v6, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getWebViewBridge:Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;

    .line 865
    .line 866
    iget-object v4, v6, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->adPlayerScope:Lcom/unity3d/ads/adplayer/AdPlayerScope;

    .line 867
    .line 868
    invoke-interface {v3, v0, v4}, Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;->invoke(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lgt/g0;)Lcom/unity3d/ads/adplayer/WebViewBridge;

    .line 869
    .line 870
    .line 871
    move-result-object v3

    .line 872
    iget-object v4, v6, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getAdPlayer:Lcom/unity3d/ads/core/domain/GetAdPlayer;

    .line 873
    .line 874
    invoke-interface {v4, v3, v0, v8}, Lcom/unity3d/ads/core/domain/GetAdPlayer;->invoke(Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lcom/google/protobuf/ByteString;)Lcom/unity3d/ads/adplayer/AdPlayer;

    .line 875
    .line 876
    .line 877
    move-result-object v4

    .line 878
    iput-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 879
    .line 880
    move-object/from16 v32, v4

    .line 881
    .line 882
    check-cast v32, Lcom/unity3d/ads/adplayer/AdPlayer;

    .line 883
    .line 884
    const v39, 0xfdff

    .line 885
    .line 886
    .line 887
    const/16 v40, 0x0

    .line 888
    .line 889
    const/16 v23, 0x0

    .line 890
    .line 891
    const/16 v24, 0x0

    .line 892
    .line 893
    const/16 v25, 0x0

    .line 894
    .line 895
    const/16 v26, 0x0

    .line 896
    .line 897
    const/16 v27, 0x0

    .line 898
    .line 899
    const/16 v28, 0x0

    .line 900
    .line 901
    const/16 v29, 0x0

    .line 902
    .line 903
    const/16 v30, 0x0

    .line 904
    .line 905
    const/16 v31, 0x0

    .line 906
    .line 907
    const/16 v33, 0x0

    .line 908
    .line 909
    const/16 v34, 0x0

    .line 910
    .line 911
    const/16 v35, 0x0

    .line 912
    .line 913
    const/16 v36, 0x0

    .line 914
    .line 915
    const/16 v37, 0x0

    .line 916
    .line 917
    const/16 v38, 0x0

    .line 918
    .line 919
    move-object/from16 v22, v10

    .line 920
    .line 921
    invoke-static/range {v22 .. v40}, Lcom/unity3d/ads/core/data/model/AdObject;->copy$default(Lcom/unity3d/ads/core/data/model/AdObject;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lcom/google/protobuf/ByteString;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/unity3d/ads/adplayer/AdPlayer;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;ZLgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lkt/e;Lkt/e;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/AdObject;

    .line 922
    .line 923
    .line 924
    move-result-object v4

    .line 925
    iget-object v11, v6, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 926
    .line 927
    invoke-interface {v11}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getAllowedPii()Lkt/e;

    .line 928
    .line 929
    .line 930
    move-result-object v11

    .line 931
    new-instance v12, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;

    .line 932
    .line 933
    const/4 v13, 0x0

    .line 934
    invoke-direct {v12, v5, v13}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V

    .line 935
    .line 936
    .line 937
    invoke-static {v11, v12}, Lkotlinx/coroutines/flow/c;->O(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 938
    .line 939
    .line 940
    move-result-object v11

    .line 941
    iget-object v12, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 942
    .line 943
    check-cast v12, Lcom/unity3d/ads/adplayer/AdPlayer;

    .line 944
    .line 945
    invoke-interface {v12}, Lcom/unity3d/ads/adplayer/AdPlayer;->getScope()Lgt/g0;

    .line 946
    .line 947
    .line 948
    move-result-object v12

    .line 949
    invoke-static {v11, v12}, Lkotlinx/coroutines/flow/c;->J(Lkt/b;Lgt/g0;)Lkotlinx/coroutines/r;

    .line 950
    .line 951
    .line 952
    sget-object v11, Lkotlin/time/h;->a:Lkotlin/time/h;

    .line 953
    .line 954
    invoke-virtual {v11}, Lkotlin/time/h;->b()J

    .line 955
    .line 956
    .line 957
    move-result-wide v12

    .line 958
    iget-object v11, v6, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 959
    .line 960
    const-string v42, "native_load_started_ad_viewer"

    .line 961
    .line 962
    const/16 v48, 0x2e

    .line 963
    .line 964
    const/16 v49, 0x0

    .line 965
    .line 966
    const/16 v43, 0x0

    .line 967
    .line 968
    const/16 v44, 0x0

    .line 969
    .line 970
    const/16 v45, 0x0

    .line 971
    .line 972
    const/16 v47, 0x0

    .line 973
    .line 974
    move-object/from16 v41, v11

    .line 975
    .line 976
    move-object/from16 v46, v4

    .line 977
    .line 978
    invoke-static/range {v41 .. v49}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 979
    .line 980
    .line 981
    iget-object v11, v6, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->getHandleInvocationsFromAdViewer:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    .line 982
    .line 983
    invoke-interface {v3}, Lcom/unity3d/ads/adplayer/WebViewBridge;->getOnInvocation()Lkt/f;

    .line 984
    .line 985
    .line 986
    move-result-object v3

    .line 987
    move-wide/from16 p1, v12

    .line 988
    .line 989
    invoke-virtual {v7}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getAdData()Lcom/google/protobuf/ByteString;

    .line 990
    .line 991
    .line 992
    move-result-object v12

    .line 993
    const-string v13, "response.adData"

    .line 994
    .line 995
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_12 .. :try_end_12} :catch_4

    .line 996
    .line 997
    .line 998
    move-object/from16 p4, v9

    .line 999
    .line 1000
    move-object/from16 p3, v15

    .line 1001
    .line 1002
    const/4 v9, 0x0

    .line 1003
    const/4 v13, 0x0

    .line 1004
    const/4 v15, 0x1

    .line 1005
    :try_start_13
    invoke-static {v12, v13, v15, v9}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toBase64$default(Lcom/google/protobuf/ByteString;ZILjava/lang/Object;)Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v12

    .line 1009
    invoke-virtual {v7}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getAdDataRefreshToken()Lcom/google/protobuf/ByteString;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v9

    .line 1013
    const-string v13, "response.adDataRefreshToken"

    .line 1014
    .line 1015
    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1016
    .line 1017
    .line 1018
    move-object/from16 v17, v1

    .line 1019
    .line 1020
    const/4 v1, 0x0

    .line 1021
    const/4 v13, 0x0

    .line 1022
    invoke-static {v9, v13, v15, v1}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toBase64$default(Lcom/google/protobuf/ByteString;ZILjava/lang/Object;)Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v13

    .line 1026
    const-string v1, "base64ImpressionConfiguration"

    .line 1027
    .line 1028
    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1029
    .line 1030
    .line 1031
    new-instance v16, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$3;

    .line 1032
    .line 1033
    const/16 v23, 0x0

    .line 1034
    .line 1035
    move-object/from16 v18, v16

    .line 1036
    .line 1037
    move-object/from16 v19, v6

    .line 1038
    .line 1039
    move-object/from16 v20, v0

    .line 1040
    .line 1041
    move-object/from16 v22, v10

    .line 1042
    .line 1043
    invoke-direct/range {v18 .. v23}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$3;-><init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lrs/c;)V

    .line 1044
    .line 1045
    .line 1046
    move-object v10, v11

    .line 1047
    move-object v11, v3

    .line 1048
    move-wide/from16 v0, p1

    .line 1049
    .line 1050
    move-object/from16 v3, p3

    .line 1051
    .line 1052
    move-object v15, v4

    .line 1053
    invoke-virtual/range {v10 .. v16}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke(Lkt/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/jvm/functions/Function1;)Lkt/b;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v9

    .line 1057
    iget-object v10, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1058
    .line 1059
    check-cast v10, Lcom/unity3d/ads/adplayer/AdPlayer;

    .line 1060
    .line 1061
    invoke-interface {v10}, Lcom/unity3d/ads/adplayer/AdPlayer;->getScope()Lgt/g0;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v10

    .line 1065
    invoke-static {v9, v10}, Lkotlinx/coroutines/flow/c;->J(Lkt/b;Lgt/g0;)Lkotlinx/coroutines/r;

    .line 1066
    .line 1067
    .line 1068
    iget-object v9, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1069
    .line 1070
    check-cast v9, Lcom/unity3d/ads/adplayer/AdPlayer;

    .line 1071
    .line 1072
    invoke-interface {v9}, Lcom/unity3d/ads/adplayer/AdPlayer;->getOnLoadEvent()Lkt/b;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v9

    .line 1076
    iput-object v6, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    .line 1077
    .line 1078
    iput-object v3, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    .line 1079
    .line 1080
    iput-object v8, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    .line 1081
    .line 1082
    iput-object v7, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    .line 1083
    .line 1084
    move-object/from16 v10, v17

    .line 1085
    .line 1086
    iput-object v10, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    .line 1087
    .line 1088
    iput-object v5, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    .line 1089
    .line 1090
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    .line 1091
    .line 1092
    const/4 v11, 0x0

    .line 1093
    iput-object v11, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$7:Ljava/lang/Object;

    .line 1094
    .line 1095
    iput-object v11, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$8:Ljava/lang/Object;

    .line 1096
    .line 1097
    iput-wide v0, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->J$0:J

    .line 1098
    .line 1099
    const/4 v11, 0x4

    .line 1100
    iput v11, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I

    .line 1101
    .line 1102
    invoke-static {v9, v2}, Lkotlinx/coroutines/flow/c;->S(Lkt/b;Lrs/c;)Ljava/lang/Object;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v9
    :try_end_13
    .catch Ljava/util/concurrent/CancellationException; {:try_start_13 .. :try_end_13} :catch_7

    .line 1106
    move-object/from16 v12, p4

    .line 1107
    .line 1108
    if-ne v9, v12, :cond_b

    .line 1109
    .line 1110
    return-object v12

    .line 1111
    :cond_b
    move-object v11, v3

    .line 1112
    move-object/from16 v50, v5

    .line 1113
    .line 1114
    move-object v5, v4

    .line 1115
    move-wide v3, v0

    .line 1116
    move-object v1, v6

    .line 1117
    move-object v0, v9

    .line 1118
    move-object/from16 v6, v50

    .line 1119
    .line 1120
    :goto_c
    :try_start_14
    check-cast v0, Lcom/unity3d/ads/adplayer/model/LoadEvent;

    .line 1121
    .line 1122
    instance-of v9, v0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;

    .line 1123
    .line 1124
    if-eqz v9, :cond_d

    .line 1125
    .line 1126
    iget-object v13, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 1127
    .line 1128
    const-string v14, "native_create_ad_object_failure_time"

    .line 1129
    .line 1130
    invoke-static {v3, v4}, Lkotlin/time/h$a;->b(J)Lkotlin/time/h$a;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v3

    .line 1134
    invoke-static {v3}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    .line 1135
    .line 1136
    .line 1137
    move-result-wide v3

    .line 1138
    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/a;->b(D)Ljava/lang/Double;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v15

    .line 1142
    const/16 v20, 0x2c

    .line 1143
    .line 1144
    const/16 v21, 0x0

    .line 1145
    .line 1146
    const/16 v16, 0x0

    .line 1147
    .line 1148
    const/16 v17, 0x0

    .line 1149
    .line 1150
    const/16 v19, 0x0

    .line 1151
    .line 1152
    move-object/from16 v18, v5

    .line 1153
    .line 1154
    invoke-static/range {v13 .. v21}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 1155
    .line 1156
    .line 1157
    sget-object v3, Lkotlinx/coroutines/v;->a:Lkotlinx/coroutines/v;

    .line 1158
    .line 1159
    new-instance v4, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;

    .line 1160
    .line 1161
    const/4 v9, 0x0

    .line 1162
    move-object/from16 p1, v4

    .line 1163
    .line 1164
    move-object/from16 p2, v1

    .line 1165
    .line 1166
    move-object/from16 p3, v0

    .line 1167
    .line 1168
    move-object/from16 p4, v8

    .line 1169
    .line 1170
    move-object/from16 p5, v7

    .line 1171
    .line 1172
    move-object/from16 p6, v6

    .line 1173
    .line 1174
    move-object/from16 p7, v9

    .line 1175
    .line 1176
    invoke-direct/range {p1 .. p7}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$4;-><init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Lcom/unity3d/ads/adplayer/model/LoadEvent;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V

    .line 1177
    .line 1178
    .line 1179
    iput-object v1, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    .line 1180
    .line 1181
    iput-object v8, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    .line 1182
    .line 1183
    iput-object v7, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    .line 1184
    .line 1185
    iput-object v6, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    .line 1186
    .line 1187
    iput-object v5, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    .line 1188
    .line 1189
    iput-object v0, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    .line 1190
    .line 1191
    const/4 v9, 0x0

    .line 1192
    iput-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    .line 1193
    .line 1194
    const/4 v9, 0x5

    .line 1195
    iput v9, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I

    .line 1196
    .line 1197
    invoke-static {v3, v4, v2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v3
    :try_end_14
    .catch Ljava/util/concurrent/CancellationException; {:try_start_14 .. :try_end_14} :catch_6

    .line 1201
    if-ne v3, v12, :cond_c

    .line 1202
    .line 1203
    return-object v12

    .line 1204
    :cond_c
    move-object v3, v0

    .line 1205
    move-object v4, v5

    .line 1206
    move-object v5, v6

    .line 1207
    move-object v6, v7

    .line 1208
    move-object v7, v8

    .line 1209
    move-object v8, v1

    .line 1210
    :goto_d
    :try_start_15
    new-instance v0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 1211
    .line 1212
    sget-object v14, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    .line 1213
    .line 1214
    const-string v15, "Internal error"

    .line 1215
    .line 1216
    const-string v17, "adviewer"

    .line 1217
    .line 1218
    check-cast v3, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;

    .line 1219
    .line 1220
    invoke-virtual {v3}, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->getMessage()Ljava/lang/String;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v18

    .line 1224
    invoke-virtual {v4}, Lcom/unity3d/ads/core/data/model/AdObject;->isScarAd()Z

    .line 1225
    .line 1226
    .line 1227
    move-result v19

    .line 1228
    const/16 v20, 0x4

    .line 1229
    .line 1230
    const/16 v21, 0x0

    .line 1231
    .line 1232
    const/16 v16, 0x0

    .line 1233
    .line 1234
    move-object v13, v0

    .line 1235
    invoke-direct/range {v13 .. v21}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_15
    .catch Ljava/util/concurrent/CancellationException; {:try_start_15 .. :try_end_15} :catch_5

    .line 1236
    .line 1237
    .line 1238
    return-object v0

    .line 1239
    :catch_5
    move-exception v0

    .line 1240
    goto/16 :goto_1

    .line 1241
    .line 1242
    :catch_6
    move-exception v0

    .line 1243
    move-object v5, v6

    .line 1244
    move-object v6, v1

    .line 1245
    goto/16 :goto_10

    .line 1246
    .line 1247
    :cond_d
    :try_start_16
    iget-object v13, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 1248
    .line 1249
    const-string v14, "native_create_ad_object_success_time"

    .line 1250
    .line 1251
    invoke-static {v3, v4}, Lkotlin/time/h$a;->b(J)Lkotlin/time/h$a;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v0

    .line 1255
    invoke-static {v0}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    .line 1256
    .line 1257
    .line 1258
    move-result-wide v3

    .line 1259
    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/a;->b(D)Ljava/lang/Double;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v15

    .line 1263
    const/16 v20, 0x2c

    .line 1264
    .line 1265
    const/16 v21, 0x0

    .line 1266
    .line 1267
    const/16 v16, 0x0

    .line 1268
    .line 1269
    const/16 v17, 0x0

    .line 1270
    .line 1271
    const/16 v19, 0x0

    .line 1272
    .line 1273
    move-object/from16 v18, v5

    .line 1274
    .line 1275
    invoke-static/range {v13 .. v21}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 1276
    .line 1277
    .line 1278
    iget-object v0, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->campaignRepository:Lcom/unity3d/ads/core/data/repository/CampaignRepository;

    .line 1279
    .line 1280
    invoke-interface {v0, v8}, Lcom/unity3d/ads/core/data/repository/CampaignRepository;->setLoadTimestamp(Lcom/google/protobuf/ByteString;)V

    .line 1281
    .line 1282
    .line 1283
    iget-object v0, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    .line 1284
    .line 1285
    invoke-interface {v0, v8, v5}, Lcom/unity3d/ads/core/data/repository/AdRepository;->addAd(Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 1286
    .line 1287
    .line 1288
    invoke-virtual {v11}, Lcom/unity3d/ads/UnityAdsBaseOptions;->getObjectId()Ljava/lang/String;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v0

    .line 1292
    if-eqz v0, :cond_e

    .line 1293
    .line 1294
    invoke-static {v0}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 1295
    .line 1296
    .line 1297
    move-result v0

    .line 1298
    if-eqz v0, :cond_f

    .line 1299
    .line 1300
    :cond_e
    invoke-virtual {v11}, Lcom/unity3d/ads/UnityAdsBaseOptions;->getData()Lorg/json/JSONObject;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v0

    .line 1304
    if-eqz v0, :cond_f

    .line 1305
    .line 1306
    const-string v3, "adMarkup"

    .line 1307
    .line 1308
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1309
    .line 1310
    .line 1311
    move-result v0

    .line 1312
    if-nez v0, :cond_f

    .line 1313
    .line 1314
    iget-object v0, v1, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    .line 1315
    .line 1316
    invoke-interface {v0, v10, v8}, Lcom/unity3d/ads/core/data/repository/AdRepository;->enqueueOpportunityForPlacement(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V

    .line 1317
    .line 1318
    .line 1319
    :cond_f
    new-instance v0, Lcom/unity3d/ads/core/data/model/LoadResult$Success;

    .line 1320
    .line 1321
    invoke-direct {v0, v5}, Lcom/unity3d/ads/core/data/model/LoadResult$Success;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;)V
    :try_end_16
    .catch Ljava/util/concurrent/CancellationException; {:try_start_16 .. :try_end_16} :catch_6

    .line 1322
    .line 1323
    .line 1324
    return-object v0

    .line 1325
    :catch_7
    move-exception v0

    .line 1326
    move-object/from16 v12, p4

    .line 1327
    .line 1328
    goto :goto_10

    .line 1329
    :catchall_2
    move-object v12, v9

    .line 1330
    :try_start_17
    new-instance v1, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 1331
    .line 1332
    sget-object v19, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    .line 1333
    .line 1334
    const-string v20, "[UnityAds] Internal communication failure"

    .line 1335
    .line 1336
    const-string v22, "invalid_url"

    .line 1337
    .line 1338
    const/16 v25, 0x24

    .line 1339
    .line 1340
    const/16 v26, 0x0

    .line 1341
    .line 1342
    const/16 v21, 0x0

    .line 1343
    .line 1344
    const/16 v24, 0x0

    .line 1345
    .line 1346
    move-object/from16 v18, v1

    .line 1347
    .line 1348
    move-object/from16 v23, v0

    .line 1349
    .line 1350
    invoke-direct/range {v18 .. v26}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_17
    .catch Ljava/util/concurrent/CancellationException; {:try_start_17 .. :try_end_17} :catch_8

    .line 1351
    .line 1352
    .line 1353
    return-object v1

    .line 1354
    :catch_8
    move-exception v0

    .line 1355
    goto/16 :goto_3

    .line 1356
    .line 1357
    :catch_9
    move-exception v0

    .line 1358
    :goto_e
    move-object v12, v9

    .line 1359
    move-object/from16 v6, p0

    .line 1360
    .line 1361
    move-object v5, v11

    .line 1362
    move-object v8, v13

    .line 1363
    move-object v7, v14

    .line 1364
    goto :goto_10

    .line 1365
    :catch_a
    move-exception v0

    .line 1366
    :goto_f
    move-object/from16 v14, p3

    .line 1367
    .line 1368
    goto :goto_e

    .line 1369
    :catch_b
    move-exception v0

    .line 1370
    move-object/from16 v13, p2

    .line 1371
    .line 1372
    goto :goto_f

    .line 1373
    :goto_10
    sget-object v1, Lkotlinx/coroutines/v;->a:Lkotlinx/coroutines/v;

    .line 1374
    .line 1375
    new-instance v3, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$5;

    .line 1376
    .line 1377
    const/4 v4, 0x0

    .line 1378
    move-object/from16 p1, v3

    .line 1379
    .line 1380
    move-object/from16 p2, v6

    .line 1381
    .line 1382
    move-object/from16 p3, v0

    .line 1383
    .line 1384
    move-object/from16 p4, v8

    .line 1385
    .line 1386
    move-object/from16 p5, v7

    .line 1387
    .line 1388
    move-object/from16 p6, v5

    .line 1389
    .line 1390
    move-object/from16 p7, v4

    .line 1391
    .line 1392
    invoke-direct/range {p1 .. p7}, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$5;-><init>(Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;Ljava/util/concurrent/CancellationException;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V

    .line 1393
    .line 1394
    .line 1395
    iput-object v0, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$0:Ljava/lang/Object;

    .line 1396
    .line 1397
    const/4 v4, 0x0

    .line 1398
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$1:Ljava/lang/Object;

    .line 1399
    .line 1400
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$2:Ljava/lang/Object;

    .line 1401
    .line 1402
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$3:Ljava/lang/Object;

    .line 1403
    .line 1404
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$4:Ljava/lang/Object;

    .line 1405
    .line 1406
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$5:Ljava/lang/Object;

    .line 1407
    .line 1408
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$6:Ljava/lang/Object;

    .line 1409
    .line 1410
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$7:Ljava/lang/Object;

    .line 1411
    .line 1412
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->L$8:Ljava/lang/Object;

    .line 1413
    .line 1414
    const/4 v4, 0x6

    .line 1415
    iput v4, v2, Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$1;->label:I

    .line 1416
    .line 1417
    invoke-static {v1, v3, v2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v1

    .line 1421
    if-ne v1, v12, :cond_10

    .line 1422
    .line 1423
    return-object v12

    .line 1424
    :cond_10
    move-object v2, v0

    .line 1425
    :goto_11
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v0

    .line 1429
    if-nez v0, :cond_11

    .line 1430
    .line 1431
    goto :goto_12

    .line 1432
    :cond_11
    move-object v2, v0

    .line 1433
    :goto_12
    throw v2

    .line 1434
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
