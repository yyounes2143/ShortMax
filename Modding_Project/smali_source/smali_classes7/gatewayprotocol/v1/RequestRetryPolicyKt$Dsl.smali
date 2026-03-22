.class public final Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;
.super Ljava/lang/Object;
.source "RequestRetryPolicyKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/RequestRetryPolicyKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->Companion:Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;-><init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

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
    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    .line 13
    .line 14
    return-object v0
.end method

.method public final clearMaxDuration()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;->clearMaxDuration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearRetryJitterPct()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;->clearRetryJitterPct()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearRetryMaxInterval()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;->clearRetryMaxInterval()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearRetryScalingFactor()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;->clearRetryScalingFactor()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearRetryWaitBase()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;->clearRetryWaitBase()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearShouldStoreLocally()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;->clearShouldStoreLocally()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getMaxDuration()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;->getMaxDuration()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getRetryJitterPct()F
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;->getRetryJitterPct()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getRetryMaxInterval()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;->getRetryMaxInterval()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getRetryScalingFactor()F
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;->getRetryScalingFactor()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getRetryWaitBase()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;->getRetryWaitBase()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getShouldStoreLocally()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;->getShouldStoreLocally()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setMaxDuration(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;->setMaxDuration(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setRetryJitterPct(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;->setRetryJitterPct(F)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setRetryMaxInterval(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;->setRetryMaxInterval(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setRetryScalingFactor(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;->setRetryScalingFactor(F)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setRetryWaitBase(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;->setRetryWaitBase(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setShouldStoreLocally(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;->setShouldStoreLocally(Z)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method
