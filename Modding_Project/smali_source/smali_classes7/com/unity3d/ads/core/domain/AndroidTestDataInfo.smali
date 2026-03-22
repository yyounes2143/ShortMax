.class public final Lcom/unity3d/ads/core/domain/AndroidTestDataInfo;
.super Ljava/lang/Object;
.source "AndroidTestDataInfo.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/GetTestDataInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/AndroidTestDataInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAndroidTestDataInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidTestDataInfo.kt\ncom/unity3d/ads/core/domain/AndroidTestDataInfo\n+ 2 TestDataKt.kt\ngatewayprotocol/v1/TestDataKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n10#2:19\n1#3:20\n1#3:21\n*S KotlinDebug\n*F\n+ 1 AndroidTestDataInfo.kt\ncom/unity3d/ads/core/domain/AndroidTestDataInfo\n*L\n10#1:19\n10#1:20\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/domain/AndroidTestDataInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXCHANGE_TEST_MODE:Ljava/lang/String; = "ExchangeTestMode"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final androidManifestIntPropertyReader:Lcom/unity3d/ads/core/configuration/AndroidManifestIntPropertyReader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidTestDataInfo$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/AndroidTestDataInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/unity3d/ads/core/domain/AndroidTestDataInfo;->Companion:Lcom/unity3d/ads/core/domain/AndroidTestDataInfo$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/configuration/AndroidManifestIntPropertyReader;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/configuration/AndroidManifestIntPropertyReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "androidManifestIntPropertyReader"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidTestDataInfo;->androidManifestIntPropertyReader:Lcom/unity3d/ads/core/configuration/AndroidManifestIntPropertyReader;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public invoke()Lgatewayprotocol/v1/TestDataOuterClass$TestData;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lgatewayprotocol/v1/TestDataKt$Dsl;->Companion:Lgatewayprotocol/v1/TestDataKt$Dsl$Companion;

    .line 2
    .line 3
    invoke-static {}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->newBuilder()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "newBuilder()"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/TestDataKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;)Lgatewayprotocol/v1/TestDataKt$Dsl;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidTestDataInfo;->androidManifestIntPropertyReader:Lcom/unity3d/ads/core/configuration/AndroidManifestIntPropertyReader;

    .line 17
    .line 18
    const-string v2, "ExchangeTestMode"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/unity3d/ads/core/configuration/AndroidManifestIntPropertyReader;->getPropertyByName(Ljava/lang/String;)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/TestDataKt$Dsl;->setForceExchangeTestMode(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataKt$Dsl;->_build()Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->hasForceExchangeTestMode()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0
.end method
