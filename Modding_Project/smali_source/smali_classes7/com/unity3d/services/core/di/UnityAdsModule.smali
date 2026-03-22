.class public final Lcom/unity3d/services/core/di/UnityAdsModule;
.super Ljava/lang/Object;
.source "UnityAdsModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUnityAdsModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnityAdsModule.kt\ncom/unity3d/services/core/di/UnityAdsModule\n+ 2 NativeConfigurationKt.kt\ngatewayprotocol/v1/NativeConfigurationKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 DiagnosticEventsConfigurationKt.kt\ngatewayprotocol/v1/DiagnosticEventsConfigurationKtKt\n+ 5 FeatureFlagsKt.kt\ngatewayprotocol/v1/FeatureFlagsKtKt\n+ 6 AdOperationsConfigurationKt.kt\ngatewayprotocol/v1/AdOperationsConfigurationKtKt\n+ 7 RequestPolicyKt.kt\ngatewayprotocol/v1/RequestPolicyKtKt\n+ 8 RequestRetryPolicyKt.kt\ngatewayprotocol/v1/RequestRetryPolicyKtKt\n+ 9 RequestTimeoutPolicyKt.kt\ngatewayprotocol/v1/RequestTimeoutPolicyKtKt\n*L\n1#1,311:1\n10#2:312\n1#3:313\n1#3:315\n1#3:317\n1#3:319\n1#3:321\n1#3:323\n1#3:325\n10#4:314\n10#5:316\n10#6:318\n10#7:320\n10#8:322\n10#9:324\n*S KotlinDebug\n*F\n+ 1 UnityAdsModule.kt\ncom/unity3d/services/core/di/UnityAdsModule\n*L\n212#1:312\n212#1:313\n218#1:315\n224#1:317\n277#1:319\n285#1:321\n292#1:323\n303#1:325\n218#1:314\n224#1:316\n277#1:318\n285#1:320\n292#1:322\n303#1:324\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getDefaultAdOperations()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .locals 3

    .line 1
    sget-object v0, Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl;->Companion:Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl$Companion;

    .line 2
    .line 3
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->newBuilder()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;

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
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;)Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/16 v1, 0x7530

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl;->setLoadTimeoutMs(I)V

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x2710

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl;->setShowTimeoutMs(I)V

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x2ee

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl;->setGetTokenTimeoutMs(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdOperationsConfigurationKt$Dsl;->_build()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method private final getDefaultRequestPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;
    .locals 3

    .line 1
    sget-object v0, Lgatewayprotocol/v1/RequestPolicyKt$Dsl;->Companion:Lgatewayprotocol/v1/RequestPolicyKt$Dsl$Companion;

    .line 2
    .line 3
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->newBuilder()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

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
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/RequestPolicyKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;)Lgatewayprotocol/v1/RequestPolicyKt$Dsl;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0}, Lcom/unity3d/services/core/di/UnityAdsModule;->getDefaultRequestRetryPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/RequestPolicyKt$Dsl;->setRetryPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/unity3d/services/core/di/UnityAdsModule;->getDefaultRequestTimeoutPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/RequestPolicyKt$Dsl;->setTimeoutPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lgatewayprotocol/v1/RequestPolicyKt$Dsl;->_build()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method

