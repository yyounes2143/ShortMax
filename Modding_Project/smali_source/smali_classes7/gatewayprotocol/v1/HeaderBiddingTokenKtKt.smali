.class public final Lgatewayprotocol/v1/HeaderBiddingTokenKtKt;
.super Ljava/lang/Object;
.source "HeaderBiddingTokenKt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHeaderBiddingTokenKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeaderBiddingTokenKt.kt\ngatewayprotocol/v1/HeaderBiddingTokenKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,573:1\n1#2:574\n*E\n"
    }
.end annotation


# direct methods
.method public static final -initializeheaderBiddingToken(Lkotlin/jvm/functions/Function1;)Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken;
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
            "Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken;"
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
    sget-object v0, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->Companion:Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl$Companion;

    .line 7
    .line 8
    invoke-static {}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken;->newBuilder()Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken$Builder;

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
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken$Builder;)Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->_build()Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static final copy(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken;Lkotlin/jvm/functions/Function1;)Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken;
    .locals 2
    .param p0    # Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken;
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
            "Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken;"
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
    sget-object v0, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->Companion:Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl$Companion;

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
    check-cast p0, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken$Builder;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken$Builder;)Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->_build()Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static final getCampaignStateOrNull(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;
    .locals 1
    .param p0    # Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;
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
    invoke-interface {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;->hasCampaignState()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;->getCampaignState()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

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

.method public static final getClientInfoOrNull(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .locals 1
    .param p0    # Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;
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
    invoke-interface {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;->hasClientInfo()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;->getClientInfo()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

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

.method public static final getDynamicDeviceInfoOrNull(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
    .locals 1
    .param p0    # Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;
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
    invoke-interface {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;->hasDynamicDeviceInfo()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;->getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

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

.method public static final getInitializationDataOrNull(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;)Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;
    .locals 1
    .param p0    # Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;
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
    invoke-interface {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;->hasInitializationData()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;->getInitializationData()Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

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

.method public static final getLimitedSessionTokenOrNull(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;)Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;
    .locals 1
    .param p0    # Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;
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
    invoke-interface {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;->hasLimitedSessionToken()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;->getLimitedSessionToken()Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

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

.method public static final getPiiOrNull(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .locals 1
    .param p0    # Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;
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
    invoke-interface {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;->hasPii()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;->getPii()Lgatewayprotocol/v1/PiiOuterClass$Pii;

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

.method public static final getSessionCountersOrNull(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 1
    .param p0    # Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;
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
    invoke-interface {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;->hasSessionCounters()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;->getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

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

.method public static final getStaticDeviceInfoOrNull(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
    .locals 1
    .param p0    # Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;
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
    invoke-interface {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;->hasStaticDeviceInfo()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;->getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

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

.method public static final getTestDataOrNull(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;)Lgatewayprotocol/v1/TestDataOuterClass$TestData;
    .locals 1
    .param p0    # Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;
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
    invoke-interface {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;->hasTestData()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;->getTestData()Lgatewayprotocol/v1/TestDataOuterClass$TestData;

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

.method public static final getTimestampsOrNull(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .locals 1
    .param p0    # Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;
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
    invoke-interface {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;->hasTimestamps()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;->getTimestamps()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

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

.method public static final getTokenCountersOrNull(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;)Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;
    .locals 1
    .param p0    # Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;
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
    invoke-interface {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;->hasTokenCounters()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingTokenOrBuilder;->getTokenCounters()Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;

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
