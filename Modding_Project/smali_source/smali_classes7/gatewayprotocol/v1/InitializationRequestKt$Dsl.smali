.class public final Lgatewayprotocol/v1/InitializationRequestKt$Dsl;
.super Ljava/lang/Object;
.source "InitializationRequestKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationRequestKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/InitializationRequestKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/InitializationRequestKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->Companion:Lgatewayprotocol/v1/InitializationRequestKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;-><init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

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
    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    .line 13
    .line 14
    return-object v0
.end method

.method public final clearAnalyticsUserId()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearAnalyticsUserId()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearAuid()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearAuid()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearAuidString()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearAuidString()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearCache()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearCache()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearClientInfo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearClientInfo()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearDeviceInfo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearDeviceInfo()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearIdfi()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearIdfi()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearIsFirstInit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearIsFirstInit()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearLegacyFlowUserConsent()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearLegacyFlowUserConsent()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearPrivacy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearPrivacy()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearSessionId()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearSessionId()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearUadsInitBlob()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearUadsInitBlob()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getAnalyticsUserId()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getAnalyticsUserId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getAnalyticsUserId()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getAuid()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getAuid()Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getAuid()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getAuidString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getAuidString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getAuidString()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getCache()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getCache()Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getCache()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getClientInfo()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getClientInfo()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getClientInfo()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getDeviceInfo()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getDeviceInfo()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getDeviceInfo()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getIdfi()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getIdfi()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getIdfi()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getIsFirstInit()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getIsFirstInit()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getLegacyFlowUserConsent()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getLegacyFlowUserConsent()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getLegacyFlowUserConsent()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getPrivacy()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getPrivacy()Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getPrivacy()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getSessionId()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getSessionId()Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getSessionId()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getUadsInitBlob()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getUadsInitBlob()Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getUadsInitBlob()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final hasAnalyticsUserId()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasAnalyticsUserId()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasAuid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasAuid()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasAuidString()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasAuidString()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasCache()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasCache()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasClientInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasClientInfo()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasDeviceInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasDeviceInfo()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasLegacyFlowUserConsent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasLegacyFlowUserConsent()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasPrivacy()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasPrivacy()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasUadsInitBlob()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasUadsInitBlob()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setAnalyticsUserId(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setAnalyticsUserId(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setAuid(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1    # Lcom/google/protobuf/ByteString;
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
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setAuid(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setAuidString(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setAuidString(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setCache(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1    # Lcom/google/protobuf/ByteString;
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
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setCache(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setClientInfo(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
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
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setClientInfo(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setDeviceInfo(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;
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
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setDeviceInfo(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setIdfi(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setIdfi(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setIsFirstInit(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setIsFirstInit(Z)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setLegacyFlowUserConsent(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setLegacyFlowUserConsent(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setPrivacy(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1    # Lcom/google/protobuf/ByteString;
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
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setPrivacy(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setSessionId(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1    # Lcom/google/protobuf/ByteString;
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
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setSessionId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setUadsInitBlob(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1    # Lcom/google/protobuf/ByteString;
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
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setUadsInitBlob(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method
