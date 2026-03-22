.class public final Lgatewayprotocol/v1/RequestPolicyKt$Dsl;
.super Ljava/lang/Object;
.source "RequestPolicyKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/RequestPolicyKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/RequestPolicyKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/RequestPolicyKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgatewayprotocol/v1/RequestPolicyKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgatewayprotocol/v1/RequestPolicyKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgatewayprotocol/v1/RequestPolicyKt$Dsl;->Companion:Lgatewayprotocol/v1/RequestPolicyKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lgatewayprotocol/v1/RequestPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/RequestPolicyKt$Dsl;-><init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

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
    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 13
    .line 14
    return-object v0
.end method

.method public final clearRetryPolicy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->clearRetryPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearTimeoutPolicy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->clearTimeoutPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getRetryPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->getRetryPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getRetryPolicy()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getTimeoutPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->getTimeoutPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getTimeoutPolicy()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final hasRetryPolicy()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->hasRetryPolicy()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasTimeoutPolicy()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->hasTimeoutPolicy()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setRetryPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
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
    iget-object v0, p0, Lgatewayprotocol/v1/RequestPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->setRetryPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setTimeoutPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
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
    iget-object v0, p0, Lgatewayprotocol/v1/RequestPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->setTimeoutPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method
