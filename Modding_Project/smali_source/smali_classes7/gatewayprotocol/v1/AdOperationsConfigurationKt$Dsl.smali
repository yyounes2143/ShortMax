.class public final Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl;
.super Ljava/lang/Object;
.source "AdOperationsConfigurationKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdOperationsConfigurationKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl;->Companion:Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl;-><init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;

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
    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    .line 13
    .line 14
    return-object v0
.end method

.method public final clearGetTokenTimeoutMs()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;->clearGetTokenTimeoutMs()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearLoadTimeoutMs()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;->clearLoadTimeoutMs()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearShowTimeoutMs()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;->clearShowTimeoutMs()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getGetTokenTimeoutMs()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;->getGetTokenTimeoutMs()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getLoadTimeoutMs()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;->getLoadTimeoutMs()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getShowTimeoutMs()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;->getShowTimeoutMs()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setGetTokenTimeoutMs(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;->setGetTokenTimeoutMs(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setLoadTimeoutMs(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;->setLoadTimeoutMs(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setShowTimeoutMs(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;->setShowTimeoutMs(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method
