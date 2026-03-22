.class public final Lcom/unity3d/ads/core/domain/scar/AndroidFetchSignalsAndSendUseCase;
.super Ljava/lang/Object;
.source "AndroidFetchSignalsAndSendUseCase.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/scar/FetchSignalsAndSendUseCase;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final handleGetTokenRequest:Lcom/unity3d/ads/core/domain/scar/HandleGetTokenRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scarManager:Lcom/unity3d/ads/core/data/manager/ScarManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scope:Lgt/g0;
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
.method public constructor <init>(Lgt/g0;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/manager/ScarManager;Lcom/unity3d/ads/core/domain/scar/HandleGetTokenRequest;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V
    .locals 1
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/data/repository/SessionRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/core/data/manager/ScarManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/unity3d/ads/core/domain/scar/HandleGetTokenRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scope"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sessionRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "scarManager"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "handleGetTokenRequest"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "sendDiagnosticEvent"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/scar/AndroidFetchSignalsAndSendUseCase;->scope:Lgt/g0;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/scar/AndroidFetchSignalsAndSendUseCase;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 32
    .line 33
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/scar/AndroidFetchSignalsAndSendUseCase;->scarManager:Lcom/unity3d/ads/core/data/manager/ScarManager;

    .line 34
    .line 35
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/scar/AndroidFetchSignalsAndSendUseCase;->handleGetTokenRequest:Lcom/unity3d/ads/core/domain/scar/HandleGetTokenRequest;

    .line 36
    .line 37
    iput-object p5, p0, Lcom/unity3d/ads/core/domain/scar/AndroidFetchSignalsAndSendUseCase;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 38
    .line 39
    return-void
.end method

.method public static final synthetic access$getHandleGetTokenRequest$p(Lcom/unity3d/ads/core/domain/scar/AndroidFetchSignalsAndSendUseCase;)Lcom/unity3d/ads/core/domain/scar/HandleGetTokenRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/scar/AndroidFetchSignalsAndSendUseCase;->handleGetTokenRequest:Lcom/unity3d/ads/core/domain/scar/HandleGetTokenRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRequestedSignalFormats(Lcom/unity3d/ads/core/domain/scar/AndroidFetchSignalsAndSendUseCase;Lcom/unity3d/ads/TokenConfiguration;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/scar/AndroidFetchSignalsAndSendUseCase;->getRequestedSignalFormats(Lcom/unity3d/ads/TokenConfiguration;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getScarManager$p(Lcom/unity3d/ads/core/domain/scar/AndroidFetchSignalsAndSendUseCase;)Lcom/unity3d/ads/core/data/manager/ScarManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/scar/AndroidFetchSignalsAndSendUseCase;->scarManager:Lcom/unity3d/ads/core/data/manager/ScarManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/scar/AndroidFetchSignalsAndSendUseCase;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/scar/AndroidFetchSignalsAndSendUseCase;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTags(Lcom/unity3d/ads/core/domain/scar/AndroidFetchSignalsAndSendUseCase;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/scar/AndroidFetchSignalsAndSendUseCase;->getTags()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getRequestedSignalFormats(Lcom/unity3d/ads/TokenConfiguration;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/TokenConfiguration;",
            ")",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/scar/AndroidFetchSignalsAndSendUseCase;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getScarEligibleFormats()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/unity3d/ads/TokenConfiguration;->getAdFormat()Lcom/unity3d/ads/AdFormat;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/unity3d/ads/core/extensions/AdFormatExtensions;->toProtoAdFormat(Lcom/unity3d/ads/AdFormat;)Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/scar/AndroidFetchSignalsAndSendUseCase;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getScarEligibleFormats()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    :goto_0
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_1
    return-object p1
.end method

.method private final getTags()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/scar/AndroidFetchSignalsAndSendUseCase;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 7
    .line 8
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getScarEligibleFormats()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;->AD_FORMAT_BANNER:Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;

    .line 13
    .line 14
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const-string v3, "true"

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    const-string v2, "banner"

    .line 23
    .line 24
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    sget-object v2, Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;->AD_FORMAT_REWARDED:Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;

    .line 28
    .line 29
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    const-string v2, "rewarded"

    .line 36
    .line 37
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_1
    sget-object v2, Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;->AD_FORMAT_INTERSTITIAL:Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;

    .line 41
    .line 42
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    const-string v1, "interstitial"

    .line 49
    .line 50
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_2
    return-object v0
.end method


# virtual methods
.method public invoke(ILcom/google/protobuf/ByteString;Lcom/unity3d/ads/TokenConfiguration;Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p2    # Lcom/google/protobuf/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/TokenConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/unity3d/ads/TokenConfiguration;",
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
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/scar/AndroidFetchSignalsAndSendUseCase;->scope:Lgt/g0;

    .line 2
    .line 3
    new-instance p4, Lcom/unity3d/ads/core/domain/scar/AndroidFetchSignalsAndSendUseCase$invoke$2;

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    move-object v1, p4

    .line 7
    move-object v2, p0

    .line 8
    move-object v3, p3

    .line 9
    move v4, p1

    .line 10
    move-object v5, p2

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/unity3d/ads/core/domain/scar/AndroidFetchSignalsAndSendUseCase$invoke$2;-><init>(Lcom/unity3d/ads/core/domain/scar/AndroidFetchSignalsAndSendUseCase;Lcom/unity3d/ads/TokenConfiguration;ILcom/google/protobuf/ByteString;Lrs/c;)V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x3

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    move-object v3, p4

    .line 19
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 20
    .line 21
    .line 22
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method
