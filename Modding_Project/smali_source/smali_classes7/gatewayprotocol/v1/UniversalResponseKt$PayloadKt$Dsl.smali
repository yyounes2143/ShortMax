.class public final Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;
.super Ljava/lang/Object;
.source "UniversalResponseKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->Companion:Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;-><init>(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

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
    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    .line 13
    .line 14
    return-object v0
.end method

.method public final clearAdDataRefreshResponse()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->clearAdDataRefreshResponse()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearAdPlayerConfigResponse()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->clearAdPlayerConfigResponse()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearAdResponse()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->clearAdResponse()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearInitializationResponse()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->clearInitializationResponse()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearPrivacyUpdateResponse()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->clearPrivacyUpdateResponse()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearValue()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->clearValue()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getAdDataRefreshResponse()Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->getAdDataRefreshResponse()Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getAdDataRefreshResponse()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getAdPlayerConfigResponse()Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->getAdPlayerConfigResponse()Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getAdPlayerConfigResponse()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getAdResponse()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->getAdResponse()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getAdResponse()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getInitializationResponse()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->getInitializationResponse()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getInitializationResponse()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getPrivacyUpdateResponse()Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->getPrivacyUpdateResponse()Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getPrivacyUpdateResponse()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getValueCase()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->getValueCase()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getValueCase()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final hasAdDataRefreshResponse()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->hasAdDataRefreshResponse()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasAdPlayerConfigResponse()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->hasAdPlayerConfigResponse()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasAdResponse()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->hasAdResponse()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasInitializationResponse()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->hasInitializationResponse()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasPrivacyUpdateResponse()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->hasPrivacyUpdateResponse()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setAdDataRefreshResponse(Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;
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
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->setAdDataRefreshResponse(Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setAdPlayerConfigResponse(Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;
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
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->setAdPlayerConfigResponse(Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setAdResponse(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
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
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->setAdResponse(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setInitializationResponse(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
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
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->setInitializationResponse(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setPrivacyUpdateResponse(Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;
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
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseKt$PayloadKt$Dsl;->_builder:Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->setPrivacyUpdateResponse(Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method
