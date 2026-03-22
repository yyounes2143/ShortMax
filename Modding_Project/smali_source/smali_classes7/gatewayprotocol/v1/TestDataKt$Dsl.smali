.class public final Lgatewayprotocol/v1/TestDataKt$Dsl;
.super Ljava/lang/Object;
.source "TestDataKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/TestDataKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/TestDataKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/TestDataKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgatewayprotocol/v1/TestDataKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgatewayprotocol/v1/TestDataKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgatewayprotocol/v1/TestDataKt$Dsl;->Companion:Lgatewayprotocol/v1/TestDataKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TestDataKt$Dsl;-><init>(Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/TestDataOuterClass$TestData;
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

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
    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    .line 13
    .line 14
    return-object v0
.end method

.method public final clearForceCampaignId()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->clearForceCampaignId()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearForceCountry()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->clearForceCountry()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearForceCountrySubdivision()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->clearForceCountrySubdivision()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearForceExchangeTestMode()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->clearForceExchangeTestMode()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getForceCampaignId()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->getForceCampaignId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getForceCampaignId()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getForceCountry()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->getForceCountry()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getForceCountry()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getForceCountrySubdivision()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->getForceCountrySubdivision()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getForceCountrySubdivision()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getForceExchangeTestMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->getForceExchangeTestMode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasForceCampaignId()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->hasForceCampaignId()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasForceCountry()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->hasForceCountry()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasForceCountrySubdivision()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->hasForceCountrySubdivision()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasForceExchangeTestMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->hasForceExchangeTestMode()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setForceCampaignId(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->setForceCampaignId(Ljava/lang/String;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setForceCountry(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->setForceCountry(Ljava/lang/String;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setForceCountrySubdivision(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->setForceCountrySubdivision(Ljava/lang/String;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setForceExchangeTestMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->setForceExchangeTestMode(I)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method
