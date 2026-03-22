.class public final Lgatewayprotocol/v1/CampaignKt$Dsl;
.super Ljava/lang/Object;
.source "CampaignKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/CampaignKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/CampaignKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/CampaignKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgatewayprotocol/v1/CampaignKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgatewayprotocol/v1/CampaignKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgatewayprotocol/v1/CampaignKt$Dsl;->Companion:Lgatewayprotocol/v1/CampaignKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignKt$Dsl;-><init>(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

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
    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    .line 13
    .line 14
    return-object v0
.end method

.method public final clearData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->clearData()Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearDataVersion()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->clearDataVersion()Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearImpressionOpportunityId()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->clearImpressionOpportunityId()Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearLoadTimestamp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->clearLoadTimestamp()Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearPlacementId()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->clearPlacementId()Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearShowTimestamp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->clearShowTimestamp()Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getData()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->getData()Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getData()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getDataVersion()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->getDataVersion()I

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
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->getImpressionOpportunityId()Lcom/google/protobuf/ByteString;

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

.method public final getLoadTimestamp()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->getLoadTimestamp()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getLoadTimestamp()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getPlacementId()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->getPlacementId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getPlacementId()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getShowTimestamp()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->getShowTimestamp()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getShowTimestamp()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getShowTimestampOrNull(Lgatewayprotocol/v1/CampaignKt$Dsl;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .locals 1
    .param p1    # Lgatewayprotocol/v1/CampaignKt$Dsl;
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
    iget-object p1, p1, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 7
    .line 8
    invoke-static {p1}, Lgatewayprotocol/v1/CampaignKtKt;->getShowTimestampOrNull(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignOrBuilder;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final hasLoadTimestamp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->hasLoadTimestamp()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasShowTimestamp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->hasShowTimestamp()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setData(Lcom/google/protobuf/ByteString;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->setData(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setDataVersion(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->setDataVersion(I)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

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
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setLoadTimestamp(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
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
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->setLoadTimestamp(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setPlacementId(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->setPlacementId(Ljava/lang/String;)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setShowTimestamp(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
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
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->setShowTimestamp(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method
