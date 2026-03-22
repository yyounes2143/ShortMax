.class public final Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;
.super Ljava/lang/Object;
.source "DynamicDeviceInfoKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->Companion:Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;-><init>(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

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
    check-cast v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;

    .line 13
    .line 14
    return-object v0
.end method

.method public final clearAdbEnabled()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->clearAdbEnabled()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearAirplaneMode()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->clearAirplaneMode()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearChargingType()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->clearChargingType()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearDeviceElapsedRealtime()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->clearDeviceElapsedRealtime()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearDeviceUpTime()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->clearDeviceUpTime()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearMaxVolume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->clearMaxVolume()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearNetworkCapabilityTransports()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->clearNetworkCapabilityTransports()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearNetworkConnected()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->clearNetworkConnected()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearNetworkMetered()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->clearNetworkMetered()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearNetworkType()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->clearNetworkType()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearSdCardPresent()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->clearSdCardPresent()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearStayOnWhilePluggedIn()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->clearStayOnWhilePluggedIn()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearTelephonyManagerNetworkType()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->clearTelephonyManagerNetworkType()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearUsbConnected()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->clearUsbConnected()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearVolume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->clearVolume()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getAdbEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->getAdbEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getAirplaneMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->getAirplaneMode()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getChargingType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->getChargingType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getDeviceElapsedRealtime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->getDeviceElapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getDeviceUpTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->getDeviceUpTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getMaxVolume()D
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->getMaxVolume()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getNetworkCapabilityTransports()Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->getNetworkCapabilityTransports()Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getNetworkCapabilityTransports()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getNetworkConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->getNetworkConnected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getNetworkMetered()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->getNetworkMetered()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getNetworkType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->getNetworkType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getSdCardPresent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->getSdCardPresent()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getStayOnWhilePluggedIn()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->getStayOnWhilePluggedIn()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getTelephonyManagerNetworkType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->getTelephonyManagerNetworkType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getUsbConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->getUsbConnected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getVolume()D
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->getVolume()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final hasAdbEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->hasAdbEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasAirplaneMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->hasAirplaneMode()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasChargingType()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->hasChargingType()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasDeviceElapsedRealtime()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->hasDeviceElapsedRealtime()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasDeviceUpTime()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->hasDeviceUpTime()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasMaxVolume()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->hasMaxVolume()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasNetworkCapabilityTransports()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->hasNetworkCapabilityTransports()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasNetworkConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->hasNetworkConnected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasNetworkMetered()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->hasNetworkMetered()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasNetworkType()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->hasNetworkType()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasSdCardPresent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->hasSdCardPresent()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasStayOnWhilePluggedIn()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->hasStayOnWhilePluggedIn()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasTelephonyManagerNetworkType()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->hasTelephonyManagerNetworkType()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasUsbConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->hasUsbConnected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasVolume()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->hasVolume()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setAdbEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->setAdbEnabled(Z)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setAirplaneMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->setAirplaneMode(Z)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setChargingType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->setChargingType(I)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setDeviceElapsedRealtime(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->setDeviceElapsedRealtime(J)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setDeviceUpTime(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->setDeviceUpTime(J)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setMaxVolume(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->setMaxVolume(D)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setNetworkCapabilityTransports(Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports;
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
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->setNetworkCapabilityTransports(Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setNetworkConnected(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->setNetworkConnected(Z)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setNetworkMetered(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->setNetworkMetered(Z)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setNetworkType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->setNetworkType(I)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setSdCardPresent(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->setSdCardPresent(Z)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setStayOnWhilePluggedIn(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->setStayOnWhilePluggedIn(Z)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setTelephonyManagerNetworkType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->setTelephonyManagerNetworkType(I)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setUsbConnected(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->setUsbConnected(Z)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setVolume(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;->setVolume(D)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method
