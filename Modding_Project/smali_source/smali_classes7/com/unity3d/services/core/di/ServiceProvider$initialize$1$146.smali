.class final Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$146;
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
        "Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nServiceProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceProvider.kt\ncom/unity3d/services/core/di/ServiceProvider$initialize$1$146\n+ 2 ServicesRegistry.kt\ncom/unity3d/services/core/di/ServicesRegistry\n*L\n1#1,1119:1\n57#2,3:1120\n58#2,2:1123\n57#2,3:1125\n57#2,3:1128\n58#2,2:1131\n58#2,2:1133\n*S KotlinDebug\n*F\n+ 1 ServiceProvider.kt\ncom/unity3d/services/core/di/ServiceProvider$initialize$1$146\n*L\n903#1:1120,3\n904#1:1123,2\n905#1:1125,3\n906#1:1128,3\n907#1:1131,2\n908#1:1133,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;


# direct methods
.method constructor <init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$146;->$this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;

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
.method public final invoke()Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v7, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;

    .line 3
    iget-object v0, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$146;->$this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;

    .line 4
    new-instance v1, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v2, Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v3, v2}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/di/ServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

    .line 6
    iget-object v0, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$146;->$this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;

    .line 7
    new-instance v2, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v4, Lgt/c0;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const-string v5, "default_dispatcher"

    invoke-direct {v2, v5, v4}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 8
    invoke-virtual {v0, v2}, Lcom/unity3d/services/core/di/ServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lgt/c0;

    .line 9
    iget-object v0, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$146;->$this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;

    .line 10
    new-instance v4, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v5, Lcom/unity3d/ads/core/data/repository/TransactionEventRepository;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 11
    invoke-virtual {v0, v4}, Lcom/unity3d/services/core/di/ServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/unity3d/ads/core/data/repository/TransactionEventRepository;

    .line 12
    iget-object v0, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$146;->$this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;

    .line 13
    new-instance v5, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v6, Lcom/unity3d/ads/gatewayclient/GatewayClient;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 14
    invoke-virtual {v0, v5}, Lcom/unity3d/services/core/di/ServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/unity3d/ads/gatewayclient/GatewayClient;

    .line 15
    iget-object v0, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$146;->$this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;

    .line 16
    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v6, Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const-string v8, "other_req"

    invoke-direct {v3, v8, v6}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 17
    invoke-virtual {v0, v3}, Lcom/unity3d/services/core/di/ServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    .line 18
    iget-object v0, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$146;->$this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;

    .line 19
    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v8, Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const-string v9, "iap_transaction.pb"

    invoke-direct {v3, v9, v8}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 20
    invoke-virtual {v0, v3}, Lcom/unity3d/services/core/di/ServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;

    move-object v0, v7

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    .line 21
    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;-><init>(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lgt/c0;Lcom/unity3d/ads/core/data/repository/TransactionEventRepository;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;)V

    return-object v7
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$146;->invoke()Lcom/unity3d/ads/core/domain/events/TransactionEventObserver;

    move-result-object v0

    return-object v0
.end method
