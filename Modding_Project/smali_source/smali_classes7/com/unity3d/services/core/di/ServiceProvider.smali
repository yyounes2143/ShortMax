.class public final Lcom/unity3d/services/core/di/ServiceProvider;
.super Ljava/lang/Object;
.source "ServiceProvider.kt"

# interfaces
.implements Lcom/unity3d/services/core/di/IServiceProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final CDN_CREATIVES_HOST:Ljava/lang/String; = "cdn-creatives-cf-prd.acquire.unity3dusercontent.com"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CDN_CREATIVES_PORT:I = 0x1bb

.field public static final DATA_STORE_GATEWAY_CACHE:Ljava/lang/String; = "gateway_cache.pb"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DATA_STORE_GL_INFO:Ljava/lang/String; = "glinfo.pb"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DATA_STORE_IAP_TRANSACTION:Ljava/lang/String; = "iap_transaction.pb"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DATA_STORE_NATIVE_CONFIG:Ljava/lang/String; = "native_configuration.pb"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DATA_STORE_PRIVACY:Ljava/lang/String; = "privacy.pb"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DATA_STORE_PRIVACY_FSM:Ljava/lang/String; = "privacy_fsm.pb"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DATA_STORE_UNIVERSAL_REQUEST:Ljava/lang/String; = "universal_request.pb"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DATA_STORE_WEBVIEW_CONFIG:Ljava/lang/String; = "webview_config.pb"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_DISPATCHER:Ljava/lang/String; = "default_dispatcher"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEV_CONSENT_PRIVACY_RULES:Ljava/lang/String; = "dev_consent_privacy_rules"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GATEWAY_HOST:Ljava/lang/String; = "gateway.unityads.unity3d.com"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GATEWAY_PORT:I = 0x1bb

.field public static final HTTP_CACHE_DISK_SIZE:J = 0x1400000L

.field public static final HTTP_CLIENT_FETCH_TIMEOUT:J = 0x1f4L

.field public static final INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IO_DISPATCHER:Ljava/lang/String; = "io_dispatcher"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LEGACY_PRIVACY_RULES:Ljava/lang/String; = "legacy_privacy_rules"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAIN_DISPATCHER:Ljava/lang/String; = "main_dispatcher"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NAMED_AD_REQ:Ljava/lang/String; = "ad_req"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NAMED_GATEWAY_HTTP_CLIENT:Ljava/lang/String; = "gateway_http_client"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NAMED_GET_TOKEN_SCOPE:Ljava/lang/String; = "get_token_scope"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NAMED_INIT_REQ:Ljava/lang/String; = "init_req"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NAMED_INIT_SCOPE:Ljava/lang/String; = "init_scope"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NAMED_LOAD_SCOPE:Ljava/lang/String; = "load_scope"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NAMED_LOCAL:Ljava/lang/String; = "local"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NAMED_OFFERWALL_SCOPE:Ljava/lang/String; = "offerwall_scope"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NAMED_OMID_SCOPE:Ljava/lang/String; = "omid_scope"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NAMED_OPERATIVE_REQ:Ljava/lang/String; = "op_event_req"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NAMED_OTHER_REQ:Ljava/lang/String; = "other_req"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NAMED_PUBLIC_JOB:Ljava/lang/String; = "public_job"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NAMED_REMOTE:Ljava/lang/String; = "remote"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NAMED_SCAR_SCOPE:Ljava/lang/String; = "scar_scope"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NAMED_SDK:Ljava/lang/String; = "sdk"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NAMED_SHOW_SCOPE:Ljava/lang/String; = "show_scope"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NAMED_TRANSACTION_SCOPE:Ljava/lang/String; = "transaction_scope"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PREF_GL_INFO:Ljava/lang/String; = "glinfo"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCAR_SIGNALS_FETCH_TIMEOUT:J = 0xc350L

.field public static final SCAR_VERSION_FETCH_TIMEOUT:J = 0x1388L

.field private static final serviceRegistry:Lcom/unity3d/services/core/di/IServicesRegistry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/unity3d/services/core/di/ServiceProvider;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/unity3d/services/core/di/ServiceProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/unity3d/services/core/di/ServiceProvider;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/unity3d/services/core/di/ServiceProvider;->initialize()Lcom/unity3d/services/core/di/IServicesRegistry;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/unity3d/services/core/di/ServiceProvider;->serviceRegistry:Lcom/unity3d/services/core/di/IServicesRegistry;

    .line 13
    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/unity3d/services/core/di/ServiceProvider;->serviceRegistry:Lcom/unity3d/services/core/di/IServicesRegistry;

    .line 2
    .line 3
    return-object v0
.end method

.method public initialize()Lcom/unity3d/services/core/di/IServicesRegistry;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/unity3d/services/core/di/ServicesRegistryKt;->registry(Lkotlin/jvm/functions/Function1;)Lcom/unity3d/services/core/di/ServicesRegistry;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
