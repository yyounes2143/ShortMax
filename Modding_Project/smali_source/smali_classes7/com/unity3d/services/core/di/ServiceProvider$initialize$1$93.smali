.class final Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$93;
.super Lkotlin/jvm/internal/Lambda;
.source "ServiceProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/di/ServiceProvider$initialize$1;->invoke(Lcom/unity3d/services/core/di/ServicesRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/unity3d/ads/core/domain/BuildHeaderBiddingToken;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nServiceProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceProvider.kt\ncom/unity3d/services/core/di/ServiceProvider$initialize$1$93\n+ 2 ServicesRegistry.kt\ncom/unity3d/services/core/di/ServicesRegistry\n*L\n1#1,1119:1\n57#2,3:1120\n57#2,3:1123\n57#2,3:1126\n57#2,3:1129\n57#2,3:1132\n57#2,3:1135\n57#2,3:1138\n57#2,3:1141\n57#2,3:1144\n57#2,3:1147\n57#2,3:1150\n*S KotlinDebug\n*F\n+ 1 ServiceProvider.kt\ncom/unity3d/services/core/di/ServiceProvider$initialize$1$93\n*L\n640#1:1120,3\n641#1:1123,3\n642#1:1126,3\n643#1:1129,3\n644#1:1132,3\n645#1:1135,3\n646#1:1138,3\n647#1:1141,3\n648#1:1144,3\n649#1:1147,3\n650#1:1150,3\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;


# direct methods
.method constructor <init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$93;->$this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Lcom/unity3d/ads/core/domain/BuildHeaderBiddingToken;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v12, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;

    .line 3
    iget-object v0, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$93;->$this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;

    .line 4
    new-instance v1, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v2, Lcom/unity3d/ads/core/domain/GetByteStringId;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v3, v2}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/di/ServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/unity3d/ads/core/domain/GetByteStringId;

    .line 6
    iget-object v0, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$93;->$this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;

    .line 7
    new-instance v2, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lcom/unity3d/ads/core/domain/GetClientInfo;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 8
    invoke-virtual {v0, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/unity3d/ads/core/domain/GetClientInfo;

    .line 9
    iget-object v0, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$93;->$this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;

    .line 10
    new-instance v4, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v5, Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 11
    invoke-virtual {v0, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;

    .line 12
    iget-object v0, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$93;->$this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;

    .line 13
    new-instance v5, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v6, Lcom/unity3d/ads/core/domain/GetLimitedSessionToken;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 14
    invoke-virtual {v0, v5}, Lcom/unity3d/services/core/di/ServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/unity3d/ads/core/domain/GetLimitedSessionToken;

    .line 15
    iget-object v0, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$93;->$this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;

    .line 16
    new-instance v6, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v7, Lcom/unity3d/ads/core/domain/GetInitializationData;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 17
    invoke-virtual {v0, v6}, Lcom/unity3d/services/core/di/ServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/unity3d/ads/core/domain/GetInitializationData;

    .line 18
    iget-object v0, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$93;->$this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;

    .line 19
    new-instance v7, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v8, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-direct {v7, v3, v8}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 20
    invoke-virtual {v0, v7}, Lcom/unity3d/services/core/di/ServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 21
    iget-object v0, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$93;->$this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;

    .line 22
    new-instance v8, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v9, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v3, v9}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 23
    invoke-virtual {v0, v8}, Lcom/unity3d/services/core/di/ServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 24
    iget-object v0, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$93;->$this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;

    .line 25
    new-instance v9, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v10, Lcom/unity3d/ads/core/data/repository/CampaignRepository;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v9, v3, v10}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 26
    invoke-virtual {v0, v9}, Lcom/unity3d/services/core/di/ServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/unity3d/ads/core/data/repository/CampaignRepository;

    .line 27
    iget-object v0, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$93;->$this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;

    .line 28
    new-instance v10, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v11, Lcom/unity3d/ads/core/data/repository/TcfRepository;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v3, v11}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 29
    invoke-virtual {v0, v10}, Lcom/unity3d/services/core/di/ServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/unity3d/ads/core/data/repository/TcfRepository;

    .line 30
    iget-object v0, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$93;->$this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;

    .line 31
    new-instance v11, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v13, Lcom/unity3d/ads/core/domain/AndroidTestDataInfo;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v11, v3, v13}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 32
    invoke-virtual {v0, v11}, Lcom/unity3d/services/core/di/ServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/unity3d/ads/core/domain/AndroidTestDataInfo;

    .line 33
    iget-object v0, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$93;->$this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;

    .line 34
    new-instance v13, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v14, Lcom/unity3d/ads/core/data/manager/OfferwallManager;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-direct {v13, v3, v14}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 35
    invoke-virtual {v0, v13}, Lcom/unity3d/services/core/di/ServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/unity3d/ads/core/data/manager/OfferwallManager;

    move-object v0, v12

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v13

    .line 36
    invoke-direct/range {v0 .. v11}, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;-><init>(Lcom/unity3d/ads/core/domain/GetByteStringId;Lcom/unity3d/ads/core/domain/GetClientInfo;Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;Lcom/unity3d/ads/core/domain/GetLimitedSessionToken;Lcom/unity3d/ads/core/domain/GetInitializationData;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/CampaignRepository;Lcom/unity3d/ads/core/data/repository/TcfRepository;Lcom/unity3d/ads/core/domain/AndroidTestDataInfo;Lcom/unity3d/ads/core/data/manager/OfferwallManager;)V

    return-object v12
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$93;->invoke()Lcom/unity3d/ads/core/domain/BuildHeaderBiddingToken;

    move-result-object v0

    return-object v0
.end method
