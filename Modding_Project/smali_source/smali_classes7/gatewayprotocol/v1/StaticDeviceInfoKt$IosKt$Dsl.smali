.class public final Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;
.super Ljava/lang/Object;
.source "StaticDeviceInfoKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl$Companion;,
        Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl$SkadnetworkIdProxy;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->Companion:Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;-><init>(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios;
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

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
    check-cast v0, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios;

    .line 13
    .line 14
    return-object v0
.end method

.method public final synthetic addAllSkadnetworkId(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "values"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->addAllSkadnetworkId(Ljava/lang/Iterable;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final synthetic addSkadnetworkId(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "value"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->addSkadnetworkId(Ljava/lang/String;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final clearBuiltSdkVersion()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->clearBuiltSdkVersion()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearCanMakePayments()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->clearCanMakePayments()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearScreenScale()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->clearScreenScale()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearSimulator()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->clearSimulator()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic clearSkadnetworkId(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 7
    .line 8
    invoke-virtual {p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->clearSkadnetworkId()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final clearSystemBootTime()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->clearSystemBootTime()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearXcodeBuildVersion()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->clearXcodeBuildVersion()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearXcodeSdkBuildVersion()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->clearXcodeSdkBuildVersion()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearXcodeVersion()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->clearXcodeVersion()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getBuiltSdkVersion()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->getBuiltSdkVersion()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getBuiltSdkVersion()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getCanMakePayments()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->getCanMakePayments()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getScreenScale()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->getScreenScale()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getSimulator()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->getSimulator()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getSkadnetworkId()Lcom/google/protobuf/kotlin/DslList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl$SkadnetworkIdProxy;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 2
    .line 3
    iget-object v1, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 4
    .line 5
    invoke-virtual {v1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->getSkadnetworkIdList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "_builder.getSkadnetworkIdList()"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final getSystemBootTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->getSystemBootTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getXcodeBuildVersion()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->getXcodeBuildVersion()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getXcodeBuildVersion()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getXcodeSdkBuildVersion()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->getXcodeSdkBuildVersion()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getXcodeSdkBuildVersion()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getXcodeVersion()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->getXcodeVersion()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getXcodeVersion()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final hasBuiltSdkVersion()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->hasBuiltSdkVersion()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasCanMakePayments()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->hasCanMakePayments()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasScreenScale()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->hasScreenScale()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasSimulator()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->hasSimulator()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasSystemBootTime()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->hasSystemBootTime()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasXcodeBuildVersion()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->hasXcodeBuildVersion()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasXcodeSdkBuildVersion()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->hasXcodeSdkBuildVersion()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasXcodeVersion()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->hasXcodeVersion()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final synthetic plusAssignAllSkadnetworkId(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl$SkadnetworkIdProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "values"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->addAllSkadnetworkId(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final synthetic plusAssignSkadnetworkId(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl$SkadnetworkIdProxy;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->addSkadnetworkId(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setBuiltSdkVersion(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->setBuiltSdkVersion(Ljava/lang/String;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setCanMakePayments(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->setCanMakePayments(Z)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setScreenScale(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->setScreenScale(I)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setSimulator(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->setSimulator(Z)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic setSkadnetworkId(Lcom/google/protobuf/kotlin/DslList;ILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "value"

    .line 7
    .line 8
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 12
    .line 13
    invoke-virtual {p1, p2, p3}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->setSkadnetworkId(ILjava/lang/String;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setSystemBootTime(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->setSystemBootTime(J)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setXcodeBuildVersion(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->setXcodeBuildVersion(Ljava/lang/String;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setXcodeSdkBuildVersion(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->setXcodeSdkBuildVersion(Ljava/lang/String;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setXcodeVersion(Ljava/lang/String;)V
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
    iget-object v0, p0, Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;->setXcodeVersion(Ljava/lang/String;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method
