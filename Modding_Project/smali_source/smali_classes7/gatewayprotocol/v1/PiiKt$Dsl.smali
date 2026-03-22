.class public final Lgatewayprotocol/v1/PiiKt$Dsl;
.super Ljava/lang/Object;
.source "PiiKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/PiiKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/PiiKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/PiiKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgatewayprotocol/v1/PiiKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgatewayprotocol/v1/PiiKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgatewayprotocol/v1/PiiKt$Dsl;->Companion:Lgatewayprotocol/v1/PiiKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/PiiKt$Dsl;-><init>(Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

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
    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    .line 13
    .line 14
    return-object v0
.end method

.method public final clearAdvertisingId()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->clearAdvertisingId()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearFid()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->clearFid()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearOpenAdvertisingTrackingId()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->clearOpenAdvertisingTrackingId()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearVendorId()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->clearVendorId()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getAdvertisingId()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->getAdvertisingId()Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getAdvertisingId()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getFid()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->getFid()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getFid()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getOpenAdvertisingTrackingId()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->getOpenAdvertisingTrackingId()Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getOpenAdvertisingTrackingId()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getVendorId()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->getVendorId()Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getVendorId()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final hasFid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->hasFid()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setAdvertisingId(Lcom/google/protobuf/ByteString;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->setAdvertisingId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setFid(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->setFid(Ljava/lang/String;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setOpenAdvertisingTrackingId(Lcom/google/protobuf/ByteString;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->setOpenAdvertisingTrackingId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setVendorId(Lcom/google/protobuf/ByteString;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->setVendorId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method
