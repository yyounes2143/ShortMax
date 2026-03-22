.class public final Lcom/unity3d/ads/core/domain/AndroidLoad;
.super Ljava/lang/Object;
.source "AndroidLoad.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/Load;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final defaultDispatcher:Lgt/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getAdPlayerConfigRequest:Lcom/unity3d/ads/core/domain/GetAdPlayerConfigRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getAdRequest:Lcom/unity3d/ads/core/domain/GetAdRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getRequestPolicy:Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handleGatewayAdResponse:Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;
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
.method public constructor <init>(Lgt/c0;Lcom/unity3d/ads/core/domain/GetAdRequest;Lcom/unity3d/ads/core/domain/GetAdPlayerConfigRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V
    .locals 1
    .param p1    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/domain/GetAdRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/core/domain/GetAdPlayerConfigRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/unity3d/ads/core/domain/GetRequestPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/unity3d/ads/core/data/repository/SessionRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/unity3d/ads/gatewayclient/GatewayClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/unity3d/ads/core/data/repository/AdRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "defaultDispatcher"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "getAdRequest"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "getAdPlayerConfigRequest"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "getRequestPolicy"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "handleGatewayAdResponse"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "sessionRepository"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "gatewayClient"

    .line 32
    .line 33
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "adRepository"

    .line 37
    .line 38
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "sendDiagnosticEvent"

    .line 42
    .line 43
    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->defaultDispatcher:Lgt/c0;

    .line 50
    .line 51
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->getAdRequest:Lcom/unity3d/ads/core/domain/GetAdRequest;

    .line 52
    .line 53
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->getAdPlayerConfigRequest:Lcom/unity3d/ads/core/domain/GetAdPlayerConfigRequest;

    .line 54
    .line 55
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->getRequestPolicy:Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    .line 56
    .line 57
    iput-object p5, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->handleGatewayAdResponse:Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;

    .line 58
    .line 59
    iput-object p6, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 60
    .line 61
    iput-object p7, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;

    .line 62
    .line 63
    iput-object p8, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    .line 64
    .line 65
    iput-object p9, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 66
    .line 67
    return-void
.end method

.method public static final synthetic access$getAdRepository$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/data/repository/AdRepository;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getGatewayClient$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/gatewayclient/GatewayClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getGetAdPlayerConfigRequest$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/GetAdPlayerConfigRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->getAdPlayerConfigRequest:Lcom/unity3d/ads/core/domain/GetAdPlayerConfigRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getGetAdRequest$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/GetAdRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->getAdRequest:Lcom/unity3d/ads/core/domain/GetAdRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getGetRequestPolicy$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->getRequestPolicy:Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getHandleGatewayAdResponse$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->handleGatewayAdResponse:Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTmpAdObject(Lcom/unity3d/ads/core/domain/AndroidLoad;Lcom/google/protobuf/ByteString;Ljava/lang/String;ZLgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lcom/unity3d/ads/UnityAdsLoadOptions;)Lcom/unity3d/ads/core/data/model/AdObject;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/unity3d/ads/core/domain/AndroidLoad;->getTmpAdObject(Lcom/google/protobuf/ByteString;Ljava/lang/String;ZLgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lcom/unity3d/ads/UnityAdsLoadOptions;)Lcom/unity3d/ads/core/data/model/AdObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$handleGatewayException(Lcom/unity3d/ads/core/domain/AndroidLoad;Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;)Lcom/unity3d/ads/core/data/model/LoadResult$Failure;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/AndroidLoad;->handleGatewayException(Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;)Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$incrementLoadRequestAdmCount(Lcom/unity3d/ads/core/domain/AndroidLoad;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/AndroidLoad;->incrementLoadRequestAdmCount(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$incrementLoadRequestCount(Lcom/unity3d/ads/core/domain/AndroidLoad;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/AndroidLoad;->incrementLoadRequestCount(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getTmpAdObject(Lcom/google/protobuf/ByteString;Ljava/lang/String;ZLgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lcom/unity3d/ads/UnityAdsLoadOptions;)Lcom/unity3d/ads/core/data/model/AdObject;
    .locals 20

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move/from16 v13, p3

    .line 6
    .line 7
    move-object/from16 v14, p4

    .line 8
    .line 9
    move-object/from16 v12, p5

    .line 10
    .line 11
    new-instance v19, Lcom/unity3d/ads/core/data/model/AdObject;

    .line 12
    .line 13
    move-object/from16 v0, v19

    .line 14
    .line 15
    sget-object v4, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 16
    .line 17
    move-object v3, v4

    .line 18
    const-string v5, "EMPTY"

    .line 19
    .line 20
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const v17, 0xc5f8

    .line 24
    .line 25
    .line 26
    const/16 v18, 0x0

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v9, 0x0

    .line 34
    const/4 v10, 0x0

    .line 35
    const/4 v11, 0x0

    .line 36
    const/4 v15, 0x0

    .line 37
    const/16 v16, 0x0

    .line 38
    .line 39
    invoke-direct/range {v0 .. v18}, Lcom/unity3d/ads/core/data/model/AdObject;-><init>(Lcom/google/protobuf/ByteString;Ljava/lang/String;Lcom/google/protobuf/ByteString;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/unity3d/ads/adplayer/AdPlayer;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;ZLgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lkt/e;Lkt/e;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    .line 41
    .line 42
    return-object v19
.end method

.method private final handleGatewayException(Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;)Lcom/unity3d/ads/core/data/model/LoadResult$Failure;
    .locals 11

    .line 1
    instance-of v0, p1, Lcom/unity3d/ads/core/data/model/exception/NetworkTimeoutException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->TIMEOUT:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    .line 6
    .line 7
    :goto_0
    move-object v3, v1

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :goto_1
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-string v1, "[UnityAds] Timeout while loading "

    .line 15
    .line 16
    :goto_2
    move-object v4, v1

    .line 17
    goto :goto_3

    .line 18
    :cond_1
    instance-of v1, p1, Lcom/unity3d/ads/core/data/model/exception/GatewayException;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    const-string v1, "[UnityAds] Internal communication failure"

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :goto_3
    if-eqz v0, :cond_3

    .line 31
    .line 32
    const-string v0, "timeout"

    .line 33
    .line 34
    :goto_4
    move-object v6, v0

    .line 35
    goto :goto_5

    .line 36
    :cond_3
    const-string v0, "gateway"

    .line 37
    .line 38
    goto :goto_4

    .line 39
    :goto_5
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->getMessage()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    new-instance v0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 44
    .line 45
    const/16 v9, 0x20

    .line 46
    .line 47
    const/4 v10, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    move-object v2, v0

    .line 50
    move-object v5, p1

    .line 51
    invoke-direct/range {v2 .. v10}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method private final incrementLoadRequestAdmCount(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->incrementBannerLoadRequestAdmCount()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->incrementLoadRequestAdmCount()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method private final incrementLoadRequestCount(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->incrementBannerLoadRequestCount()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidLoad;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->incrementLoadRequestCount()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method


# virtual methods
.method public invoke(Landroid/content/Context;Ljava/lang/String;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;Lcom/unity3d/ads/UnityAdsLoadOptions;Lrs/c;)Ljava/lang/Object;
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/protobuf/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/unity3d/ads/UnityAdsLoadOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ByteString;",
            "Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;",
            "Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;",
            "Lcom/unity3d/ads/UnityAdsLoadOptions;",
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
    move-object v9, p0

    .line 2
    iget-object v10, v9, Lcom/unity3d/ads/core/domain/AndroidLoad;->defaultDispatcher:Lgt/c0;

    .line 3
    .line 4
    new-instance v11, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;

    .line 5
    .line 6
    const/4 v8, 0x0

    .line 7
    move-object v0, v11

    .line 8
    move-object v1, p0

    .line 9
    move-object/from16 v2, p5

    .line 10
    .line 11
    move-object/from16 v3, p4

    .line 12
    .line 13
    move-object v4, p3

    .line 14
    move-object v5, p2

    .line 15
    move-object/from16 v6, p6

    .line 16
    .line 17
    move-object v7, p1

    .line 18
    invoke-direct/range {v0 .. v8}, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;-><init>(Lcom/unity3d/ads/core/domain/AndroidLoad;Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Landroid/content/Context;Lrs/c;)V

    .line 19
    .line 20
    .line 21
    move-object/from16 v0, p7

    .line 22
    .line 23
    invoke-static {v10, v11, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
