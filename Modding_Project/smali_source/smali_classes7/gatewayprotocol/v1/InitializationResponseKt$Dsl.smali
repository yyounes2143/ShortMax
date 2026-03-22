.class public final Lgatewayprotocol/v1/InitializationResponseKt$Dsl;
.super Ljava/lang/Object;
.source "InitializationResponseKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationResponseKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/InitializationResponseKt$Dsl$Companion;,
        Lgatewayprotocol/v1/InitializationResponseKt$Dsl$ScarEligibleFormatsProxy;,
        Lgatewayprotocol/v1/InitializationResponseKt$Dsl$ScarPlacementsProxy;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/InitializationResponseKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgatewayprotocol/v1/InitializationResponseKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->Companion:Lgatewayprotocol/v1/InitializationResponseKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;-><init>(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.build()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    .line 13
    .line 14
    return-object v0
.end method

.method public final synthetic addAllScarEligibleFormats(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "values"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->addAllScarEligibleFormats(Ljava/lang/Iterable;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final synthetic addScarEligibleFormats(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "value"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->addScarEligibleFormats(Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final clearCountOfLastShownCampaigns()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->clearCountOfLastShownCampaigns()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->clearError()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearNativeConfiguration()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->clearNativeConfiguration()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic clearScarEligibleFormats(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 7
    .line 8
    invoke-virtual {p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->clearScarEligibleFormats()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final synthetic clearScarPlacements(Lcom/google/protobuf/kotlin/DslMap;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 7
    .line 8
    invoke-virtual {p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->clearScarPlacements()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final clearTriggerInitializationCompletedRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->clearTriggerInitializationCompletedRequest()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearUniversalRequestUrl()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->clearUniversalRequestUrl()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getCountOfLastShownCampaigns()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->getCountOfLastShownCampaigns()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getError()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getErrorOrNull(Lgatewayprotocol/v1/InitializationResponseKt$Dsl;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1
    .param p1    # Lgatewayprotocol/v1/InitializationResponseKt$Dsl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 7
    .line 8
    invoke-static {p1}, Lgatewayprotocol/v1/InitializationResponseKtKt;->getErrorOrNull(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponseOrBuilder;)Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getNativeConfiguration()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final synthetic getScarEligibleFormats()Lcom/google/protobuf/kotlin/DslList;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 2
    .line 3
    iget-object v1, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 4
    .line 5
    invoke-virtual {v1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->getScarEligibleFormatsList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "_builder.getScarEligibleFormatsList()"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final synthetic getScarPlacementsMap()Lcom/google/protobuf/kotlin/DslMap;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/protobuf/kotlin/DslMap;

    .line 2
    .line 3
    iget-object v1, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 4
    .line 5
    invoke-virtual {v1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->getScarPlacementsMap()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "_builder.getScarPlacementsMap()"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslMap;-><init>(Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final getTriggerInitializationCompletedRequest()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->getTriggerInitializationCompletedRequest()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getUniversalRequestUrl()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->getUniversalRequestUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getUniversalRequestUrl()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final hasError()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->hasError()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasNativeConfiguration()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->hasNativeConfiguration()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasUniversalRequestUrl()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->hasUniversalRequestUrl()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final synthetic plusAssignAllScarEligibleFormats(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;",
            "Lgatewayprotocol/v1/InitializationResponseKt$Dsl$ScarEligibleFormatsProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "values"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->addAllScarEligibleFormats(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final synthetic plusAssignScarEligibleFormats(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;",
            "Lgatewayprotocol/v1/InitializationResponseKt$Dsl$ScarEligibleFormatsProxy;",
            ">;",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->addScarEligibleFormats(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final synthetic putAllScarPlacements(Lcom/google/protobuf/kotlin/DslMap;Ljava/util/Map;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "map"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->putAllScarPlacements(Ljava/util/Map;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final putScarPlacements(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;)V
    .locals 1
    .param p1    # Lcom/google/protobuf/kotlin/DslMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslMap<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;",
            "Lgatewayprotocol/v1/InitializationResponseKt$Dsl$ScarPlacementsProxy;",
            ">;",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "key"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "value"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 17
    .line 18
    invoke-virtual {p1, p2, p3}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->putScarPlacements(Ljava/lang/String;Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final synthetic removeScarPlacements(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "key"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->removeScarPlacements(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setCountOfLastShownCampaigns(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->setCountOfLastShownCampaigns(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/ErrorOuterClass$Error;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setNativeConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->setNativeConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final synthetic setScarEligibleFormats(Lcom/google/protobuf/kotlin/DslList;ILgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "value"

    .line 7
    .line 8
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 12
    .line 13
    invoke-virtual {p1, p2, p3}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->setScarEligibleFormats(ILgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final synthetic setScarPlacements(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslMap<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;",
            "Lgatewayprotocol/v1/InitializationResponseKt$Dsl$ScarPlacementsProxy;",
            ">;",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "key"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "value"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->putScarPlacements(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final setTriggerInitializationCompletedRequest(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->setTriggerInitializationCompletedRequest(Z)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setUniversalRequestUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->setUniversalRequestUrl(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method