.method private final getDefaultRequestRetryPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .locals 3

    .line 1
    sget-object v0, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->Companion:Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl$Companion;

    .line 2
    .line 3
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->newBuilder()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

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
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;)Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0x1d4c0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->setMaxDuration(I)V

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x1f4

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->setRetryWaitBase(I)V

    .line 25
    .line 26
    .line 27
    const v1, 0x3dcccccd    # 0.1f

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->setRetryJitterPct(F)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->setShouldStoreLocally(Z)V

    .line 35
    .line 36
    .line 37
    const/16 v1, 0x9c4

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->setRetryMaxInterval(I)V

    .line 40
    .line 41
    .line 42
    const/high16 v1, 0x40000000    # 2.0f

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->setRetryScalingFactor(F)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lgatewayprotocol/v1/RequestRetryPolicyKt$Dsl;->_build()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method private final getDefaultRequestTimeoutPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .locals 3

    .line 1
    sget-object v0, Lgatewayprotocol/v1/RequestTimeoutPolicyKt$Dsl;->Companion:Lgatewayprotocol/v1/RequestTimeoutPolicyKt$Dsl$Companion;

    .line 2
    .line 3
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->newBuilder()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$Builder;

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
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/RequestTimeoutPolicyKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$Builder;)Lgatewayprotocol/v1/RequestTimeoutPolicyKt$Dsl;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/16 v1, 0x7530

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/RequestTimeoutPolicyKt$Dsl;->setConnectTimeoutMs(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/RequestTimeoutPolicyKt$Dsl;->setReadTimeoutMs(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/RequestTimeoutPolicyKt$Dsl;->setWriteTimeoutMs(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/RequestTimeoutPolicyKt$Dsl;->setOverallTimeoutMs(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lgatewayprotocol/v1/RequestTimeoutPolicyKt$Dsl;->_build()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method

.method private final provideByteStringDataSource(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;",
            ">;)",
            "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/unity3d/ads/core/data/datasource/AndroidByteStringDataSource;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/data/datasource/AndroidByteStringDataSource;-><init>(Landroidx/datastore/core/DataStore;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final provideByteStringDataStore(Landroid/content/Context;Lgt/c0;Ljava/lang/String;)Landroidx/datastore/core/DataStore;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lgt/c0;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/core/DataStoreFactory;->INSTANCE:Landroidx/datastore/core/DataStoreFactory;

    .line 2
    .line 3
    new-instance v1, Lcom/unity3d/ads/core/data/model/ByteStringSerializer;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/unity3d/ads/core/data/model/ByteStringSerializer;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {v2, v3, v2}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p2, v2}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p2}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    new-instance v5, Lcom/unity3d/services/core/di/UnityAdsModule$provideByteStringDataStore$1;

    .line 23
    .line 24
    invoke-direct {v5, p1, p3}, Lcom/unity3d/services/core/di/UnityAdsModule$provideByteStringDataStore$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v6, 0x4

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static/range {v0 .. v7}, Landroidx/datastore/core/DataStoreFactory;->create$default(Landroidx/datastore/core/DataStoreFactory;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lgt/g0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/datastore/core/DataStore;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method private final provideJsonStorage(Lcom/unity3d/services/core/device/StorageManager$StorageType;)Lcom/unity3d/services/core/misc/JsonStorage;
    .locals 1

    .line 1
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/unity3d/services/core/device/StorageManager;->init(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lcom/unity3d/services/core/device/StorageManager;->getStorage(Lcom/unity3d/services/core/device/StorageManager$StorageType;)Lcom/unity3d/services/core/device/Storage;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "getStorage(storageType)"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "StorageManager failed to initialize"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method


# virtual methods
.method public final androidContext()Landroid/content/Context;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getApplicationContext()"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final asyncTokenStorage(Lcom/unity3d/services/ads/token/TokenStorage;Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;)Lcom/unity3d/services/ads/token/AsyncTokenStorage;
    .locals 3
    .param p1    # Lcom/unity3d/services/ads/token/TokenStorage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "tokenStorage"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sdkMetricsSender"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/unity3d/services/ads/token/InMemoryAsyncTokenStorage;

    .line 12
    .line 13
    new-instance v1, Landroid/os/Handler;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v0, v2, v1, p2, p1}, Lcom/unity3d/services/ads/token/InMemoryAsyncTokenStorage;-><init>(Lcom/unity3d/services/ads/token/INativeTokenGenerator;Landroid/os/Handler;Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;Lcom/unity3d/services/ads/token/TokenStorage;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final auidDataStore(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;
    .locals 1
    .param p1    # Landroidx/datastore/core/DataStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;",
            ">;)",
            "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "dataStore"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/UnityAdsModule;->provideByteStringDataSource(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final defaultDispatcher()Lgt/c0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lgt/q0;->a()Lgt/c0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final defaultNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->Companion:Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$Companion;

    .line 2
    .line 3
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->newBuilder()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

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
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;)Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0}, Lcom/unity3d/services/core/di/UnityAdsModule;->getDefaultAdOperations()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->setAdOperations(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/unity3d/services/core/di/UnityAdsModule;->getDefaultRequestPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->setInitPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/unity3d/services/core/di/UnityAdsModule;->getDefaultRequestPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->setAdPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/unity3d/services/core/di/UnityAdsModule;->getDefaultRequestPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->setOtherPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/unity3d/services/core/di/UnityAdsModule;->getDefaultRequestPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->setOperativeEventPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    .line 49
    .line 50
    .line 51
    sget-object v1, Lgatewayprotocol/v1/DiagnosticEventsConfigurationKt$Dsl;->Companion:Lgatewayprotocol/v1/DiagnosticEventsConfigurationKt$Dsl$Companion;

    .line 52
    .line 53
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->newBuilder()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v3}, Lgatewayprotocol/v1/DiagnosticEventsConfigurationKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$Builder;)Lgatewayprotocol/v1/DiagnosticEventsConfigurationKt$Dsl;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const/4 v3, 0x1

    .line 65
    invoke-virtual {v1, v3}, Lgatewayprotocol/v1/DiagnosticEventsConfigurationKt$Dsl;->setEnabled(Z)V

    .line 66
    .line 67
    .line 68
    const/16 v4, 0xa

    .line 69
    .line 70
    invoke-virtual {v1, v4}, Lgatewayprotocol/v1/DiagnosticEventsConfigurationKt$Dsl;->setMaxBatchSize(I)V

    .line 71
    .line 72
    .line 73
    const/16 v4, 0x7530

    .line 74
    .line 75
    invoke-virtual {v1, v4}, Lgatewayprotocol/v1/DiagnosticEventsConfigurationKt$Dsl;->setMaxBatchIntervalMs(I)V

    .line 76
    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    invoke-virtual {v1, v4}, Lgatewayprotocol/v1/DiagnosticEventsConfigurationKt$Dsl;->setTtmEnabled(Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lgatewayprotocol/v1/DiagnosticEventsConfigurationKt$Dsl;->_build()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->setDiagnosticEvents(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V

    .line 87
    .line 88
    .line 89
    sget-object v1, Lgatewayprotocol/v1/FeatureFlagsKt$Dsl;->Companion:Lgatewayprotocol/v1/FeatureFlagsKt$Dsl$Companion;

    .line 90
    .line 91
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->newBuilder()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v4}, Lgatewayprotocol/v1/FeatureFlagsKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags$Builder;)Lgatewayprotocol/v1/FeatureFlagsKt$Dsl;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1, v3}, Lgatewayprotocol/v1/FeatureFlagsKt$Dsl;->setBoldSdkNextSessionEnabled(Z)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Lgatewayprotocol/v1/FeatureFlagsKt$Dsl;->_build()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->setFeatureFlags(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_build()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    return-object v0
.end method

.method public final gatewayCacheDataStore(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;
    .locals 1
    .param p1    # Landroidx/datastore/core/DataStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;",
            ">;)",
            "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "dataStore"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/UnityAdsModule;->provideByteStringDataSource(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final gatewayDataStore(Landroid/content/Context;Lgt/c0;)Landroidx/datastore/core/DataStore;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lgt/c0;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dispatcher"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "gateway_cache.pb"

    .line 12
    .line 13
    invoke-direct {p0, p1, p2, v0}, Lcom/unity3d/services/core/di/UnityAdsModule;->provideByteStringDataStore(Landroid/content/Context;Lgt/c0;Ljava/lang/String;)Landroidx/datastore/core/DataStore;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final getTokenCoroutineScope(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lgt/d0;Lkotlinx/coroutines/r;)Lgt/g0;
    .locals 1
    .param p1    # Lcom/unity3d/services/core/domain/ISDKDispatchers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/d0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "dispatchers"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errorHandler"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parentJob"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lgt/c0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p3, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p3, Lgt/f0;

    .line 25
    .line 26
    const-string v0, "get_token_scope"

    .line 27
    .line 28
    invoke-direct {p3, v0}, Lgt/f0;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method public final glInfoDataStore(Landroid/content/Context;Lgt/c0;Landroidx/datastore/core/DataMigration;)Landroidx/datastore/core/DataStore;
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/datastore/core/DataMigration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lgt/c0;",
            "Landroidx/datastore/core/DataMigration<",
            "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;",
            ">;)",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchGLInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Landroidx/datastore/core/DataStoreFactory;->INSTANCE:Landroidx/datastore/core/DataStoreFactory;

    .line 2
    new-instance v2, Lcom/unity3d/ads/core/data/model/ByteStringSerializer;

    invoke-direct {v2}, Lcom/unity3d/ads/core/data/model/ByteStringSerializer;-><init>()V

    .line 3
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 p3, 0x0

    const/4 v0, 0x1

    .line 4
    invoke-static {p3, v0, p3}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    move-result-object p3

    invoke-virtual {p2, p3}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    move-result-object v5

    .line 5
    new-instance v6, Lcom/unity3d/services/core/di/UnityAdsModule$glInfoDataStore$1;

    invoke-direct {v6, p1}, Lcom/unity3d/services/core/di/UnityAdsModule$glInfoDataStore$1;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/datastore/core/DataStoreFactory;->create$default(Landroidx/datastore/core/DataStoreFactory;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lgt/g0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    return-object p1
.end method

.method public final glInfoDataStore(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;
    .locals 1
    .param p1    # Landroidx/datastore/core/DataStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;",
            ">;)",
            "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "dataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/UnityAdsModule;->provideByteStringDataSource(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;

    move-result-object p1

    return-object p1
.end method

.method public final iapTransactionDataStore(Landroid/content/Context;Lgt/c0;)Landroidx/datastore/core/DataStore;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lgt/c0;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "iap_transaction.pb"

    invoke-direct {p0, p1, p2, v0}, Lcom/unity3d/services/core/di/UnityAdsModule;->provideByteStringDataStore(Landroid/content/Context;Lgt/c0;Ljava/lang/String;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    return-object p1
.end method

.method public final iapTransactionDataStore(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;
    .locals 1
    .param p1    # Landroidx/datastore/core/DataStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;",
            ">;)",
            "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "dataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/UnityAdsModule;->provideByteStringDataSource(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;

    move-result-object p1

    return-object p1
.end method

.method public final idfiDataStore(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;
    .locals 1
    .param p1    # Landroidx/datastore/core/DataStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;",
            ">;)",
            "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "dataStore"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/UnityAdsModule;->provideByteStringDataSource(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final initCoroutineScope(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lgt/d0;Lkotlinx/coroutines/r;)Lgt/g0;
    .locals 1
    .param p1    # Lcom/unity3d/services/core/domain/ISDKDispatchers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/d0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "dispatchers"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errorHandler"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parentJob"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lgt/c0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p3, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p3, Lgt/f0;

    .line 25
    .line 26
    const-string v0, "init_scope"

    .line 27
    .line 28
    invoke-direct {p3, v0}, Lgt/f0;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method public final ioDispatcher()Lgt/c0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final loadCoroutineScope(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lgt/d0;Lkotlinx/coroutines/r;)Lgt/g0;
    .locals 1
    .param p1    # Lcom/unity3d/services/core/domain/ISDKDispatchers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/d0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "dispatchers"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errorHandler"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parentJob"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lgt/c0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p3, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p3, Lgt/f0;

    .line 25
    .line 26
    const-string v0, "load_scope"

    .line 27
    .line 28
    invoke-direct {p3, v0}, Lgt/f0;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method public final mainDispatcher()Lgt/c0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final measurementService(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Lcom/unity3d/services/ads/measurements/MeasurementsService;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/services/core/domain/ISDKDispatchers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dispatchers"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/unity3d/services/ads/measurements/MeasurementsService;

    .line 12
    .line 13
    sget-object v1, Lcom/unity3d/services/core/webview/bridge/SharedInstances;->INSTANCE:Lcom/unity3d/services/core/webview/bridge/SharedInstances;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/unity3d/services/core/webview/bridge/SharedInstances;->getWebViewEventSender()Lcom/unity3d/services/core/webview/bridge/IEventSender;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, p1, p2, v1}, Lcom/unity3d/services/ads/measurements/MeasurementsService;-><init>(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/services/core/webview/bridge/IEventSender;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final memoryJsonStorage()Lcom/unity3d/services/core/misc/JsonStorage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/unity3d/services/core/device/StorageManager$StorageType;->MEMORY:Lcom/unity3d/services/core/device/StorageManager$StorageType;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/unity3d/services/core/di/UnityAdsModule;->provideJsonStorage(Lcom/unity3d/services/core/device/StorageManager$StorageType;)Lcom/unity3d/services/core/misc/JsonStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final nativeConfigurationDataStore(Landroid/content/Context;Lgt/c0;)Landroidx/datastore/core/DataStore;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lgt/c0;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "native_configuration.pb"

    invoke-direct {p0, p1, p2, v0}, Lcom/unity3d/services/core/di/UnityAdsModule;->provideByteStringDataStore(Landroid/content/Context;Lgt/c0;Ljava/lang/String;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    return-object p1
.end method

.method public final nativeConfigurationDataStore(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;
    .locals 1
    .param p1    # Landroidx/datastore/core/DataStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;",
            ">;)",
            "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "dataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/UnityAdsModule;->provideByteStringDataSource(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;

    move-result-object p1

    return-object p1
.end method

.method public final offerwallSignalsCoroutineScope(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lgt/d0;Lkotlinx/coroutines/r;)Lgt/g0;
    .locals 1
    .param p1    # Lcom/unity3d/services/core/domain/ISDKDispatchers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/d0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "dispatchers"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errorHandler"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parentJob"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lgt/c0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p3, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p3, Lgt/f0;

    .line 25
    .line 26
    const-string v0, "offerwall_scope"

    .line 27
    .line 28
    invoke-direct {p3, v0}, Lgt/f0;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method public final omidCoroutineScope(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lgt/d0;Lkotlinx/coroutines/r;)Lgt/g0;
    .locals 1
    .param p1    # Lcom/unity3d/services/core/domain/ISDKDispatchers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/d0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "dispatchers"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errorHandler"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parentJob"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lgt/c0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p3, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p3, Lgt/f0;

    .line 25
    .line 26
    const-string v0, "omid_scope"

    .line 27
    .line 28
    invoke-direct {p3, v0}, Lgt/f0;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method public final privacyDataStore(Landroid/content/Context;Lgt/c0;)Landroidx/datastore/core/DataStore;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lgt/c0;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "privacy.pb"

    invoke-direct {p0, p1, p2, v0}, Lcom/unity3d/services/core/di/UnityAdsModule;->provideByteStringDataStore(Landroid/content/Context;Lgt/c0;Ljava/lang/String;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    return-object p1
.end method

.method public final privacyDataStore(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;
    .locals 1
    .param p1    # Landroidx/datastore/core/DataStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;",
            ">;)",
            "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "dataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/UnityAdsModule;->provideByteStringDataSource(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;

    move-result-object p1

    return-object p1
.end method

.method public final privacyFsmDataStore(Landroid/content/Context;Lgt/c0;)Landroidx/datastore/core/DataStore;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lgt/c0;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "privacy_fsm.pb"

    invoke-direct {p0, p1, p2, v0}, Lcom/unity3d/services/core/di/UnityAdsModule;->provideByteStringDataStore(Landroid/content/Context;Lgt/c0;Ljava/lang/String;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    return-object p1
.end method

.method public final privacyFsmDataStore(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;
    .locals 1
    .param p1    # Landroidx/datastore/core/DataStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;",
            ">;)",
            "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "dataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/UnityAdsModule;->provideByteStringDataSource(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;

    move-result-object p1

    return-object p1
.end method

.method public final privateJsonStorage()Lcom/unity3d/services/core/misc/JsonStorage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/unity3d/services/core/device/StorageManager$StorageType;->PRIVATE:Lcom/unity3d/services/core/device/StorageManager$StorageType;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/unity3d/services/core/di/UnityAdsModule;->provideJsonStorage(Lcom/unity3d/services/core/device/StorageManager$StorageType;)Lcom/unity3d/services/core/misc/JsonStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final publicApiJob(Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;)Lkotlinx/coroutines/r;
    .locals 2
    .param p1    # Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "diagnosticEventRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/t;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/unity3d/services/core/di/UnityAdsModule$publicApiJob$1$1;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Lcom/unity3d/services/core/di/UnityAdsModule$publicApiJob$1$1;-><init>(Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Lkotlinx/coroutines/r;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lgt/s0;

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final publicJsonStorage()Lcom/unity3d/services/core/misc/JsonStorage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/unity3d/services/core/device/StorageManager$StorageType;->PUBLIC:Lcom/unity3d/services/core/device/StorageManager$StorageType;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/unity3d/services/core/di/UnityAdsModule;->provideJsonStorage(Lcom/unity3d/services/core/device/StorageManager$StorageType;)Lcom/unity3d/services/core/misc/JsonStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final scarSignalsCoroutineScope(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lgt/d0;Lkotlinx/coroutines/r;)Lgt/g0;
    .locals 1
    .param p1    # Lcom/unity3d/services/core/domain/ISDKDispatchers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/d0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "dispatchers"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errorHandler"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parentJob"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lgt/c0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p3, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p3, Lgt/f0;

    .line 25
    .line 26
    const-string v0, "scar_scope"

    .line 27
    .line 28
    invoke-direct {p3, v0}, Lgt/f0;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method public final sdkDispatchers()Lcom/unity3d/services/core/domain/ISDKDispatchers;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/unity3d/services/core/domain/SDKDispatchers;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/unity3d/services/core/domain/SDKDispatchers;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final sdkMetrics()Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/unity3d/services/core/request/metrics/SDKMetrics;->getInstance()Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getInstance()"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final showCoroutineScope(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lgt/d0;Lkotlinx/coroutines/r;)Lgt/g0;
    .locals 1
    .param p1    # Lcom/unity3d/services/core/domain/ISDKDispatchers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/d0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "dispatchers"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errorHandler"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parentJob"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lgt/c0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p3, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p3, Lgt/f0;

    .line 25
    .line 26
    const-string v0, "show_scope"

    .line 27
    .line 28
    invoke-direct {p3, v0}, Lgt/f0;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method public final topicsService(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Lcom/unity3d/services/ads/topics/TopicsService;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/services/core/domain/ISDKDispatchers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dispatchers"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/unity3d/services/ads/topics/TopicsService;

    .line 12
    .line 13
    sget-object v1, Lcom/unity3d/services/core/webview/bridge/SharedInstances;->INSTANCE:Lcom/unity3d/services/core/webview/bridge/SharedInstances;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/unity3d/services/core/webview/bridge/SharedInstances;->getWebViewEventSender()Lcom/unity3d/services/core/webview/bridge/IEventSender;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, p1, p2, v1}, Lcom/unity3d/services/ads/topics/TopicsService;-><init>(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/services/core/webview/bridge/IEventSender;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final transactionCoroutineScope(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lgt/d0;Lkotlinx/coroutines/r;)Lgt/g0;
    .locals 1
    .param p1    # Lcom/unity3d/services/core/domain/ISDKDispatchers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/d0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "dispatchers"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errorHandler"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parentJob"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lgt/c0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p3, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p3, Lgt/f0;

    .line 25
    .line 26
    const-string v0, "transaction_scope"

    .line 27
    .line 28
    invoke-direct {p3, v0}, Lgt/f0;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method public final universalRequestDataStore(Landroid/content/Context;Lgt/c0;)Landroidx/datastore/core/DataStore;
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lgt/c0;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/unity3d/ads/datastore/UniversalRequestStoreOuterClass$UniversalRequestStore;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dispatcher"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Landroidx/datastore/core/DataStoreFactory;->INSTANCE:Landroidx/datastore/core/DataStoreFactory;

    .line 12
    .line 13
    new-instance v2, Lcom/unity3d/ads/core/data/model/UniversalRequestStoreSerializer;

    .line 14
    .line 15
    invoke-direct {v2}, Lcom/unity3d/ads/core/data/model/UniversalRequestStoreSerializer;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-static {v0, v3, v0}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p2, v0}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p2}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    new-instance v6, Lcom/unity3d/services/core/di/UnityAdsModule$universalRequestDataStore$1;

    .line 33
    .line 34
    invoke-direct {v6, p1}, Lcom/unity3d/services/core/di/UnityAdsModule$universalRequestDataStore$1;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    const/4 v7, 0x4

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-static/range {v1 .. v8}, Landroidx/datastore/core/DataStoreFactory;->create$default(Landroidx/datastore/core/DataStoreFactory;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lgt/g0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/datastore/core/DataStore;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method public final volumeChangeMonitor(Lcom/unity3d/services/core/device/VolumeChange;)Lcom/unity3d/services/core/device/VolumeChangeMonitor;
    .locals 2
    .param p1    # Lcom/unity3d/services/core/device/VolumeChange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "volumeChange"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/unity3d/services/core/device/VolumeChangeMonitor;

    .line 7
    .line 8
    sget-object v1, Lcom/unity3d/services/core/webview/bridge/SharedInstances;->INSTANCE:Lcom/unity3d/services/core/webview/bridge/SharedInstances;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/unity3d/services/core/webview/bridge/SharedInstances;->getWebViewEventSender()Lcom/unity3d/services/core/webview/bridge/IEventSender;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1, p1}, Lcom/unity3d/services/core/device/VolumeChangeMonitor;-><init>(Lcom/unity3d/services/core/webview/bridge/IEventSender;Lcom/unity3d/services/core/device/VolumeChange;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final webViewConfigurationDataStore(Landroid/content/Context;Lgt/c0;)Landroidx/datastore/core/DataStore;
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lgt/c0;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dispatcher"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Landroidx/datastore/core/DataStoreFactory;->INSTANCE:Landroidx/datastore/core/DataStoreFactory;

    .line 12
    .line 13
    new-instance v2, Lcom/unity3d/ads/core/data/model/WebViewConfigurationStoreSerializer;

    .line 14
    .line 15
    invoke-direct {v2}, Lcom/unity3d/ads/core/data/model/WebViewConfigurationStoreSerializer;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-static {v0, v3, v0}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p2, v0}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p2}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    new-instance v6, Lcom/unity3d/services/core/di/UnityAdsModule$webViewConfigurationDataStore$1;

    .line 33
    .line 34
    invoke-direct {v6, p1}, Lcom/unity3d/services/core/di/UnityAdsModule$webViewConfigurationDataStore$1;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    const/4 v7, 0x4

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-static/range {v1 .. v8}, Landroidx/datastore/core/DataStoreFactory;->create$default(Landroidx/datastore/core/DataStoreFactory;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lgt/g0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/datastore/core/DataStore;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method
