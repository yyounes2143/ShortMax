.class public final Lgatewayprotocol/v1/TransactionDataKt$Dsl;
.super Ljava/lang/Object;
.source "TransactionDataKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/TransactionDataKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/TransactionDataKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/TransactionDataKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgatewayprotocol/v1/TransactionDataKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgatewayprotocol/v1/TransactionDataKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->Companion:Lgatewayprotocol/v1/TransactionDataKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TransactionDataKt$Dsl;-><init>(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

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
    check-cast v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    .line 13
    .line 14
    return-object v0
.end method

.method public final clearEventId()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->clearEventId()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearProduct()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->clearProduct()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearProductId()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->clearProductId()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearReceipt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->clearReceipt()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearTimestamp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->clearTimestamp()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearTransaction()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->clearTransaction()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearTransactionId()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->clearTransactionId()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearTransactionState()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->clearTransactionState()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getEventId()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->getEventId()Lcom/google/protobuf/ByteString;

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

.method public final getProduct()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->getProduct()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getProduct()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->getProductId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getProductId()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getReceipt()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->getReceipt()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getReceipt()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getTimestamp()Lcom/google/protobuf/Timestamp;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->getTimestamp()Lcom/google/protobuf/Timestamp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getTimestamp()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getTransaction()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->getTransaction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getTransaction()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getTransactionId()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->getTransactionId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getTransactionId()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getTransactionState()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->getTransactionState()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getTransactionState()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getTransactionStateValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->getTransactionStateValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasReceipt()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->hasReceipt()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasTimestamp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->hasTimestamp()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->setEventId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setProduct(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->setProduct(Ljava/lang/String;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setProductId(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->setProductId(Ljava/lang/String;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setReceipt(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->setReceipt(Ljava/lang/String;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setTimestamp(Lcom/google/protobuf/Timestamp;)V
    .locals 1
    .param p1    # Lcom/google/protobuf/Timestamp;
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
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->setTimestamp(Lcom/google/protobuf/Timestamp;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setTransaction(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->setTransaction(Ljava/lang/String;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setTransactionId(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->setTransactionId(Ljava/lang/String;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setTransactionState(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;
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
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->setTransactionState(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setTransactionStateValue(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;->setTransactionStateValue(I)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method
