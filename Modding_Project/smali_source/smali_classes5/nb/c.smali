.class public Lnb/c;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SourceFile"


# instance fields
.field protected a:Ljavax/net/ssl/SSLContext;

.field protected b:Ljavax/net/ssl/SSLSocket;

.field protected c:[Ljava/lang/String;

.field protected d:Ljavax/net/ssl/X509TrustManager;

.field protected e:[Ljava/lang/String;

.field protected f:[Ljava/lang/String;

.field protected g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lnb/c;->a:Ljavax/net/ssl/SSLContext;

    .line 6
    .line 7
    iput-object v0, p0, Lnb/c;->b:Ljavax/net/ssl/SSLSocket;

    .line 8
    .line 9
    invoke-static {}, Lnb/a;->f()Ljavax/net/ssl/SSLContext;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lnb/c;->a:Ljavax/net/ssl/SSLContext;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lnb/c;->b(Ljavax/net/ssl/X509TrustManager;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnb/c;->a:Ljavax/net/ssl/SSLContext;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    new-array v2, v2, [Ljavax/net/ssl/X509TrustManager;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    aput-object p1, v2, v3

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private a(Ljava/net/Socket;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lnb/c;->g:[Ljava/lang/String;

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
    const-string v2, "SSLFNew"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "set protocols"

    .line 14
    .line 15
    invoke-static {v2, v0}, Lpb/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    move-object v0, p1

    .line 19
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 20
    .line 21
    iget-object v4, p0, Lnb/c;->g:[Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v4}, Lnb/a;->e(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v3

    .line 29
    :goto_0
    iget-object v4, p0, Lnb/c;->f:[Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v4}, Lpb/c;->a([Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    iget-object v4, p0, Lnb/c;->e:[Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v4}, Lpb/c;->a([Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move v1, v3

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    :goto_1
    const-string v3, "set cipher"

    .line 49
    .line 50
    invoke-static {v2, v3}, Lpb/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    move-object v3, p1

    .line 54
    check-cast v3, Ljavax/net/ssl/SSLSocket;

    .line 55
    .line 56
    invoke-static {v3}, Lnb/a;->d(Ljavax/net/ssl/SSLSocket;)V

    .line 57
    .line 58
    .line 59
    iget-object v4, p0, Lnb/c;->f:[Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v4}, Lpb/c;->a([Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_3

    .line 66
    .line 67
    iget-object v4, p0, Lnb/c;->f:[Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v3, v4}, Lnb/a;->h(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    iget-object v4, p0, Lnb/c;->e:[Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v3, v4}, Lnb/a;->b(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    :goto_2
    if-nez v0, :cond_4

    .line 79
    .line 80
    const-string v0, "set default protocols"

    .line 81
    .line 82
    invoke-static {v2, v0}, Lpb/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    move-object v0, p1

    .line 86
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 87
    .line 88
    invoke-static {v0}, Lnb/a;->d(Ljavax/net/ssl/SSLSocket;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    if-nez v1, :cond_5

    .line 92
    .line 93
    const-string v0, "set default cipher"

    .line 94
    .line 95
    invoke-static {v2, v0}, Lpb/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 99
    .line 100
    invoke-static {p1}, Lnb/a;->c(Ljavax/net/ssl/SSLSocket;)V

    .line 101
    .line 102
    .line 103
    :cond_5
    return-void
.end method


# virtual methods
.method public b(Ljavax/net/ssl/X509TrustManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnb/c;->d:Ljavax/net/ssl/X509TrustManager;

    .line 2
    .line 3
    return-void
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "SSLFNew"

    const-string v1, "createSocket: host , port"

    .line 1
    invoke-static {v0, v1}, Lpb/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lnb/c;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    .line 3
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lnb/c;->a(Ljava/net/Socket;)V

    .line 5
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    iput-object p2, p0, Lnb/c;->b:Ljavax/net/ssl/SSLSocket;

    .line 6
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lnb/c;->c:[Ljava/lang/String;

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
    invoke-virtual {p0, p1, p2}, Lnb/c;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

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

    invoke-virtual {p0, p1, p2}, Lnb/c;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

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

    invoke-virtual {p0, p1, p2}, Lnb/c;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

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

    const-string v0, "SSLFNew"

    const-string v1, "createSocket"

    .line 10
    invoke-static {v0, v1}, Lpb/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lnb/c;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    .line 12
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    .line 13
    invoke-direct {p0, p1}, Lnb/c;->a(Ljava/net/Socket;)V

    .line 14
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    iput-object p2, p0, Lnb/c;->b:Ljavax/net/ssl/SSLSocket;

    .line 15
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lnb/c;->c:[Ljava/lang/String;

    :cond_0
    return-object p1
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
    iget-object v0, p0, Lnb/c;->c:[Ljava/lang/String;

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
