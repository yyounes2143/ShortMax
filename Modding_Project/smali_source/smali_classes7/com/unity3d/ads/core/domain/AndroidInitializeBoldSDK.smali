.class public final Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;
.super Ljava/lang/Object;
.source "AndroidInitializeBoldSDK.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/InitializeBoldSDK;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MSG_GATEWAY_DENIED:Ljava/lang/String; = "Gateway communication failure"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MSG_NETWORK:Ljava/lang/String; = "Network"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MSG_TIMEOUT:Ljava/lang/String; = "Timeout"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MSG_UNKNOWN:Ljava/lang/String; = "Initialization failure"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final cleanAssets:Lcom/unity3d/ads/core/domain/CleanAssets;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final defaultDispatcher:Lgt/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final diagnosticEventRepository:Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final eventObservers:Lcom/unity3d/ads/core/domain/events/EventObservers;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getGameId:Lcom/unity3d/ads/core/domain/GetGameId;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getInitializeRequest:Lcom/unity3d/ads/core/domain/GetInitializationRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getRequestPolicy:Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handleFocusCounters:Lcom/unity3d/ads/core/domain/AndroidHandleFocusCounters;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handleGatewayInitializationResponse:Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final initializeOM:Lcom/unity3d/ads/core/domain/om/InitializeOMSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final legacyConfigurationReader:Lcom/unity3d/services/core/configuration/ConfigurationReader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sdkPropertiesManager:Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;
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

.field private final storageManager:Lcom/unity3d/ads/core/data/manager/StorageManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final triggerInitializeListener:Lcom/unity3d/ads/core/domain/TriggerInitializeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->Companion:Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lgt/c0;Lcom/unity3d/ads/core/domain/om/InitializeOMSDK;Lcom/unity3d/ads/core/domain/GetInitializationRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/CleanAssets;Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/events/EventObservers;Lcom/unity3d/ads/core/domain/TriggerInitializeListener;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;Lcom/unity3d/ads/core/data/manager/StorageManager;Lcom/unity3d/services/core/configuration/ConfigurationReader;Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;Lcom/unity3d/ads/core/domain/GetGameId;Lcom/unity3d/ads/core/domain/AndroidHandleFocusCounters;)V
    .locals 16
    .param p1    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/domain/om/InitializeOMSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/core/domain/GetInitializationRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/unity3d/ads/core/domain/GetRequestPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/unity3d/ads/core/domain/CleanAssets;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/unity3d/ads/gatewayclient/GatewayClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/unity3d/ads/core/data/repository/SessionRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/unity3d/ads/core/domain/events/EventObservers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/unity3d/ads/core/domain/TriggerInitializeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Lcom/unity3d/ads/core/data/manager/StorageManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # Lcom/unity3d/services/core/configuration/ConfigurationReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p15    # Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p16    # Lcom/unity3d/ads/core/domain/GetGameId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p17    # Lcom/unity3d/ads/core/domain/AndroidHandleFocusCounters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "defaultDispatcher"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializeOM"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getInitializeRequest"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getRequestPolicy"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cleanAssets"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleGatewayInitializationResponse"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gatewayClient"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionRepository"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventObservers"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "triggerInitializeListener"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diagnosticEventRepository"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyConfigurationReader"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkPropertiesManager"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getGameId"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleFocusCounters"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    .line 2
    iput-object v1, v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->defaultDispatcher:Lgt/c0;

    .line 3
    iput-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->initializeOM:Lcom/unity3d/ads/core/domain/om/InitializeOMSDK;

    .line 4
    iput-object v3, v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->getInitializeRequest:Lcom/unity3d/ads/core/domain/GetInitializationRequest;

    .line 5
    iput-object v4, v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->getRequestPolicy:Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    .line 6
    iput-object v5, v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->cleanAssets:Lcom/unity3d/ads/core/domain/CleanAssets;

    .line 7
    iput-object v6, v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->handleGatewayInitializationResponse:Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;

    .line 8
    iput-object v7, v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;

    .line 9
    iput-object v8, v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 10
    iput-object v9, v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->eventObservers:Lcom/unity3d/ads/core/domain/events/EventObservers;

    .line 11
    iput-object v10, v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->triggerInitializeListener:Lcom/unity3d/ads/core/domain/TriggerInitializeListener;

    .line 12
    iput-object v11, v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 13
    iput-object v12, v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->diagnosticEventRepository:Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;

    .line 14
    iput-object v13, v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->storageManager:Lcom/unity3d/ads/core/data/manager/StorageManager;

    .line 15
    iput-object v14, v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->legacyConfigurationReader:Lcom/unity3d/services/core/configuration/ConfigurationReader;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->sdkPropertiesManager:Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;

    .line 17
    iput-object v15, v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->getGameId:Lcom/unity3d/ads/core/domain/GetGameId;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->handleFocusCounters:Lcom/unity3d/ads/core/domain/AndroidHandleFocusCounters;

    return-void
