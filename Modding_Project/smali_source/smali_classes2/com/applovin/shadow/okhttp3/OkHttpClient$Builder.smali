.class public final Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
.super Ljava/lang/Object;
.source "OkHttpClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/shadow/okhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOkHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpClient.kt\nokhttp3/OkHttpClient$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1079:1\n1#2:1080\n*E\n"
    }
.end annotation


# instance fields
.field private authenticator:Lcom/applovin/shadow/okhttp3/Authenticator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cache:Lcom/applovin/shadow/okhttp3/Cache;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private callTimeout:I

.field private certificateChainCleaner:Lcom/applovin/shadow/okhttp3/internal/tls/CertificateChainCleaner;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private certificatePinner:Lcom/applovin/shadow/okhttp3/CertificatePinner;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private connectTimeout:I

.field private connectionPool:Lcom/applovin/shadow/okhttp3/ConnectionPool;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/shadow/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cookieJar:Lcom/applovin/shadow/okhttp3/CookieJar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dispatcher:Lcom/applovin/shadow/okhttp3/Dispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dns:Lcom/applovin/shadow/okhttp3/Dns;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private eventListenerFactory:Lcom/applovin/shadow/okhttp3/EventListener$Factory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private followRedirects:Z

.field private followSslRedirects:Z

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/shadow/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private minWebSocketMessageToCompress:J

.field private final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/shadow/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pingInterval:I

.field private protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/applovin/shadow/okhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private proxy:Ljava/net/Proxy;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private proxyAuthenticator:Lcom/applovin/shadow/okhttp3/Authenticator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private proxySelector:Ljava/net/ProxySelector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private readTimeout:I

.field private retryOnConnectionFailure:Z

.field private routeDatabase:Lcom/applovin/shadow/okhttp3/internal/connection/RouteDatabase;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private socketFactory:Ljavax/net/SocketFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private writeTimeout:I

.field private x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/applovin/shadow/okhttp3/Dispatcher;

    invoke-direct {v0}, Lcom/applovin/shadow/okhttp3/Dispatcher;-><init>()V

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->dispatcher:Lcom/applovin/shadow/okhttp3/Dispatcher;

    .line 3
    new-instance v0, Lcom/applovin/shadow/okhttp3/ConnectionPool;

    invoke-direct {v0}, Lcom/applovin/shadow/okhttp3/ConnectionPool;-><init>()V

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->connectionPool:Lcom/applovin/shadow/okhttp3/ConnectionPool;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 6
    sget-object v0, Lcom/applovin/shadow/okhttp3/EventListener;->NONE:Lcom/applovin/shadow/okhttp3/EventListener;

    invoke-static {v0}, Lcom/applovin/shadow/okhttp3/internal/Util;->asFactory(Lcom/applovin/shadow/okhttp3/EventListener;)Lcom/applovin/shadow/okhttp3/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Lcom/applovin/shadow/okhttp3/EventListener$Factory;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 8
    sget-object v1, Lcom/applovin/shadow/okhttp3/Authenticator;->NONE:Lcom/applovin/shadow/okhttp3/Authenticator;

    iput-object v1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->authenticator:Lcom/applovin/shadow/okhttp3/Authenticator;

    .line 9
    iput-boolean v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 10
    iput-boolean v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 11
    sget-object v0, Lcom/applovin/shadow/okhttp3/CookieJar;->NO_COOKIES:Lcom/applovin/shadow/okhttp3/CookieJar;

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->cookieJar:Lcom/applovin/shadow/okhttp3/CookieJar;

    .line 12
    sget-object v0, Lcom/applovin/shadow/okhttp3/Dns;->SYSTEM:Lcom/applovin/shadow/okhttp3/Dns;

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->dns:Lcom/applovin/shadow/okhttp3/Dns;

    .line 13
    iput-object v1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lcom/applovin/shadow/okhttp3/Authenticator;

    .line 14
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    const-string v1, "getDefault()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 15
    sget-object v0, Lcom/applovin/shadow/okhttp3/OkHttpClient;->Companion:Lcom/applovin/shadow/okhttp3/OkHttpClient$Companion;

    invoke-virtual {v0}, Lcom/applovin/shadow/okhttp3/OkHttpClient$Companion;->getDEFAULT_CONNECTION_SPECS$okhttp()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 16
    invoke-virtual {v0}, Lcom/applovin/shadow/okhttp3/OkHttpClient$Companion;->getDEFAULT_PROTOCOLS$okhttp()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 17
    sget-object v0, Lcom/applovin/shadow/okhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lcom/applovin/shadow/okhttp3/internal/tls/OkHostnameVerifier;

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 18
    sget-object v0, Lcom/applovin/shadow/okhttp3/CertificatePinner;->DEFAULT:Lcom/applovin/shadow/okhttp3/CertificatePinner;

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->certificatePinner:Lcom/applovin/shadow/okhttp3/CertificatePinner;

    const/16 v0, 0x2710

    .line 19
    iput v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 20
    iput v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 21
    iput v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    const-wide/16 v0, 0x400

    .line 22
    iput-wide v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->minWebSocketMessageToCompress:J

    return-void
