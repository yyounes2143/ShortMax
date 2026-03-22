.class public final Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;
.super Ljava/lang/Object;
.source "StaticDeviceInfoKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->Companion:Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;-><init>(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android;
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

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
    check-cast v0, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android;

    .line 13
    .line 14
    return-object v0
.end method

.method public final clearAndroidFingerprint()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->clearAndroidFingerprint()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearApiLevel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->clearApiLevel()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearApkDeveloperSigningCertificateHash()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->clearApkDeveloperSigningCertificateHash()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearAppInstaller()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->clearAppInstaller()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearBuildBoard()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->clearBuildBoard()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearBuildBootloader()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->clearBuildBootloader()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearBuildBrand()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->clearBuildBrand()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearBuildDevice()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->clearBuildDevice()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearBuildDisplay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->clearBuildDisplay()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearBuildFingerprint()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->clearBuildFingerprint()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearBuildHardware()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->clearBuildHardware()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearBuildHost()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->clearBuildHost()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearBuildId()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->clearBuildId()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearBuildProduct()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->clearBuildProduct()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearExtensionVersion()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->clearExtensionVersion()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearPhoneType()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->clearPhoneType()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearSimOperator()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->clearSimOperator()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearVersionCode()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->clearVersionCode()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getAndroidFingerprint()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->getAndroidFingerprint()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getAndroidFingerprint()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getApiLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->getApiLevel()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getApkDeveloperSigningCertificateHash()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->getApkDeveloperSigningCertificateHash()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getApkDeveloperSigningCertificateHash()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getAppInstaller()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->getAppInstaller()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getAppInstaller()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getBuildBoard()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->getBuildBoard()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getBuildBoard()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getBuildBootloader()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->getBuildBootloader()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getBuildBootloader()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getBuildBrand()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->getBuildBrand()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getBuildBrand()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getBuildDevice()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->getBuildDevice()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getBuildDevice()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getBuildDisplay()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->getBuildDisplay()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getBuildDisplay()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getBuildFingerprint()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->getBuildFingerprint()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getBuildFingerprint()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getBuildHardware()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->getBuildHardware()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getBuildHardware()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getBuildHost()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->getBuildHost()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getBuildHost()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getBuildId()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->getBuildId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getBuildId()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getBuildProduct()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->getBuildProduct()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getBuildProduct()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getExtensionVersion()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->getExtensionVersion()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getPhoneType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->getPhoneType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getSimOperator()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->getSimOperator()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getSimOperator()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getVersionCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->getVersionCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasAndroidFingerprint()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->hasAndroidFingerprint()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasApiLevel()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->hasApiLevel()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasApkDeveloperSigningCertificateHash()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->hasApkDeveloperSigningCertificateHash()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasAppInstaller()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->hasAppInstaller()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasBuildBoard()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->hasBuildBoard()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasBuildBootloader()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->hasBuildBootloader()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasBuildBrand()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->hasBuildBrand()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasBuildDevice()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->hasBuildDevice()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasBuildDisplay()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->hasBuildDisplay()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasBuildFingerprint()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->hasBuildFingerprint()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasBuildHardware()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->hasBuildHardware()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasBuildHost()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->hasBuildHost()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasBuildId()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->hasBuildId()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasBuildProduct()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->hasBuildProduct()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasExtensionVersion()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->hasExtensionVersion()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasPhoneType()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->hasPhoneType()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasSimOperator()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->hasSimOperator()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasVersionCode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->hasVersionCode()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setAndroidFingerprint(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->setAndroidFingerprint(Ljava/lang/String;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setApiLevel(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->setApiLevel(I)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setApkDeveloperSigningCertificateHash(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->setApkDeveloperSigningCertificateHash(Ljava/lang/String;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setAppInstaller(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->setAppInstaller(Ljava/lang/String;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setBuildBoard(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->setBuildBoard(Ljava/lang/String;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setBuildBootloader(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->setBuildBootloader(Ljava/lang/String;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setBuildBrand(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->setBuildBrand(Ljava/lang/String;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setBuildDevice(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->setBuildDevice(Ljava/lang/String;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setBuildDisplay(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->setBuildDisplay(Ljava/lang/String;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setBuildFingerprint(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->setBuildFingerprint(Ljava/lang/String;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setBuildHardware(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->setBuildHardware(Ljava/lang/String;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setBuildHost(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->setBuildHost(Ljava/lang/String;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setBuildId(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->setBuildId(Ljava/lang/String;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setBuildProduct(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->setBuildProduct(Ljava/lang/String;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setExtensionVersion(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->setExtensionVersion(I)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setPhoneType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->setPhoneType(I)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setSimOperator(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->setSimOperator(Ljava/lang/String;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setVersionCode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;->setVersionCode(I)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method
