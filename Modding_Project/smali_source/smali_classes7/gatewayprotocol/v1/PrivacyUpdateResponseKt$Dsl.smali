.class public final Lgatewayprotocol/v1/PrivacyUpdateResponseKt$Dsl;
.super Ljava/lang/Object;
.source "PrivacyUpdateResponseKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/PrivacyUpdateResponseKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/PrivacyUpdateResponseKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/PrivacyUpdateResponseKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgatewayprotocol/v1/PrivacyUpdateResponseKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgatewayprotocol/v1/PrivacyUpdateResponseKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgatewayprotocol/v1/PrivacyUpdateResponseKt$Dsl;->Companion:Lgatewayprotocol/v1/PrivacyUpdateResponseKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lgatewayprotocol/v1/PrivacyUpdateResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/PrivacyUpdateResponseKt$Dsl;-><init>(Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/PrivacyUpdateResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;

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
    check-cast v0, Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;

    .line 13
    .line 14
    return-object v0
.end method

.method public final clearContent()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/PrivacyUpdateResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;->clearContent()Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearVersion()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/PrivacyUpdateResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;->clearVersion()Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getContent()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/PrivacyUpdateResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;->getContent()Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getContent()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/PrivacyUpdateResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;->getVersion()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setContent(Lcom/google/protobuf/ByteString;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/PrivacyUpdateResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;->setContent(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setVersion(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/PrivacyUpdateResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;->setVersion(I)Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method