.end method

.method public constructor <init>(Lcom/applovin/shadow/okhttp3/OkHttpClient;)V
    .locals 2
    .param p1    # Lcom/applovin/shadow/okhttp3/OkHttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;-><init>()V

    .line 24
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->dispatcher()Lcom/applovin/shadow/okhttp3/Dispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->dispatcher:Lcom/applovin/shadow/okhttp3/Dispatcher;

    .line 25
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->connectionPool()Lcom/applovin/shadow/okhttp3/ConnectionPool;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->connectionPool:Lcom/applovin/shadow/okhttp3/ConnectionPool;

    .line 26
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->E(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 27
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->E(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 28
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->eventListenerFactory()Lcom/applovin/shadow/okhttp3/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Lcom/applovin/shadow/okhttp3/EventListener$Factory;

    .line 29
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 30
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->authenticator()Lcom/applovin/shadow/okhttp3/Authenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->authenticator:Lcom/applovin/shadow/okhttp3/Authenticator;

    .line 31
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->followRedirects()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 32
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 33
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->cookieJar()Lcom/applovin/shadow/okhttp3/CookieJar;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->cookieJar:Lcom/applovin/shadow/okhttp3/CookieJar;

    .line 34
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->cache()Lcom/applovin/shadow/okhttp3/Cache;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->cache:Lcom/applovin/shadow/okhttp3/Cache;

    .line 35
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->dns()Lcom/applovin/shadow/okhttp3/Dns;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->dns:Lcom/applovin/shadow/okhttp3/Dns;

    .line 36
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 37
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 38
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->proxyAuthenticator()Lcom/applovin/shadow/okhttp3/Authenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lcom/applovin/shadow/okhttp3/Authenticator;

    .line 39
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 40
    invoke-static {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->access$getSslSocketFactoryOrNull$p(Lcom/applovin/shadow/okhttp3/OkHttpClient;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    .line 41
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->x509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;

    .line 42
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 43
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 44
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 45
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->certificatePinner()Lcom/applovin/shadow/okhttp3/CertificatePinner;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->certificatePinner:Lcom/applovin/shadow/okhttp3/CertificatePinner;

    .line 46
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->certificateChainCleaner()Lcom/applovin/shadow/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lcom/applovin/shadow/okhttp3/internal/tls/CertificateChainCleaner;

    .line 47
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->callTimeoutMillis()I

    move-result v0

    iput v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->callTimeout:I

    .line 48
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v0

    iput v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 49
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v0

    iput v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 50
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v0

    iput v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 51
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->pingIntervalMillis()I

    move-result v0

    iput v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->pingInterval:I

    .line 52
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->minWebSocketMessageToCompress()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->minWebSocketMessageToCompress:J

    .line 53
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient;->getRouteDatabase()Lcom/applovin/shadow/okhttp3/internal/connection/RouteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->routeDatabase:Lcom/applovin/shadow/okhttp3/internal/connection/RouteDatabase;

    return-void
.end method


# virtual methods
.method public final -addInterceptor(Lkotlin/jvm/functions/Function1;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/applovin/shadow/okhttp3/Interceptor$Chain;",
            "Lcom/applovin/shadow/okhttp3/Response;",
            ">;)",
            "Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder$addInterceptor$2;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder$addInterceptor$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->addInterceptor(Lcom/applovin/shadow/okhttp3/Interceptor;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final -addNetworkInterceptor(Lkotlin/jvm/functions/Function1;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/applovin/shadow/okhttp3/Interceptor$Chain;",
            "Lcom/applovin/shadow/okhttp3/Response;",
            ">;)",
            "Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder$addNetworkInterceptor$2;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder$addNetworkInterceptor$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lcom/applovin/shadow/okhttp3/Interceptor;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final addInterceptor(Lcom/applovin/shadow/okhttp3/Interceptor;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/Interceptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "interceptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 7
    .line 8
    check-cast v0, Ljava/util/Collection;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public final addNetworkInterceptor(Lcom/applovin/shadow/okhttp3/Interceptor;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/Interceptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "interceptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 7
    .line 8
    check-cast v0, Ljava/util/Collection;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public final authenticator(Lcom/applovin/shadow/okhttp3/Authenticator;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/Authenticator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "authenticator"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->authenticator:Lcom/applovin/shadow/okhttp3/Authenticator;

    .line 7
    .line 8
    return-object p0
.end method

.method public final build()Lcom/applovin/shadow/okhttp3/OkHttpClient;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/applovin/shadow/okhttp3/OkHttpClient;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/applovin/shadow/okhttp3/OkHttpClient;-><init>(Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final cache(Lcom/applovin/shadow/okhttp3/Cache;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1    # Lcom/applovin/shadow/okhttp3/Cache;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->cache:Lcom/applovin/shadow/okhttp3/Cache;

    .line 2
    .line 3
    return-object p0
.end method

.method public final callTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string/jumbo v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/applovin/shadow/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->callTimeout:I

    return-object p0
.end method

.method public final callTimeout(Ljava/time/Duration;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "duration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/applovin/shadow/okhttp3/c;->a(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public final certificatePinner(Lcom/applovin/shadow/okhttp3/CertificatePinner;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/CertificatePinner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "certificatePinner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->certificatePinner:Lcom/applovin/shadow/okhttp3/CertificatePinner;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->routeDatabase:Lcom/applovin/shadow/okhttp3/internal/connection/RouteDatabase;

    .line 16
    .line 17
    :cond_0
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->certificatePinner:Lcom/applovin/shadow/okhttp3/CertificatePinner;

    .line 18
    .line 19
    return-object p0
.end method

.method public final connectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string/jumbo v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/applovin/shadow/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    return-object p0
.end method

.method public final connectTimeout(Ljava/time/Duration;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "duration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/applovin/shadow/okhttp3/c;->a(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public final connectionPool(Lcom/applovin/shadow/okhttp3/ConnectionPool;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/ConnectionPool;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "connectionPool"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->connectionPool:Lcom/applovin/shadow/okhttp3/ConnectionPool;

    .line 7
    .line 8
    return-object p0
.end method

.method public final connectionSpecs(Ljava/util/List;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/shadow/okhttp3/ConnectionSpec;",
            ">;)",
            "Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "connectionSpecs"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->routeDatabase:Lcom/applovin/shadow/okhttp3/internal/connection/RouteDatabase;

    .line 16
    .line 17
    :cond_0
    invoke-static {p1}, Lcom/applovin/shadow/okhttp3/internal/Util;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 22
    .line 23
    return-object p0
.end method

.method public final cookieJar(Lcom/applovin/shadow/okhttp3/CookieJar;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/CookieJar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "cookieJar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->cookieJar:Lcom/applovin/shadow/okhttp3/CookieJar;

    .line 7
    .line 8
    return-object p0
.end method

.method public final dispatcher(Lcom/applovin/shadow/okhttp3/Dispatcher;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/Dispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "dispatcher"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->dispatcher:Lcom/applovin/shadow/okhttp3/Dispatcher;

    .line 7
    .line 8
    return-object p0
.end method

.method public final dns(Lcom/applovin/shadow/okhttp3/Dns;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/Dns;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "dns"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->dns:Lcom/applovin/shadow/okhttp3/Dns;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->routeDatabase:Lcom/applovin/shadow/okhttp3/internal/connection/RouteDatabase;

    .line 16
    .line 17
    :cond_0
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->dns:Lcom/applovin/shadow/okhttp3/Dns;

    .line 18
    .line 19
    return-object p0
.end method

.method public final eventListener(Lcom/applovin/shadow/okhttp3/EventListener;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/EventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "eventListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/applovin/shadow/okhttp3/internal/Util;->asFactory(Lcom/applovin/shadow/okhttp3/EventListener;)Lcom/applovin/shadow/okhttp3/EventListener$Factory;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Lcom/applovin/shadow/okhttp3/EventListener$Factory;

    .line 11
    .line 12
    return-object p0
.end method

.method public final eventListenerFactory(Lcom/applovin/shadow/okhttp3/EventListener$Factory;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/EventListener$Factory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "eventListenerFactory"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Lcom/applovin/shadow/okhttp3/EventListener$Factory;

    .line 7
    .line 8
    return-object p0
.end method

.method public final followRedirects(Z)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final followSslRedirects(Z)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAuthenticator$okhttp()Lcom/applovin/shadow/okhttp3/Authenticator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->authenticator:Lcom/applovin/shadow/okhttp3/Authenticator;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCache$okhttp()Lcom/applovin/shadow/okhttp3/Cache;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->cache:Lcom/applovin/shadow/okhttp3/Cache;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCallTimeout$okhttp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->callTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCertificateChainCleaner$okhttp()Lcom/applovin/shadow/okhttp3/internal/tls/CertificateChainCleaner;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lcom/applovin/shadow/okhttp3/internal/tls/CertificateChainCleaner;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCertificatePinner$okhttp()Lcom/applovin/shadow/okhttp3/CertificatePinner;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->certificatePinner:Lcom/applovin/shadow/okhttp3/CertificatePinner;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConnectTimeout$okhttp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public final getConnectionPool$okhttp()Lcom/applovin/shadow/okhttp3/ConnectionPool;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->connectionPool:Lcom/applovin/shadow/okhttp3/ConnectionPool;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConnectionSpecs$okhttp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/shadow/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCookieJar$okhttp()Lcom/applovin/shadow/okhttp3/CookieJar;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->cookieJar:Lcom/applovin/shadow/okhttp3/CookieJar;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDispatcher$okhttp()Lcom/applovin/shadow/okhttp3/Dispatcher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->dispatcher:Lcom/applovin/shadow/okhttp3/Dispatcher;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDns$okhttp()Lcom/applovin/shadow/okhttp3/Dns;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->dns:Lcom/applovin/shadow/okhttp3/Dns;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEventListenerFactory$okhttp()Lcom/applovin/shadow/okhttp3/EventListener$Factory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Lcom/applovin/shadow/okhttp3/EventListener$Factory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFollowRedirects$okhttp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getFollowSslRedirects$okhttp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getHostnameVerifier$okhttp()Ljavax/net/ssl/HostnameVerifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInterceptors$okhttp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/shadow/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMinWebSocketMessageToCompress$okhttp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->minWebSocketMessageToCompress:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getNetworkInterceptors$okhttp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/shadow/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPingInterval$okhttp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->pingInterval:I

    .line 2
    .line 3
    return v0
.end method

.method public final getProtocols$okhttp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/shadow/okhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProxy$okhttp()Ljava/net/Proxy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProxyAuthenticator$okhttp()Lcom/applovin/shadow/okhttp3/Authenticator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lcom/applovin/shadow/okhttp3/Authenticator;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProxySelector$okhttp()Ljava/net/ProxySelector;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReadTimeout$okhttp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRetryOnConnectionFailure$okhttp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getRouteDatabase$okhttp()Lcom/applovin/shadow/okhttp3/internal/connection/RouteDatabase;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->routeDatabase:Lcom/applovin/shadow/okhttp3/internal/connection/RouteDatabase;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSocketFactory$okhttp()Ljavax/net/SocketFactory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSslSocketFactoryOrNull$okhttp()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWriteTimeout$okhttp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public final getX509TrustManagerOrNull$okhttp()Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public final hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1    # Ljavax/net/ssl/HostnameVerifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "hostnameVerifier"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->routeDatabase:Lcom/applovin/shadow/okhttp3/internal/connection/RouteDatabase;

    .line 16
    .line 17
    :cond_0
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 18
    .line 19
    return-object p0
.end method

.method public final interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/shadow/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final minWebSocketMessageToCompress(J)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->minWebSocketMessageToCompress:J

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "minWebSocketMessageToCompress must be positive: "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p2
.end method

.method public final networkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/shadow/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final pingInterval(JLjava/util/concurrent/TimeUnit;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "interval"

    invoke-static {v0, p1, p2, p3}, Lcom/applovin/shadow/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->pingInterval:I

    return-object p0
.end method

.method public final pingInterval(Ljava/time/Duration;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "duration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/applovin/shadow/okhttp3/c;->a(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->pingInterval(JLjava/util/concurrent/TimeUnit;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public final protocols(Ljava/util/List;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/applovin/shadow/okhttp3/Protocol;",
            ">;)",
            "Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "protocols"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/Collection;

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Lcom/applovin/shadow/okhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lcom/applovin/shadow/okhttp3/Protocol;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    sget-object v1, Lcom/applovin/shadow/okhttp3/Protocol;->HTTP_1_1:Lcom/applovin/shadow/okhttp3/Protocol;

    .line 21
    .line 22
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "protocols must contain h2_prior_knowledge or http/1.1: "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :cond_1
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/4 v1, 0x1

    .line 67
    if-gt v0, v1, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v1, "protocols containing h2_prior_knowledge cannot use other protocols: "

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_3
    :goto_1
    sget-object v0, Lcom/applovin/shadow/okhttp3/Protocol;->HTTP_1_0:Lcom/applovin/shadow/okhttp3/Protocol;

    .line 98
    .line 99
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_6

    .line 104
    .line 105
    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Protocol?>"

    .line 106
    .line 107
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const/4 v0, 0x0

    .line 111
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_5

    .line 116
    .line 117
    sget-object v1, Lcom/applovin/shadow/okhttp3/Protocol;->SPDY_3:Lcom/applovin/shadow/okhttp3/Protocol;

    .line 118
    .line 119
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 123
    .line 124
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-nez v1, :cond_4

    .line 129
    .line 130
    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->routeDatabase:Lcom/applovin/shadow/okhttp3/internal/connection/RouteDatabase;

    .line 131
    .line 132
    :cond_4
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    const-string/jumbo v0, "unmodifiableList(protocolsCopy)"

    .line 137
    .line 138
    .line 139
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 143
    .line 144
    return-object p0

    .line 145
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 146
    .line 147
    const-string v0, "protocols must not contain null"

    .line 148
    .line 149
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p1

    .line 153
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v1, "protocols must not contain http/1.0: "

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw v0
.end method

.method public final proxy(Ljava/net/Proxy;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1    # Ljava/net/Proxy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->routeDatabase:Lcom/applovin/shadow/okhttp3/internal/connection/RouteDatabase;

    .line 11
    .line 12
    :cond_0
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 13
    .line 14
    return-object p0
.end method

.method public final proxyAuthenticator(Lcom/applovin/shadow/okhttp3/Authenticator;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/Authenticator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "proxyAuthenticator"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lcom/applovin/shadow/okhttp3/Authenticator;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->routeDatabase:Lcom/applovin/shadow/okhttp3/internal/connection/RouteDatabase;

    .line 16
    .line 17
    :cond_0
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lcom/applovin/shadow/okhttp3/Authenticator;

    .line 18
    .line 19
    return-object p0
.end method

.method public final proxySelector(Ljava/net/ProxySelector;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1    # Ljava/net/ProxySelector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "proxySelector"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->routeDatabase:Lcom/applovin/shadow/okhttp3/internal/connection/RouteDatabase;

    .line 16
    .line 17
    :cond_0
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 18
    .line 19
    return-object p0
.end method

.method public final readTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string/jumbo v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/applovin/shadow/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->readTimeout:I

    return-object p0
.end method

.method public final readTimeout(Ljava/time/Duration;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "duration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/applovin/shadow/okhttp3/c;->a(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public final retryOnConnectionFailure(Z)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final setAuthenticator$okhttp(Lcom/applovin/shadow/okhttp3/Authenticator;)V
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/Authenticator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->authenticator:Lcom/applovin/shadow/okhttp3/Authenticator;

    .line 7
    .line 8
    return-void
.end method

.method public final setCache$okhttp(Lcom/applovin/shadow/okhttp3/Cache;)V
    .locals 0
    .param p1    # Lcom/applovin/shadow/okhttp3/Cache;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->cache:Lcom/applovin/shadow/okhttp3/Cache;

    .line 2
    .line 3
    return-void
.end method

.method public final setCallTimeout$okhttp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->callTimeout:I

    .line 2
    .line 3
    return-void
.end method

.method public final setCertificateChainCleaner$okhttp(Lcom/applovin/shadow/okhttp3/internal/tls/CertificateChainCleaner;)V
    .locals 0
    .param p1    # Lcom/applovin/shadow/okhttp3/internal/tls/CertificateChainCleaner;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lcom/applovin/shadow/okhttp3/internal/tls/CertificateChainCleaner;

    .line 2
    .line 3
    return-void
.end method

.method public final setCertificatePinner$okhttp(Lcom/applovin/shadow/okhttp3/CertificatePinner;)V
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/CertificatePinner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->certificatePinner:Lcom/applovin/shadow/okhttp3/CertificatePinner;

    .line 7
    .line 8
    return-void
.end method

.method public final setConnectTimeout$okhttp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 2
    .line 3
    return-void
.end method

.method public final setConnectionPool$okhttp(Lcom/applovin/shadow/okhttp3/ConnectionPool;)V
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/ConnectionPool;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->connectionPool:Lcom/applovin/shadow/okhttp3/ConnectionPool;

    .line 7
    .line 8
    return-void
.end method

.method public final setConnectionSpecs$okhttp(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/shadow/okhttp3/ConnectionSpec;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setCookieJar$okhttp(Lcom/applovin/shadow/okhttp3/CookieJar;)V
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/CookieJar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->cookieJar:Lcom/applovin/shadow/okhttp3/CookieJar;

    .line 7
    .line 8
    return-void
.end method

.method public final setDispatcher$okhttp(Lcom/applovin/shadow/okhttp3/Dispatcher;)V
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/Dispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->dispatcher:Lcom/applovin/shadow/okhttp3/Dispatcher;

    .line 7
    .line 8
    return-void
.end method

.method public final setDns$okhttp(Lcom/applovin/shadow/okhttp3/Dns;)V
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/Dns;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->dns:Lcom/applovin/shadow/okhttp3/Dns;

    .line 7
    .line 8
    return-void
.end method

.method public final setEventListenerFactory$okhttp(Lcom/applovin/shadow/okhttp3/EventListener$Factory;)V
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/EventListener$Factory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Lcom/applovin/shadow/okhttp3/EventListener$Factory;

    .line 7
    .line 8
    return-void
.end method

.method public final setFollowRedirects$okhttp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setFollowSslRedirects$okhttp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setHostnameVerifier$okhttp(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .param p1    # Ljavax/net/ssl/HostnameVerifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 7
    .line 8
    return-void
.end method

.method public final setMinWebSocketMessageToCompress$okhttp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->minWebSocketMessageToCompress:J

    .line 2
    .line 3
    return-void
.end method

.method public final setPingInterval$okhttp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->pingInterval:I

    .line 2
    .line 3
    return-void
.end method

.method public final setProtocols$okhttp(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/applovin/shadow/okhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setProxy$okhttp(Ljava/net/Proxy;)V
    .locals 0
    .param p1    # Ljava/net/Proxy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 2
    .line 3
    return-void
.end method

.method public final setProxyAuthenticator$okhttp(Lcom/applovin/shadow/okhttp3/Authenticator;)V
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/Authenticator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lcom/applovin/shadow/okhttp3/Authenticator;

    .line 7
    .line 8
    return-void
.end method

.method public final setProxySelector$okhttp(Ljava/net/ProxySelector;)V
    .locals 0
    .param p1    # Ljava/net/ProxySelector;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 2
    .line 3
    return-void
.end method

.method public final setReadTimeout$okhttp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRetryOnConnectionFailure$okhttp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setRouteDatabase$okhttp(Lcom/applovin/shadow/okhttp3/internal/connection/RouteDatabase;)V
    .locals 0
    .param p1    # Lcom/applovin/shadow/okhttp3/internal/connection/RouteDatabase;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->routeDatabase:Lcom/applovin/shadow/okhttp3/internal/connection/RouteDatabase;

    .line 2
    .line 3
    return-void
.end method

.method public final setSocketFactory$okhttp(Ljavax/net/SocketFactory;)V
    .locals 1
    .param p1    # Ljavax/net/SocketFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 7
    .line 8
    return-void
.end method

.method public final setSslSocketFactoryOrNull$okhttp(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    .line 2
    .line 3
    return-void
.end method

.method public final setWriteTimeout$okhttp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 2
    .line 3
    return-void
.end method

.method public final setX509TrustManagerOrNull$okhttp(Ljavax/net/ssl/X509TrustManager;)V
    .locals 0
    .param p1    # Ljavax/net/ssl/X509TrustManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;

    .line 2
    .line 3
    return-void
.end method

.method public final socketFactory(Ljavax/net/SocketFactory;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1    # Ljavax/net/SocketFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "socketFactory"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Ljavax/net/ssl/SSLSocketFactory;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->routeDatabase:Lcom/applovin/shadow/okhttp3/internal/connection/RouteDatabase;

    .line 20
    .line 21
    :cond_0
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string v0, "socketFactory instanceof SSLSocketFactory"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public final sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 4
    .param p1    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "sslSocketFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->routeDatabase:Lcom/applovin/shadow/okhttp3/internal/connection/RouteDatabase;

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    .line 4
    sget-object v0, Lcom/applovin/shadow/okhttp3/internal/platform/Platform;->Companion:Lcom/applovin/shadow/okhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v0}, Lcom/applovin/shadow/okhttp3/internal/platform/Platform$Companion;->get()Lcom/applovin/shadow/okhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/applovin/shadow/okhttp3/internal/platform/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;

    .line 5
    invoke-virtual {v0}, Lcom/applovin/shadow/okhttp3/internal/platform/Platform$Companion;->get()Lcom/applovin/shadow/okhttp3/internal/platform/Platform;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/applovin/shadow/okhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lcom/applovin/shadow/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lcom/applovin/shadow/okhttp3/internal/tls/CertificateChainCleaner;

    return-object p0

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to extract the trust manager on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/applovin/shadow/okhttp3/internal/platform/Platform$Companion;->get()Lcom/applovin/shadow/okhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sslSocketFactory is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 9
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljavax/net/ssl/X509TrustManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "sslSocketFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "trustManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->routeDatabase:Lcom/applovin/shadow/okhttp3/internal/connection/RouteDatabase;

    .line 13
    :cond_1
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    .line 14
    sget-object p1, Lcom/applovin/shadow/okhttp3/internal/tls/CertificateChainCleaner;->Companion:Lcom/applovin/shadow/okhttp3/internal/tls/CertificateChainCleaner$Companion;

    invoke-virtual {p1, p2}, Lcom/applovin/shadow/okhttp3/internal/tls/CertificateChainCleaner$Companion;->get(Ljavax/net/ssl/X509TrustManager;)Lcom/applovin/shadow/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lcom/applovin/shadow/okhttp3/internal/tls/CertificateChainCleaner;

    .line 15
    iput-object p2, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;

    return-object p0
.end method

.method public final writeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string/jumbo v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/applovin/shadow/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    return-object p0
.end method

.method public final writeTimeout(Ljava/time/Duration;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "duration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/applovin/shadow/okhttp3/c;->a(Ljava/time/Duration;)J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/applovin/shadow/okhttp3/OkHttpClient$Builder;

    return-object p0
.end method
