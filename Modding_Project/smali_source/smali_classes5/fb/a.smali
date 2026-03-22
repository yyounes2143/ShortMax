.class public Lfb/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lob/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lob/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lfb/a;->a:Ljavax/net/ssl/HostnameVerifier;

    .line 7
    .line 8
    return-void
.end method

.method public static a()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    sget-object v0, Lfb/a;->a:Ljavax/net/ssl/HostnameVerifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getInstance()Lcom/huawei/hms/framework/network/grs/GrsApp;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "/"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getBrand(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "grs_sp.bks"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    new-instance v0, Lnb/e;

    .line 37
    .line 38
    const-string v1, ""

    .line 39
    .line 40
    invoke-direct {v0, p0, v1}, Lnb/e;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance p0, Lnb/c;

    .line 44
    .line 45
    invoke-direct {p0, v0}, Lnb/c;-><init>(Ljavax/net/ssl/X509TrustManager;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    goto :goto_0

    .line 51
    :catch_1
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :catch_2
    move-exception p0

    .line 54
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method
