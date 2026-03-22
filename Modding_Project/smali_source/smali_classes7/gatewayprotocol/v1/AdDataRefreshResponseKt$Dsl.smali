.class public final Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;
.super Ljava/lang/Object;
.source "AdDataRefreshResponseKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdDataRefreshResponseKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;->Companion:Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;-><init>(Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

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
    check-cast v0, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    .line 13
    .line 14
    return-object v0
.end method

.method public final clearAdData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;->clearAdData()Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearAdDataRefreshToken()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;->clearAdDataRefreshToken()Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearAdDataVersion()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;->clearAdDataVersion()Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;->clearError()Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearTrackingToken()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;->clearTrackingToken()Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getAdData()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;->getAdData()Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getAdData()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getAdDataRefreshToken()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;->getAdDataRefreshToken()Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getAdDataRefreshToken()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getAdDataVersion()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;->getAdDataVersion()I

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
    iget-object v0, p0, Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

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

.method public final getErrorOrNull(Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1
    .param p1    # Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;
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
    iget-object p1, p1, Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 7
    .line 8
    invoke-static {p1}, Lgatewayprotocol/v1/AdDataRefreshResponseKtKt;->getErrorOrNull(Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponseOrBuilder;)Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final getTrackingToken()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;->getTrackingToken()Lcom/google/protobuf/ByteString;

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

.method public final hasError()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;->hasError()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setAdData(Lcom/google/protobuf/ByteString;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;->setAdData(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setAdDataRefreshToken(Lcom/google/protobuf/ByteString;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;->setAdDataRefreshToken(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setAdDataVersion(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;->setAdDataVersion(I)Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

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
    iget-object v0, p0, Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;->setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

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
    iget-object v0, p0, Lgatewayprotocol/v1/AdDataRefreshResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;->setTrackingToken(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method
