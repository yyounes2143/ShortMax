.class public Lcom/ss/mediakit/vcnlib/X509Util;
.super Ljava/lang/Object;
.source "X509Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/mediakit/vcnlib/X509Util$TrustStorageListener;,
        Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerImplementation;,
        Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerIceCreamSandwich;,
        Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerJellyBean;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final HEX_DIGITS:[C

.field private static final OID_ANY_EKU:Ljava/lang/String; = "2.5.29.37.0"

.field private static final OID_SERVER_GATED_MICROSOFT:Ljava/lang/String; = "1.3.6.1.4.1.311.10.3.3"

.field private static final OID_SERVER_GATED_NETSCAPE:Ljava/lang/String; = "2.16.840.1.113730.4.1"

.field private static final OID_TLS_SERVER_AUTH:Ljava/lang/String; = "1.3.6.1.5.5.7.3.1"

.field private static final TAG:Ljava/lang/String; = "X509Util"

.field private static sCertificateFactory:Ljava/security/cert/CertificateFactory;

.field private static sDefaultTrustManager:Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerImplementation;

.field private static sDisableNativeCodeForTest:Z

.field private static sLoadedSystemKeyStore:Z

.field private static final sLock:Ljava/lang/Object;

.field private static sSystemCertificateDirectory:Ljava/io/File;

.field private static sSystemKeyStore:Ljava/security/KeyStore;

.field private static sSystemTrustAnchorCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sTestKeyStore:Ljava/security/KeyStore;

.field private static sTestTrustManager:Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerImplementation;

.field private static sTrustStorageListener:Lcom/ss/mediakit/vcnlib/X509Util$TrustStorageListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sLock:Ljava/lang/Object;

    .line 7
    .line 8
    const/16 v0, 0x10

    .line 9
    .line 10
    new-array v0, v0, [C

    .line 11
    .line 12
    fill-array-data v0, :array_0

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->HEX_DIGITS:[C

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/mediakit/vcnlib/X509Util;->reloadDefaultTrustManager()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static addTestRootCertificate([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/mediakit/vcnlib/X509Util;->ensureInitialized()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/ss/mediakit/vcnlib/X509Util;->createCertificateFromBytes([B)Ljava/security/cert/X509Certificate;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    sget-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/ss/mediakit/vcnlib/X509Util;->sTestKeyStore:Ljava/security/KeyStore;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "root_cert_"

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    sget-object v3, Lcom/ss/mediakit/vcnlib/X509Util;->sTestKeyStore:Ljava/security/KeyStore;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/security/KeyStore;->size()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2, p0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/ss/mediakit/vcnlib/X509Util;->reloadTestTrustManager()V

    .line 44
    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public static clearTestRootCertificates()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/mediakit/vcnlib/X509Util;->ensureInitialized()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lcom/ss/mediakit/vcnlib/X509Util;->sTestKeyStore:Ljava/security/KeyStore;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/ss/mediakit/vcnlib/X509Util;->reloadTestTrustManager()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_1

    .line 19
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw v1
.end method

.method public static createCertificateFromBytes([B)Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/mediakit/vcnlib/X509Util;->ensureInitialized()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sCertificateFactory:Ljava/security/cert/CertificateFactory;

    .line 5
    .line 6
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 16
    .line 17
    return-object p0
.end method

.method private static createTrustManager(Ljava/security/KeyStore;)Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerImplementation;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    array-length v0, p0

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    const-string v2, "X509Util"

    .line 19
    .line 20
    if-ge v1, v0, :cond_1

    .line 21
    .line 22
    aget-object v3, p0, v1

    .line 23
    .line 24
    instance-of v4, v3, Ljavax/net/ssl/X509TrustManager;

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    :try_start_0
    new-instance v4, Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerJellyBean;

    .line 29
    .line 30
    move-object v5, v3

    .line 31
    check-cast v5, Ljavax/net/ssl/X509TrustManager;

    .line 32
    .line 33
    invoke-direct {v4, v5}, Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerJellyBean;-><init>(Ljavax/net/ssl/X509TrustManager;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-object v4

    .line 37
    :catch_0
    move-exception v4

    .line 38
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v6, "Error creating trust manager ("

    .line 52
    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v3, "): "

    .line 60
    .line 61
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const-string p0, "Could not find suitable trust manager"

    .line 78
    .line 79
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    const/4 p0, 0x0

    .line 83
    return-object p0
.end method

.method private static ensureInitialized()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/ss/mediakit/vcnlib/X509Util;->ensureInitializedLocked()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v1
.end method

.method private static ensureInitializedLocked()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sCertificateFactory:Ljava/security/cert/CertificateFactory;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "X.509"

    .line 6
    .line 7
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sCertificateFactory:Ljava/security/cert/CertificateFactory;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sDefaultTrustManager:Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerImplementation;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-static {v1}, Lcom/ss/mediakit/vcnlib/X509Util;->createTrustManager(Ljava/security/KeyStore;)Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerImplementation;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sDefaultTrustManager:Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerImplementation;

    .line 23
    .line 24
    :cond_1
    sget-boolean v0, Lcom/ss/mediakit/vcnlib/X509Util;->sLoadedSystemKeyStore:Z

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    :try_start_0
    const-string v0, "AndroidCAStore"

    .line 29
    .line 30
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sSystemKeyStore:Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    .line 36
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    .line 38
    .line 39
    :catch_0
    :try_start_2
    new-instance v0, Ljava/io/File;

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "ANDROID_ROOT"

    .line 47
    .line 48
    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v3, "/etc/security/cacerts"

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sSystemCertificateDirectory:Ljava/io/File;
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_1

    .line 68
    .line 69
    :catch_1
    const/4 v0, 0x1

    .line 70
    sput-boolean v0, Lcom/ss/mediakit/vcnlib/X509Util;->sLoadedSystemKeyStore:Z

    .line 71
    .line 72
    :cond_2
    sget-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sSystemTrustAnchorCache:Ljava/util/Set;

    .line 73
    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    new-instance v0, Ljava/util/HashSet;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sSystemTrustAnchorCache:Ljava/util/Set;

    .line 82
    .line 83
    :cond_3
    sget-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sTestKeyStore:Ljava/security/KeyStore;

    .line 84
    .line 85
    if-nez v0, :cond_4

    .line 86
    .line 87
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sTestKeyStore:Ljava/security/KeyStore;

    .line 96
    .line 97
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 98
    .line 99
    .line 100
    :catch_2
    :cond_4
    sget-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sTestTrustManager:Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerImplementation;

    .line 101
    .line 102
    if-nez v0, :cond_5

    .line 103
    .line 104
    sget-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sTestKeyStore:Ljava/security/KeyStore;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/ss/mediakit/vcnlib/X509Util;->createTrustManager(Ljava/security/KeyStore;)Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerImplementation;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sput-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sTestTrustManager:Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerImplementation;

    .line 111
    .line 112
    :cond_5
    sget-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sTrustStorageListener:Lcom/ss/mediakit/vcnlib/X509Util$TrustStorageListener;

    .line 113
    .line 114
    if-nez v0, :cond_7

    .line 115
    .line 116
    new-instance v0, Lcom/ss/mediakit/vcnlib/X509Util$TrustStorageListener;

    .line 117
    .line 118
    invoke-direct {v0, v1}, Lcom/ss/mediakit/vcnlib/X509Util$TrustStorageListener;-><init>(Lcom/ss/mediakit/vcnlib/X509Util$1;)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sTrustStorageListener:Lcom/ss/mediakit/vcnlib/X509Util$TrustStorageListener;

    .line 122
    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    .line 124
    .line 125
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .line 127
    .line 128
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 129
    .line 130
    const/16 v2, 0x1a

    .line 131
    .line 132
    if-lt v1, v2, :cond_6

    .line 133
    .line 134
    const-string v1, "android.security.action.KEYCHAIN_CHANGED"

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v1, "android.security.action.KEY_ACCESS_CHANGED"

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-string v1, "android.security.action.TRUST_STORE_CHANGED"

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_6
    const-string v1, "android.security.STORAGE_CHANGED"

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :goto_0
    invoke-static {}, Lcom/ss/mediakit/vcnlib/NetUtils;->getApplicationContext()Landroid/content/Context;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    sget-object v2, Lcom/ss/mediakit/vcnlib/X509Util;->sTrustStorageListener:Lcom/ss/mediakit/vcnlib/X509Util$TrustStorageListener;

    .line 160
    .line 161
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    .line 163
    .line 164
    :cond_7
    return-void
.end method

.method private static hashPrincipal(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    const-string v0, "MD5"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    new-array v0, v0, [C

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    const/4 v2, 0x4

    .line 21
    if-ge v1, v2, :cond_0

    .line 22
    .line 23
    mul-int/lit8 v2, v1, 0x2

    .line 24
    .line 25
    sget-object v3, Lcom/ss/mediakit/vcnlib/X509Util;->HEX_DIGITS:[C

    .line 26
    .line 27
    rsub-int/lit8 v4, v1, 0x3

    .line 28
    .line 29
    aget-byte v4, p0, v4

    .line 30
    .line 31
    shr-int/lit8 v5, v4, 0x4

    .line 32
    .line 33
    and-int/lit8 v5, v5, 0xf

    .line 34
    .line 35
    aget-char v5, v3, v5

    .line 36
    .line 37
    aput-char v5, v0, v2

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    and-int/lit8 v4, v4, 0xf

    .line 42
    .line 43
    aget-char v3, v3, v4

    .line 44
    .line 45
    aput-char v3, v0, v2

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 51
    .line 52
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    .line 53
    .line 54
    .line 55
    return-object p0
.end method

.method private static isKnownRoot(Ljava/security/cert/X509Certificate;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sSystemKeyStore:Ljava/security/KeyStore;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    new-instance v0, Landroid/util/Pair;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object v2, Lcom/ss/mediakit/vcnlib/X509Util;->sSystemTrustAnchorCache:Ljava/util/Set;

    .line 21
    .line 22
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    return v3

    .line 30
    :cond_1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Lcom/ss/mediakit/vcnlib/X509Util;->hashPrincipal(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    move v4, v1

    .line 39
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/16 v6, 0x2e

    .line 48
    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    new-instance v6, Ljava/io/File;

    .line 60
    .line 61
    sget-object v7, Lcom/ss/mediakit/vcnlib/X509Util;->sSystemCertificateDirectory:Ljava/io/File;

    .line 62
    .line 63
    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-nez v6, :cond_2

    .line 71
    .line 72
    return v1

    .line 73
    :cond_2
    sget-object v6, Lcom/ss/mediakit/vcnlib/X509Util;->sSystemKeyStore:Ljava/security/KeyStore;

    .line 74
    .line 75
    new-instance v7, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string/jumbo v8, "system:"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-virtual {v6, v7}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    if-eqz v6, :cond_4

    .line 98
    .line 99
    instance-of v7, v6, Ljava/security/cert/X509Certificate;

    .line 100
    .line 101
    if-nez v7, :cond_3

    .line 102
    .line 103
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    new-instance v7, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v8, "Anchor "

    .line 117
    .line 118
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v5, " not an X509Certificate: "

    .line 125
    .line 126
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    const-string v6, "X509Util"

    .line 137
    .line 138
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_3
    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    invoke-virtual {v5, v7}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-eqz v5, :cond_4

    .line 157
    .line 158
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    if-eqz v5, :cond_4

    .line 171
    .line 172
    sget-object p0, Lcom/ss/mediakit/vcnlib/X509Util;->sSystemTrustAnchorCache:Ljava/util/Set;

    .line 173
    .line 174
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    return v3

    .line 178
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 179
    .line 180
    goto/16 :goto_0
.end method

.method private static reloadDefaultTrustManager()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sput-object v1, Lcom/ss/mediakit/vcnlib/X509Util;->sDefaultTrustManager:Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerImplementation;

    .line 6
    .line 7
    sput-object v1, Lcom/ss/mediakit/vcnlib/X509Util;->sSystemTrustAnchorCache:Ljava/util/Set;

    .line 8
    .line 9
    invoke-static {}, Lcom/ss/mediakit/vcnlib/X509Util;->ensureInitializedLocked()V

    .line 10
    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method private static reloadTestTrustManager()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sTestKeyStore:Ljava/security/KeyStore;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/mediakit/vcnlib/X509Util;->createTrustManager(Ljava/security/KeyStore;)Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerImplementation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/ss/mediakit/vcnlib/X509Util;->sTestTrustManager:Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerImplementation;

    .line 8
    .line 9
    return-void
.end method

.method public static setDisableNativeCodeForTest(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/ss/mediakit/vcnlib/X509Util;->sDisableNativeCodeForTest:Z

    .line 2
    .line 3
    return-void
.end method

.method static verifyKeyUsage(Ljava/security/cert/X509Certificate;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_2

    .line 19
    .line 20
    return v0

    .line 21
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    const-string v3, "1.3.6.1.5.5.7.3.1"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_3

    .line 34
    .line 35
    const-string v3, "2.5.29.37.0"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_3

    .line 42
    .line 43
    const-string v3, "2.16.840.1.113730.4.1"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_3

    .line 50
    .line 51
    const-string v3, "1.3.6.1.4.1.311.10.3.3"

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    :cond_3
    return v1

    .line 60
    :catch_0
    return v0
.end method

.method public static verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Lcom/ss/mediakit/vcnlib/AndroidCertVerifyResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    aget-object v1, p0, v0

    .line 8
    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    :try_start_0
    invoke-static {}, Lcom/ss/mediakit/vcnlib/X509Util;->ensureInitialized()V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_7

    .line 13
    .line 14
    .line 15
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    :try_start_1
    aget-object v3, p0, v0

    .line 21
    .line 22
    invoke-static {v3}, Lcom/ss/mediakit/vcnlib/X509Util;->createCertificateFromBytes([B)Ljava/security/cert/X509Certificate;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_6

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    move v4, v3

    .line 31
    :goto_0
    array-length v5, p0

    .line 32
    if-ge v4, v5, :cond_0

    .line 33
    .line 34
    :try_start_2
    aget-object v5, p0, v4

    .line 35
    .line 36
    invoke-static {v5}, Lcom/ss/mediakit/vcnlib/X509Util;->createCertificateFromBytes([B)Ljava/security/cert/X509Certificate;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_0
    const-string v5, "X509Util"

    .line 45
    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v7, "intermediate "

    .line 52
    .line 53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v7, " failed parsing"

    .line 60
    .line 61
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    new-array p0, p0, [Ljava/security/cert/X509Certificate;

    .line 79
    .line 80
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    check-cast p0, [Ljava/security/cert/X509Certificate;

    .line 85
    .line 86
    :try_start_3
    aget-object v2, p0, v0

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 89
    .line 90
    .line 91
    aget-object v2, p0, v0

    .line 92
    .line 93
    invoke-static {v2}, Lcom/ss/mediakit/vcnlib/X509Util;->verifyKeyUsage(Ljava/security/cert/X509Certificate;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_1

    .line 98
    .line 99
    new-instance p0, Lcom/ss/mediakit/vcnlib/AndroidCertVerifyResult;

    .line 100
    .line 101
    const/4 p1, -0x6

    .line 102
    invoke-direct {p0, p1}, Lcom/ss/mediakit/vcnlib/AndroidCertVerifyResult;-><init>(I)V
    :try_end_3
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 103
    .line 104
    .line 105
    return-object p0

    .line 106
    :cond_1
    sget-object v2, Lcom/ss/mediakit/vcnlib/X509Util;->sLock:Ljava/lang/Object;

    .line 107
    .line 108
    monitor-enter v2

    .line 109
    :try_start_4
    sget-object v4, Lcom/ss/mediakit/vcnlib/X509Util;->sDefaultTrustManager:Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerImplementation;

    .line 110
    .line 111
    if-nez v4, :cond_2

    .line 112
    .line 113
    new-instance p0, Lcom/ss/mediakit/vcnlib/AndroidCertVerifyResult;

    .line 114
    .line 115
    invoke-direct {p0, v1}, Lcom/ss/mediakit/vcnlib/AndroidCertVerifyResult;-><init>(I)V

    .line 116
    .line 117
    .line 118
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    return-object p0

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    goto :goto_4

    .line 122
    :cond_2
    :try_start_5
    invoke-interface {v4, p0, p1, p2}, Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerImplementation;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object p0
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 126
    goto :goto_2

    .line 127
    :catch_1
    move-exception v1

    .line 128
    :try_start_6
    sget-object v4, Lcom/ss/mediakit/vcnlib/X509Util;->sTestTrustManager:Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerImplementation;

    .line 129
    .line 130
    invoke-interface {v4, p0, p1, p2}, Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerImplementation;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object p0
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 134
    :goto_2
    :try_start_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-lez p1, :cond_3

    .line 139
    .line 140
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    sub-int/2addr p1, v3

    .line 145
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 150
    .line 151
    invoke-static {p1}, Lcom/ss/mediakit/vcnlib/X509Util;->isKnownRoot(Ljava/security/cert/X509Certificate;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    goto :goto_3

    .line 156
    :cond_3
    move p1, v0

    .line 157
    :goto_3
    new-instance p2, Lcom/ss/mediakit/vcnlib/AndroidCertVerifyResult;

    .line 158
    .line 159
    invoke-direct {p2, v0, p1, p0}, Lcom/ss/mediakit/vcnlib/AndroidCertVerifyResult;-><init>(IZLjava/util/List;)V

    .line 160
    .line 161
    .line 162
    monitor-exit v2

    .line 163
    return-object p2

    .line 164
    :catch_2
    const-string p0, "X509Util"

    .line 165
    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string p2, "Failed to validate the certificate chain, error: "

    .line 172
    .line 173
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    new-instance p0, Lcom/ss/mediakit/vcnlib/AndroidCertVerifyResult;

    .line 191
    .line 192
    const/4 p1, -0x2

    .line 193
    invoke-direct {p0, p1}, Lcom/ss/mediakit/vcnlib/AndroidCertVerifyResult;-><init>(I)V

    .line 194
    .line 195
    .line 196
    monitor-exit v2

    .line 197
    return-object p0

    .line 198
    :goto_4
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 199
    throw p0

    .line 200
    :catch_3
    new-instance p0, Lcom/ss/mediakit/vcnlib/AndroidCertVerifyResult;

    .line 201
    .line 202
    invoke-direct {p0, v1}, Lcom/ss/mediakit/vcnlib/AndroidCertVerifyResult;-><init>(I)V

    .line 203
    .line 204
    .line 205
    return-object p0

    .line 206
    :catch_4
    new-instance p0, Lcom/ss/mediakit/vcnlib/AndroidCertVerifyResult;

    .line 207
    .line 208
    const/4 p1, -0x4

    .line 209
    invoke-direct {p0, p1}, Lcom/ss/mediakit/vcnlib/AndroidCertVerifyResult;-><init>(I)V

    .line 210
    .line 211
    .line 212
    return-object p0

    .line 213
    :catch_5
    new-instance p0, Lcom/ss/mediakit/vcnlib/AndroidCertVerifyResult;

    .line 214
    .line 215
    const/4 p1, -0x3

    .line 216
    invoke-direct {p0, p1}, Lcom/ss/mediakit/vcnlib/AndroidCertVerifyResult;-><init>(I)V

    .line 217
    .line 218
    .line 219
    return-object p0

    .line 220
    :catch_6
    new-instance p0, Lcom/ss/mediakit/vcnlib/AndroidCertVerifyResult;

    .line 221
    .line 222
    const/4 p1, -0x5

    .line 223
    invoke-direct {p0, p1}, Lcom/ss/mediakit/vcnlib/AndroidCertVerifyResult;-><init>(I)V

    .line 224
    .line 225
    .line 226
    return-object p0

    .line 227
    :catch_7
    new-instance p0, Lcom/ss/mediakit/vcnlib/AndroidCertVerifyResult;

    .line 228
    .line 229
    invoke-direct {p0, v1}, Lcom/ss/mediakit/vcnlib/AndroidCertVerifyResult;-><init>(I)V

    .line 230
    .line 231
    .line 232
    return-object p0

    .line 233
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 234
    .line 235
    new-instance p2, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    const-string v0, "Expected non-null and non-empty certificate chain passed as |certChain|. |certChain|="

    .line 241
    .line 242
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw p1
.end method
