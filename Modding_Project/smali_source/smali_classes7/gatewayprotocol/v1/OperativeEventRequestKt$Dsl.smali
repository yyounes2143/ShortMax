.class public final Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;
.super Ljava/lang/Object;
.source "OperativeEventRequestKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/OperativeEventRequestKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->Companion:Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;-><init>(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

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
    check-cast v0, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;

    .line 13
    .line 14
    return-object v0
.end method

.method public final clearAdFormat()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->clearAdFormat()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearAdditionalData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->clearAdditionalData()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearCampaignState()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->clearCampaignState()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearDynamicDeviceInfo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->clearDynamicDeviceInfo()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearEventId()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->clearEventId()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearEventType()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->clearEventType()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearImpressionOpportunityId()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->clearImpressionOpportunityId()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearSessionCounters()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->clearSessionCounters()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearSid()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->clearSid()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearStaticDeviceInfo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->clearStaticDeviceInfo()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearTrackingToken()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->clearTrackingToken()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getAdFormat()Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->getAdFormat()Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getAdFormat()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getAdFormatValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->getAdFormatValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getAdditionalData()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->getAdditionalData()Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getAdditionalData()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getCampaignState()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->getCampaignState()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getCampaignState()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getDynamicDeviceInfo()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getEventId()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->getEventId()Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getEventId()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getEventType()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->getEventType()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getEventType()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getEventTypeValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->getEventTypeValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getImpressionOpportunityId()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->getImpressionOpportunityId()Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getImpressionOpportunityId()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getSessionCounters()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getSid()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->getSid()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getSid()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getStaticDeviceInfo()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getTrackingToken()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->getTrackingToken()Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getTrackingToken()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final hasAdFormat()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->hasAdFormat()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasCampaignState()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->hasCampaignState()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasDynamicDeviceInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->hasDynamicDeviceInfo()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasSessionCounters()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->hasSessionCounters()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasStaticDeviceInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->hasStaticDeviceInfo()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setAdFormat(Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;
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
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->setAdFormat(Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setAdFormatValue(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->setAdFormatValue(I)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setAdditionalData(Lcom/google/protobuf/ByteString;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->setAdditionalData(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;
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
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->setCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
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
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setEventId(Lcom/google/protobuf/ByteString;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->setEventId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setEventType(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;
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
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->setEventType(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setEventTypeValue(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->setEventTypeValue(I)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
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
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setSid(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->setSid(Ljava/lang/String;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
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
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setTrackingToken(Lcom/google/protobuf/ByteString;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->setTrackingToken(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method
