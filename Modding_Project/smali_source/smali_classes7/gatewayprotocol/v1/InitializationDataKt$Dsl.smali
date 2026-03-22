.class public final Lgatewayprotocol/v1/InitializationDataKt$Dsl;
.super Ljava/lang/Object;
.source "InitializationDataKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationDataKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/InitializationDataKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/InitializationDataKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgatewayprotocol/v1/InitializationDataKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgatewayprotocol/v1/InitializationDataKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->Companion:Lgatewayprotocol/v1/InitializationDataKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationDataKt$Dsl;-><init>(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

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
    check-cast v0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    .line 13
    .line 14
    return-object v0
.end method

.method public final clearInitializationRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;->clearInitializationRequest()Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearSharedData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;->clearSharedData()Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getInitializationRequest()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;->getInitializationRequest()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getInitializationRequest()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getInitializationRequestOrNull(Lgatewayprotocol/v1/InitializationDataKt$Dsl;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;
    .locals 1
    .param p1    # Lgatewayprotocol/v1/InitializationDataKt$Dsl;
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
    iget-object p1, p1, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    .line 7
    .line 8
    invoke-static {p1}, Lgatewayprotocol/v1/InitializationDataKtKt;->getInitializationRequestOrNull(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationDataOrBuilder;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final getSharedData()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;->getSharedData()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getSharedData()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getSharedDataOrNull(Lgatewayprotocol/v1/InitializationDataKt$Dsl;)Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .locals 1
    .param p1    # Lgatewayprotocol/v1/InitializationDataKt$Dsl;
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
    iget-object p1, p1, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    .line 7
    .line 8
    invoke-static {p1}, Lgatewayprotocol/v1/InitializationDataKtKt;->getSharedDataOrNull(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationDataOrBuilder;)Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final hasInitializationRequest()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;->hasInitializationRequest()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasSharedData()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;->hasSharedData()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setInitializationRequest(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;
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
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;->setInitializationRequest(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setSharedData(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
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
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;->setSharedData(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method
