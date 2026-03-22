.class public Lnb/b;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final i:Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final j:Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final k:Ljava/lang/String;

.field private static volatile l:Lnb/b;


# instance fields
.field private a:Ljavax/net/ssl/SSLContext;

.field private b:Ljavax/net/ssl/SSLSocket;

.field private c:Landroid/content/Context;

.field private d:[Ljava/lang/String;

.field private e:Ljavax/net/ssl/X509TrustManager;

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnb/b;->i:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 7
    .line 8
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    .line 9
    .line 10
    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lnb/b;->j:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 14
    .line 15
    const-class v0, Lnb/b;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lnb/b;->k:Ljava/lang/String;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lnb/b;->l:Lnb/b;

    .line 25
    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/security/SecureRandom;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lnb/b;->a:Ljavax/net/ssl/SSLContext;

    .line 6
    .line 7
    iput-object v0, p0, Lnb/b;->b:Ljavax/net/ssl/SSLSocket;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    sget-object p1, Lnb/b;->k:Ljava/lang/String;

    .line 12
    .line 13
    const-string p2, "SecureSSLSocketFactory: context is null"

    .line 14
    .line 15
    invoke-static {p1, p2}, Lpb/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lnb/b;->c(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lnb/a;->f()Ljavax/net/ssl/SSLContext;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0, v1}, Lnb/b;->d(Ljavax/net/ssl/SSLContext;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lnb/d;->a(Landroid/content/Context;)Lnb/e;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lnb/b;->e:Ljavax/net/ssl/X509TrustManager;

    .line 34
    .line 35
    iget-object v1, p0, Lnb/b;->a:Ljavax/net/ssl/SSLContext;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    new-array v2, v2, [Ljavax/net/ssl/X509TrustManager;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    aput-object p1, v2, v3

    .line 42
    .line 43
    invoke-virtual {v1, v0, v2, p2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private a(Ljava/net/Socket;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lnb/b;->h:[Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lpb/c;->a([Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lnb/b;->k:Ljava/lang/String;

    .line 12
    .line 13
    const-string v3, "set protocols"

    .line 14
    .line 15
    invoke-static {v0, v3}, Lpb/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    move-object v0, p1

    .line 19
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 20
    .line 21
    iget-object v3, p0, Lnb/b;->h:[Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v3}, Lnb/a;->e(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v2

    .line 29
    :goto_0
    iget-object v3, p0, Lnb/b;->g:[Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v3}, Lpb/c;->a([Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    iget-object v3, p0, Lnb/b;->f:[Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v3}, Lpb/c;->a([Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move v1, v2

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    :goto_1
    sget-object v2, Lnb/b;->k:Ljava/lang/String;

    .line 49
    .line 50
    const-string v3, "set white cipher or black cipher"

    .line 51
    .line 52
    invoke-static {v2, v3}, Lpb/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    move-object v2, p1

    .line 56
    check-cast v2, Ljavax/net/ssl/SSLSocket;

    .line 57
    .line 58
    invoke-static {v2}, Lnb/a;->d(Ljavax/net/ssl/SSLSocket;)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lnb/b;->g:[Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v3}, Lpb/c;->a([Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_3

    .line 68
    .line 69
    iget-object v3, p0, Lnb/b;->g:[Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v2, v3}, Lnb/a;->h(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    iget-object v3, p0, Lnb/b;->f:[Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v2, v3}, Lnb/a;->b(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    :goto_2
    if-nez v0, :cond_4

    .line 81
    .line 82
    sget-object v0, Lnb/b;->k:Ljava/lang/String;

    .line 83
    .line 84
    const-string v2, "set default protocols"

    .line 85
    .line 86
    invoke-static {v0, v2}, Lpb/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    move-object v0, p1

    .line 90
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 91
    .line 92
    invoke-static {v0}, Lnb/a;->d(Ljavax/net/ssl/SSLSocket;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    if-nez v1, :cond_5

    .line 96
    .line 97
    sget-object v0, Lnb/b;->k:Ljava/lang/String;

    .line 98
    .line 99
    const-string v1, "set default cipher suites"

    .line 100
    .line 101
    invoke-static {v0, v1}, Lpb/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 105
    .line 106
    invoke-static {p1}, Lnb/a;->c(Ljavax/net/ssl/SSLSocket;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    return-void
.end method

.method public static b(Landroid/content/Context;)Lnb/b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/security/KeyManagementException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p0}, Lpb/b;->b(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lnb/b;->l:Lnb/b;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    const-class v2, Lnb/b;

    .line 13
    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    sget-object v3, Lnb/b;->l:Lnb/b;

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    new-instance v3, Lnb/b;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-direct {v3, p0, v4}, Lnb/b;-><init>(Landroid/content/Context;Ljava/security/SecureRandom;)V

    .line 23
    .line 24
    .line 25
    sput-object v3, Lnb/b;->l:Lnb/b;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit v2

    .line 31
    goto :goto_2

    .line 32
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0

    .line 34
    :cond_1
    :goto_2
    sget-object v2, Lnb/b;->l:Lnb/b;

    .line 35
    .line 36
    iget-object v2, v2, Lnb/b;->c:Landroid/content/Context;

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    sget-object v2, Lnb/b;->l:Lnb/b;

    .line 43
    .line 44
    invoke-virtual {v2, p0}, Lnb/b;->c(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    sget-object p0, Lnb/b;->k:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v3, "getInstance: cost : "

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    sub-long/2addr v3, v0

    .line 64
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, " ms"

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {p0, v0}, Lpb/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object p0, Lnb/b;->l:Lnb/b;

    .line 80
    .line 81
    return-object p0
.end method


# virtual methods
.method public c(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lnb/b;->c:Landroid/content/Context;

    .line 6
    .line 7
    return-void
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lnb/b;->k:Ljava/lang/String;

    const-string v1, "createSocket: host , port"

    invoke-static {v0, v1}, Lpb/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lnb/b;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    .line 3
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lnb/b;->a(Ljava/net/Socket;)V

    .line 5
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    iput-object p2, p0, Lnb/b;->b:Ljavax/net/ssl/SSLSocket;

    .line 6
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lnb/b;->d:[Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1, p2}, Lnb/b;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnb/b;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnb/b;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lnb/b;->k:Ljava/lang/String;

    const-string v1, "createSocket s host port autoClose"

    invoke-static {v0, v1}, Lpb/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lnb/b;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    .line 12
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    .line 13
    invoke-direct {p0, p1}, Lnb/b;->a(Ljava/net/Socket;)V

    .line 14
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    iput-object p2, p0, Lnb/b;->b:Ljavax/net/ssl/SSLSocket;

    .line 15
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lnb/b;->d:[Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method public d(Ljavax/net/ssl/SSLContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnb/b;->a:Ljavax/net/ssl/SSLContext;

    .line 2
    .line 3
    return-void
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnb/b;->d:[Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    new-array v0, v0, [Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method