.end method

.method public static final synthetic access$checkCanInitialize(Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->checkCanInitialize()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getGatewayClient$p(Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;)Lcom/unity3d/ads/gatewayclient/GatewayClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getGetInitializeRequest$p(Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;)Lcom/unity3d/ads/core/domain/GetInitializationRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->getInitializeRequest:Lcom/unity3d/ads/core/domain/GetInitializationRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getGetRequestPolicy$p(Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->getRequestPolicy:Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;)Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$handleResponse(Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->handleResponse(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$initializationFailure(Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;Lkotlin/time/TimeMark;Lcom/unity3d/ads/core/data/model/exception/InitializationException;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->initializationFailure(Lkotlin/time/TimeMark;Lcom/unity3d/ads/core/data/model/exception/InitializationException;Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$initializationStart(Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;Ljava/lang/String;ZLrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->initializationStart(Ljava/lang/String;ZLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$initializationSuccess(Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;Lkotlin/time/TimeMark;Ljava/lang/String;ZLrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->initializationSuccess(Lkotlin/time/TimeMark;Ljava/lang/String;ZLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final checkCanInitialize()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getShouldInitialize()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->getGameId:Lcom/unity3d/ads/core/domain/GetGameId;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/unity3d/ads/core/domain/GetGameId;->invoke()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    invoke-static {v5}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    new-instance v0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "gameId \""

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, "\" should be a number."

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/4 v6, 0x2

    .line 51
    const/4 v7, 0x0

    .line 52
    const/4 v3, 0x0

    .line 53
    const-string v4, "invalid_game_id"

    .line 54
    .line 55
    move-object v1, v0

    .line 56
    invoke-direct/range {v1 .. v7}, Lcom/unity3d/ads/core/data/model/exception/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_2
    new-instance v0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;

    .line 61
    .line 62
    const/4 v13, 0x2

    .line 63
    const/4 v14, 0x0

    .line 64
    const-string v9, "Gateway communication failure"

    .line 65
    .line 66
    const/4 v10, 0x0

    .line 67
    const-string v11, "gateway"

    .line 68
    .line 69
    const-string v12, "!sessionRepository.shouldInitialize"

    .line 70
    .line 71
    move-object v8, v0

    .line 72
    invoke-direct/range {v8 .. v14}, Lcom/unity3d/ads/core/data/model/exception/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 73
    .line 74
    .line 75
    throw v0
.end method

.method private final getTags(Lcom/unity3d/ads/core/data/model/exception/InitializationException;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/exception/InitializationException;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/collections/p0;->c()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/unity3d/ads/core/data/model/OperationType;->INITIALIZATION:Lcom/unity3d/ads/core/data/model/OperationType;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/OperationType;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "operation"

    .line 12
    .line 13
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->getReason()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "reason"

    .line 21
    .line 22
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string v1, "source"

    .line 26
    .line 27
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    const-string p2, "is_retry"

    .line 31
    .line 32
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->getReasonDebug()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    if-eqz p2, :cond_0

    .line 44
    .line 45
    const-string p2, "reason_debug"

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->getReasonDebug()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-static {v0}, Lkotlin/collections/p0;->b(Ljava/util/Map;)Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1
.end method

.method private final handleResponse(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;Lrs/c;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->hasError()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_3

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->hasPayload()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->getPayload()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->hasInitializationResponse()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v1, v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->handleGatewayInitializationResponse:Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;

    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->getPayload()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getInitializationResponse()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "response.payload.initializationResponse"

    .line 36
    .line 37
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    move-object/from16 v3, p2

    .line 41
    .line 42
    invoke-interface {v1, v2, v3}, Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;->invoke(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Lrs/c;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-ne v1, v2, :cond_0

    .line 51
    .line 52
    return-object v1

    .line 53
    :cond_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    return-object v1

    .line 56
    :cond_1
    new-instance v1, Lcom/unity3d/ads/core/data/model/exception/InitializationException;

    .line 57
    .line 58
    const/4 v7, 0x2

    .line 59
    const/4 v8, 0x0

    .line 60
    const-string v3, "Gateway communication failure"

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    const-string v5, "gateway"

    .line 64
    .line 65
    const-string v6, "No initialization response"

    .line 66
    .line 67
    move-object v2, v1

    .line 68
    invoke-direct/range {v2 .. v8}, Lcom/unity3d/ads/core/data/model/exception/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    .line 70
    .line 71
    throw v1

    .line 72
    :cond_2
    new-instance v1, Lcom/unity3d/ads/core/data/model/exception/InitializationException;

    .line 73
    .line 74
    const/4 v14, 0x2

    .line 75
    const/4 v15, 0x0

    .line 76
    const-string v10, "Gateway communication failure"

    .line 77
    .line 78
    const/4 v11, 0x0

    .line 79
    const-string v12, "gateway"

    .line 80
    .line 81
    const-string v13, "No payload"

    .line 82
    .line 83
    move-object v9, v1

    .line 84
    invoke-direct/range {v9 .. v15}, Lcom/unity3d/ads/core/data/model/exception/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 85
    .line 86
    .line 87
    throw v1

    .line 88
    :cond_3
    iget-object v1, v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    invoke-interface {v1, v2}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->setShouldInitialize(Z)V

    .line 92
    .line 93
    .line 94
    new-instance v1, Lcom/unity3d/ads/core/data/model/exception/InitializationException;

    .line 95
    .line 96
    invoke-virtual/range {p1 .. p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorText()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    const/4 v8, 0x2

    .line 105
    const/4 v9, 0x0

    .line 106
    const-string v4, "Gateway communication failure"

    .line 107
    .line 108
    const/4 v5, 0x0

    .line 109
    const-string v6, "gateway"

    .line 110
    .line 111
    move-object v3, v1

    .line 112
    invoke-direct/range {v3 .. v9}, Lcom/unity3d/ads/core/data/model/exception/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    .line 114
    .line 115
    throw v1
.end method

.method private final initializationFailure(Lkotlin/time/TimeMark;Lcom/unity3d/ads/core/data/model/exception/InitializationException;Ljava/lang/String;Z)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Unity Ads Initialization Failure: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-direct {p0, p2, p3, p4}, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->getTags(Lcom/unity3d/ads/core/data/model/exception/InitializationException;Ljava/lang/String;Z)Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const/16 v8, 0x38

    .line 40
    .line 41
    const/4 v9, 0x0

    .line 42
    const-string v2, "native_initialize_task_failure_time"

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    invoke-static/range {v1 .. v9}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 51
    .line 52
    sget-object p3, Lcom/unity3d/ads/core/data/model/InitializationState;->FAILED:Lcom/unity3d/ads/core/data/model/InitializationState;

    .line 53
    .line 54
    invoke-interface {p1, p3}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->setInitializationState(Lcom/unity3d/ads/core/data/model/InitializationState;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->sdkPropertiesManager:Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;

    .line 58
    .line 59
    const/4 p3, 0x0

    .line 60
    invoke-interface {p1, p3}, Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;->setInitialized(Z)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->triggerInitializeListener:Lcom/unity3d/ads/core/domain/TriggerInitializeListener;

    .line 64
    .line 65
    sget-object p3, Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->getMessage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p1, p3, p2}, Lcom/unity3d/ads/core/domain/TriggerInitializeListener;->error(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->setupDiagnosticEvents()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private final initializationStart(Ljava/lang/String;ZLrs/c;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const-string v0, "Unity Ads Initialization Start"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->sdkPropertiesManager:Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;->setInitializationTime()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->sdkPropertiesManager:Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;->setInitializationTimeSinceEpoch()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 17
    .line 18
    const-string v0, "source"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "is_retry"

    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {v0, p2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    sget-object v0, Lms/g;->f:Lms/g;

    .line 35
    .line 36
    invoke-virtual {v0}, Lms/g;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v2, "kotlin_version"

    .line 41
    .line 42
    invoke-static {v2, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    filled-new-array {p1, p2, v0}, [Lkotlin/Pair;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const/16 v8, 0x3a

    .line 55
    .line 56
    const/4 v9, 0x0

    .line 57
    const-string v2, "native_initialization_started"

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v6, 0x0

    .line 62
    const/4 v7, 0x0

    .line 63
    invoke-static/range {v1 .. v9}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 67
    .line 68
    sget-object p2, Lcom/unity3d/ads/core/data/model/InitializationState;->INITIALIZING:Lcom/unity3d/ads/core/data/model/InitializationState;

    .line 69
    .line 70
    invoke-interface {p1, p2}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->setInitializationState(Lcom/unity3d/ads/core/data/model/InitializationState;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->eventObservers:Lcom/unity3d/ads/core/domain/events/EventObservers;

    .line 74
    .line 75
    invoke-virtual {p1, p3}, Lcom/unity3d/ads/core/domain/events/EventObservers;->invoke(Lrs/c;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    if-ne p1, p2, :cond_0

    .line 84
    .line 85
    return-object p1

    .line 86
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    return-object p1
.end method

.method private final initializationSuccess(Lkotlin/time/TimeMark;Ljava/lang/String;ZLrs/c;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/time/TimeMark;",
            "Ljava/lang/String;",
            "Z",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    instance-of v2, v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$initializationSuccess$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$initializationSuccess$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$initializationSuccess$1;->label:I

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
    iput v3, v2, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$initializationSuccess$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$initializationSuccess$1;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$initializationSuccess$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$initializationSuccess$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$initializationSuccess$1;->label:I

    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    const/4 v6, 0x2

    .line 39
    const/4 v7, 0x1

    .line 40
    if-eqz v4, :cond_4

    .line 41
    .line 42
    if-eq v4, v7, :cond_3

    .line 43
    .line 44
    if-eq v4, v6, :cond_2

    .line 45
    .line 46
    if-ne v4, v5, :cond_1

    .line 47
    .line 48
    iget-object v2, v2, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$initializationSuccess$1;->L$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;

    .line 51
    .line 52
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_3

    .line 56
    .line 57
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v1

    .line 65
    :cond_2
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$initializationSuccess$1;->L$0:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v4, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;

    .line 68
    .line 69
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$initializationSuccess$1;->L$0:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v4, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;

    .line 76
    .line 77
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    const-string v1, "Unity Ads Initialization Success"

    .line 85
    .line 86
    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v8, v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 90
    .line 91
    invoke-static/range {p1 .. p1}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    .line 92
    .line 93
    .line 94
    move-result-wide v9

    .line 95
    invoke-static {v9, v10}, Lkotlin/coroutines/jvm/internal/a;->b(D)Ljava/lang/Double;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    const-string v1, "source"

    .line 100
    .line 101
    move-object/from16 v4, p2

    .line 102
    .line 103
    invoke-static {v1, v4}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    const-string v9, "is_retry"

    .line 112
    .line 113
    invoke-static {v9, v4}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    filled-new-array {v1, v4}, [Lkotlin/Pair;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v1}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    const/16 v15, 0x38

    .line 126
    .line 127
    const/16 v16, 0x0

    .line 128
    .line 129
    const-string v9, "native_initialize_task_success_time"

    .line 130
    .line 131
    const/4 v12, 0x0

    .line 132
    const/4 v13, 0x0

    .line 133
    const/4 v14, 0x0

    .line 134
    invoke-static/range {v8 .. v16}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->storageManager:Lcom/unity3d/ads/core/data/manager/StorageManager;

    .line 138
    .line 139
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/manager/StorageManager;->hasInitialized()V

    .line 140
    .line 141
    .line 142
    iget-object v1, v0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->initializeOM:Lcom/unity3d/ads/core/domain/om/InitializeOMSDK;

    .line 143
    .line 144
    iput-object v0, v2, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$initializationSuccess$1;->L$0:Ljava/lang/Object;

    .line 145
    .line 146
    iput v7, v2, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$initializationSuccess$1;->label:I

    .line 147
    .line 148
    invoke-interface {v1, v2}, Lcom/unity3d/ads/core/domain/om/InitializeOMSDK;->invoke(Lrs/c;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    if-ne v1, v3, :cond_5

    .line 153
    .line 154
    return-object v3

    .line 155
    :cond_5
    move-object v4, v0

    .line 156
    :goto_1
    iget-object v1, v4, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->cleanAssets:Lcom/unity3d/ads/core/domain/CleanAssets;

    .line 157
    .line 158
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$initializationSuccess$1;->L$0:Ljava/lang/Object;

    .line 159
    .line 160
    iput v6, v2, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$initializationSuccess$1;->label:I

    .line 161
    .line 162
    invoke-interface {v1, v2}, Lcom/unity3d/ads/core/domain/CleanAssets;->invoke(Lrs/c;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    if-ne v1, v3, :cond_6

    .line 167
    .line 168
    return-object v3

    .line 169
    :cond_6
    :goto_2
    iget-object v1, v4, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->handleFocusCounters:Lcom/unity3d/ads/core/domain/AndroidHandleFocusCounters;

    .line 170
    .line 171
    invoke-virtual {v1}, Lcom/unity3d/ads/core/domain/AndroidHandleFocusCounters;->invoke()V

    .line 172
    .line 173
    .line 174
    iget-object v1, v4, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 175
    .line 176
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$initializationSuccess$1;->L$0:Ljava/lang/Object;

    .line 177
    .line 178
    iput v5, v2, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$initializationSuccess$1;->label:I

    .line 179
    .line 180
    invoke-interface {v1, v2}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->persistNativeConfiguration(Lrs/c;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    if-ne v1, v3, :cond_7

    .line 185
    .line 186
    return-object v3

    .line 187
    :cond_7
    move-object v2, v4

    .line 188
    :goto_3
    iget-object v1, v2, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->legacyConfigurationReader:Lcom/unity3d/services/core/configuration/ConfigurationReader;

    .line 189
    .line 190
    invoke-virtual {v1}, Lcom/unity3d/services/core/configuration/ConfigurationReader;->getCurrentConfiguration()Lcom/unity3d/services/core/configuration/Configuration;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v1}, Lcom/unity3d/services/core/configuration/Configuration;->deleteFromDisk()V

    .line 195
    .line 196
    .line 197
    iget-object v1, v2, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 198
    .line 199
    sget-object v3, Lcom/unity3d/ads/core/data/model/InitializationState;->INITIALIZED:Lcom/unity3d/ads/core/data/model/InitializationState;

    .line 200
    .line 201
    invoke-interface {v1, v3}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->setInitializationState(Lcom/unity3d/ads/core/data/model/InitializationState;)V

    .line 202
    .line 203
    .line 204
    iget-object v1, v2, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->sdkPropertiesManager:Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;

    .line 205
    .line 206
    invoke-interface {v1, v7}, Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;->setInitialized(Z)V

    .line 207
    .line 208
    .line 209
    iget-object v1, v2, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->triggerInitializeListener:Lcom/unity3d/ads/core/domain/TriggerInitializeListener;

    .line 210
    .line 211
    invoke-virtual {v1}, Lcom/unity3d/ads/core/domain/TriggerInitializeListener;->success()V

    .line 212
    .line 213
    .line 214
    invoke-direct {v2}, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->setupDiagnosticEvents()V

    .line 215
    .line 216
    .line 217
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 218
    .line 219
    return-object v1
.end method

.method private final setupDiagnosticEvents()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getDiagnosticEvents()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->diagnosticEventRepository:Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;

    .line 12
    .line 13
    const-string v2, "config"

    .line 14
    .line 15
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, v0}, Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;->configure(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
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
            "Ljava/lang/String;",
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
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;->defaultDispatcher:Lgt/c0;

    .line 2
    .line 3
    new-instance v1, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK$invoke$2;-><init>(Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;Ljava/lang/String;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, p2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-ne p1, p2, :cond_0

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p1
.end method
