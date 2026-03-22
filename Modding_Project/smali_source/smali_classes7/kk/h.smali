.class public final Lkk/h;
.super Ljava/lang/Object;
.source "UnsafeOkHttpClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lkk/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkk/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lkk/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkk/h;->a:Lkk/h;

    .line 7
    .line 8
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

.method public static synthetic a(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkk/h;->c(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final c(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method


# virtual methods
.method public final b()Lokhttp3/OkHttpClient;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lkk/h$a;

    .line 3
    .line 4
    invoke-direct {v1}, Lkk/h$a;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    .line 9
    .line 10
    aput-object v1, v2, v0

    .line 11
    .line 12
    const-string v1, "SSL"

    .line 13
    .line 14
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v3, Ljava/security/SecureRandom;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-virtual {v1, v4, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lokhttp3/OkHttpClient$Builder;

    .line 28
    .line 29
    invoke-direct {v3}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v4, "getSocketFactory(...)"

    .line 37
    .line 38
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    aget-object v0, v2, v0

    .line 42
    .line 43
    const-string v2, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager"

    .line 44
    .line 45
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 49
    .line 50
    invoke-virtual {v3, v1, v0}, Lokhttp3/OkHttpClient$Builder;->X(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lkk/g;

    .line 55
    .line 56
    invoke-direct {v1}, Lkk/g;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->S(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sget-object v1, Lokhttp3/ConnectionSpec;->i:Lokhttp3/ConnectionSpec;

    .line 64
    .line 65
    sget-object v2, Lokhttp3/ConnectionSpec;->j:Lokhttp3/ConnectionSpec;

    .line 66
    .line 67
    sget-object v3, Lokhttp3/ConnectionSpec;->k:Lokhttp3/ConnectionSpec;

    .line 68
    .line 69
    filled-new-array {v1, v2, v3}, [Lokhttp3/ConnectionSpec;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->h(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->c()Lokhttp3/OkHttpClient;

    .line 82
    .line 83
    .line 84
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/RuntimeException;

    .line 88
    .line 89
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    throw v1
.end method
