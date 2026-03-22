.class public Lokhttp3/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.kt"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lokhttp3/Call$Factory;
.implements Lokhttp3/WebSocket$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/OkHttpClient$Builder;,
        Lokhttp3/OkHttpClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOkHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpClient.kt\nokhttp3/OkHttpClient\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1079:1\n2624#2,3:1080\n2624#2,3:1083\n1#3:1086\n*S KotlinDebug\n*F\n+ 1 OkHttpClient.kt\nokhttp3/OkHttpClient\n*L\n225#1:1080,3\n255#1:1083,3\n*E\n"
    }
.end annotation


# static fields
.field public static final E:Lokhttp3/OkHttpClient$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final A:I

.field private final B:I

.field private final C:J

.field private final D:Lokhttp3/internal/connection/RouteDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final a:Lokhttp3/Dispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lokhttp3/ConnectionPool;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lokhttp3/EventListener$Factory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Z

.field private final g:Lokhttp3/Authenticator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Z

.field private final i:Z

.field private final j:Lokhttp3/CookieJar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final k:Lokhttp3/Cache;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final l:Lokhttp3/Dns;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final m:Ljava/net/Proxy;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final n:Ljava/net/ProxySelector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final o:Lokhttp3/Authenticator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final p:Ljavax/net/SocketFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final q:Ljavax/net/ssl/SSLSocketFactory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final r:Ljavax/net/ssl/X509TrustManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final u:Ljavax/net/ssl/HostnameVerifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final v:Lokhttp3/CertificatePinner;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final w:Lokhttp3/internal/tls/CertificateChainCleaner;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lokhttp3/OkHttpClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lokhttp3/OkHttpClient;->E:Lokhttp3/OkHttpClient$Companion;

    .line 8
    .line 9
    sget-object v0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    .line 10
    .line 11
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 12
    .line 13
    filled-new-array {v0, v1}, [Lokhttp3/Protocol;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lokhttp3/internal/Util;->w([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lokhttp3/OkHttpClient;->F:Ljava/util/List;

    .line 22
    .line 23
    sget-object v0, Lokhttp3/ConnectionSpec;->i:Lokhttp3/ConnectionSpec;

    .line 24
    .line 25
    sget-object v1, Lokhttp3/ConnectionSpec;->k:Lokhttp3/ConnectionSpec;

    .line 26
    .line 27
    filled-new-array {v0, v1}, [Lokhttp3/ConnectionSpec;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lokhttp3/internal/Util;->w([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lokhttp3/OkHttpClient;->G:Ljava/util/List;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-direct {p0, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient$Builder;)V
    .locals 3
    .param p1    # Lokhttp3/OkHttpClient$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->x()Lokhttp3/Dispatcher;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->a:Lokhttp3/Dispatcher;

    .line 3
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->u()Lokhttp3/ConnectionPool;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->b:Lokhttp3/ConnectionPool;

    .line 4
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->D()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->V(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->c:Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->F()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->V(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->d:Ljava/util/List;

    .line 6
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->z()Lokhttp3/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->e:Lokhttp3/EventListener$Factory;

    .line 7
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->M()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->f:Z

    .line 8
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->o()Lokhttp3/Authenticator;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->g:Lokhttp3/Authenticator;

    .line 9
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->A()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->h:Z

    .line 10
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->B()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->i:Z

    .line 11
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->w()Lokhttp3/CookieJar;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->j:Lokhttp3/CookieJar;

    .line 12
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->p()Lokhttp3/Cache;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->k:Lokhttp3/Cache;

    .line 13
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->y()Lokhttp3/Dns;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->l:Lokhttp3/Dns;

    .line 14
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->I()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->m:Ljava/net/Proxy;

    .line 15
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->I()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lokhttp3/internal/proxy/NullProxySelector;->a:Lokhttp3/internal/proxy/NullProxySelector;

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->K()Ljava/net/ProxySelector;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lokhttp3/internal/proxy/NullProxySelector;->a:Lokhttp3/internal/proxy/NullProxySelector;

    .line 17
    :cond_2
    :goto_0
    iput-object v0, p0, Lokhttp3/OkHttpClient;->n:Ljava/net/ProxySelector;

    .line 18
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->J()Lokhttp3/Authenticator;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->o:Lokhttp3/Authenticator;

    .line 19
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->O()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->p:Ljavax/net/SocketFactory;

    .line 20
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->v()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->s:Ljava/util/List;

    .line 21
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->H()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/OkHttpClient;->t:Ljava/util/List;

    .line 22
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->C()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/OkHttpClient;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 23
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->q()I

    move-result v1

    iput v1, p0, Lokhttp3/OkHttpClient;->x:I

    .line 24
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->t()I

    move-result v1

    iput v1, p0, Lokhttp3/OkHttpClient;->y:I

    .line 25
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->L()I

    move-result v1

    iput v1, p0, Lokhttp3/OkHttpClient;->z:I

    .line 26
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->Q()I

    move-result v1

    iput v1, p0, Lokhttp3/OkHttpClient;->A:I

    .line 27
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->G()I

    move-result v1

    iput v1, p0, Lokhttp3/OkHttpClient;->B:I

    .line 28
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->E()J

    move-result-wide v1

    iput-wide v1, p0, Lokhttp3/OkHttpClient;->C:J

    .line 29
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->N()Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Lokhttp3/internal/connection/RouteDatabase;

    invoke-direct {v1}, Lokhttp3/internal/connection/RouteDatabase;-><init>()V

    :cond_3
    iput-object v1, p0, Lokhttp3/OkHttpClient;->D:Lokhttp3/internal/connection/RouteDatabase;

    .line 30
    check-cast v0, Ljava/lang/Iterable;

    .line 31
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 32
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/ConnectionSpec;

    .line 33
    invoke-virtual {v1}, Lokhttp3/ConnectionSpec;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 34
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->P()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 35
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->P()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 36
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->r()Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, p0, Lokhttp3/OkHttpClient;->w:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 37
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->R()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v1, p0, Lokhttp3/OkHttpClient;->r:Ljavax/net/ssl/X509TrustManager;

    .line 38
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->s()Lokhttp3/CertificatePinner;

    move-result-object p1

    .line 39
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lokhttp3/CertificatePinner;->e(Lokhttp3/internal/tls/CertificateChainCleaner;)Lokhttp3/CertificatePinner;

    move-result-object p1

    .line 40
    iput-object p1, p0, Lokhttp3/OkHttpClient;->v:Lokhttp3/CertificatePinner;

    goto :goto_2

    .line 41
    :cond_6
    sget-object v0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform$Companion;->g()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/platform/Platform;->p()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/OkHttpClient;->r:Ljavax/net/ssl/X509TrustManager;

    .line 42
    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform$Companion;->g()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lokhttp3/internal/platform/Platform;->o(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 43
    sget-object v0, Lokhttp3/internal/tls/CertificateChainCleaner;->a:Lokhttp3/internal/tls/CertificateChainCleaner$Companion;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lokhttp3/internal/tls/CertificateChainCleaner$Companion;->a(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->w:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 44
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->s()Lokhttp3/CertificatePinner;

    move-result-object p1

    .line 45
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lokhttp3/CertificatePinner;->e(Lokhttp3/internal/tls/CertificateChainCleaner;)Lokhttp3/CertificatePinner;

    move-result-object p1

    .line 46
    iput-object p1, p0, Lokhttp3/OkHttpClient;->v:Lokhttp3/CertificatePinner;

    goto :goto_2

    :cond_7
    :goto_1
    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lokhttp3/OkHttpClient;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 48
    iput-object p1, p0, Lokhttp3/OkHttpClient;->w:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 49
    iput-object p1, p0, Lokhttp3/OkHttpClient;->r:Ljavax/net/ssl/X509TrustManager;

    .line 50
    sget-object p1, Lokhttp3/CertificatePinner;->d:Lokhttp3/CertificatePinner;

    iput-object p1, p0, Lokhttp3/OkHttpClient;->v:Lokhttp3/CertificatePinner;

    .line 51
    :goto_2
    invoke-direct {p0}, Lokhttp3/OkHttpClient;->J()V

    return-void
.end method

.method private final J()V
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->c:Ljava/util/List;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_b

    .line 14
    .line 15
    iget-object v0, p0, Lokhttp3/OkHttpClient;->d:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_a

    .line 25
    .line 26
    iget-object v0, p0, Lokhttp3/OkHttpClient;->s:Ljava/util/List;

    .line 27
    .line 28
    check-cast v0, Ljava/lang/Iterable;

    .line 29
    .line 30
    instance-of v1, v0, Ljava/util/Collection;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    move-object v1, v0

    .line 35
    check-cast v1, Ljava/util/Collection;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lokhttp3/ConnectionSpec;

    .line 59
    .line 60
    invoke-virtual {v1}, Lokhttp3/ConnectionSpec;->f()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    iget-object v0, p0, Lokhttp3/OkHttpClient;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    iget-object v0, p0, Lokhttp3/OkHttpClient;->w:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iget-object v0, p0, Lokhttp3/OkHttpClient;->r:Ljavax/net/ssl/X509TrustManager;

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 80
    .line 81
    const-string v1, "x509TrustManager == null"

    .line 82
    .line 83
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0

    .line 87
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    const-string v1, "certificateChainCleaner == null"

    .line 90
    .line 91
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 96
    .line 97
    const-string v1, "sslSocketFactory == null"

    .line 98
    .line 99
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v0

    .line 103
    :cond_5
    :goto_0
    iget-object v0, p0, Lokhttp3/OkHttpClient;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 104
    .line 105
    const-string v1, "Check failed."

    .line 106
    .line 107
    if-nez v0, :cond_9

    .line 108
    .line 109
    iget-object v0, p0, Lokhttp3/OkHttpClient;->w:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 110
    .line 111
    if-nez v0, :cond_8

    .line 112
    .line 113
    iget-object v0, p0, Lokhttp3/OkHttpClient;->r:Ljavax/net/ssl/X509TrustManager;

    .line 114
    .line 115
    if-nez v0, :cond_7

    .line 116
    .line 117
    iget-object v0, p0, Lokhttp3/OkHttpClient;->v:Lokhttp3/CertificatePinner;

    .line 118
    .line 119
    sget-object v2, Lokhttp3/CertificatePinner;->d:Lokhttp3/CertificatePinner;

    .line 120
    .line 121
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    :goto_1
    return-void

    .line 128
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 129
    .line 130
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v0

    .line 134
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 135
    .line 136
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v0

    .line 140
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 141
    .line 142
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v0

    .line 146
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 147
    .line 148
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v0

    .line 152
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v1, "Null network interceptor: "

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget-object v1, p0, Lokhttp3/OkHttpClient;->d:Ljava/util/List;

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v1

    .line 181
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string v1, "Null interceptor: "

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget-object v1, p0, Lokhttp3/OkHttpClient;->c:Ljava/util/List;

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw v1
.end method

.method public static final synthetic b()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/OkHttpClient;->G:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/OkHttpClient;->F:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e(Lokhttp3/OkHttpClient;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/OkHttpClient;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final A()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/OkHttpClient;->B:I

    .line 2
    .line 3
    return v0
.end method

.method public final B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->t:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C()Ljava/net/Proxy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->m:Ljava/net/Proxy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D()Lokhttp3/Authenticator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->o:Lokhttp3/Authenticator;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E()Ljava/net/ProxySelector;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->n:Ljava/net/ProxySelector;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/OkHttpClient;->z:I

    .line 2
    .line 3
    return v0
.end method

.method public final G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/OkHttpClient;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public final H()Ljavax/net/SocketFactory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->p:Ljavax/net/SocketFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "CLEARTEXT-only client"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final K()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/OkHttpClient;->A:I

    .line 2
    .line 3
    return v0
.end method

.method public final L()Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->r:Ljavax/net/ssl/X509TrustManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public a(Lokhttp3/Request;)Lokhttp3/Call;
    .locals 2
    .param p1    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lokhttp3/internal/connection/RealCall;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final f()Lokhttp3/Authenticator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->g:Lokhttp3/Authenticator;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lokhttp3/Cache;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->k:Lokhttp3/Cache;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/OkHttpClient;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public final j()Lokhttp3/internal/tls/CertificateChainCleaner;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->w:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Lokhttp3/CertificatePinner;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->v:Lokhttp3/CertificatePinner;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/OkHttpClient;->y:I

    .line 2
    .line 3
    return v0
.end method

.method public final m()Lokhttp3/ConnectionPool;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->b:Lokhttp3/ConnectionPool;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->s:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Lokhttp3/CookieJar;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->j:Lokhttp3/CookieJar;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()Lokhttp3/Dispatcher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->a:Lokhttp3/Dispatcher;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q()Lokhttp3/Dns;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->l:Lokhttp3/Dns;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r()Lokhttp3/EventListener$Factory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->e:Lokhttp3/EventListener$Factory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/OkHttpClient;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/OkHttpClient;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public final u()Lokhttp3/internal/connection/RouteDatabase;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->D:Lokhttp3/internal/connection/RouteDatabase;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v()Ljavax/net/ssl/HostnameVerifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/OkHttpClient;->C:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()Lokhttp3/OkHttpClient$Builder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lokhttp3/OkHttpClient$Builder;-><init>(Lokhttp3/OkHttpClient;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
