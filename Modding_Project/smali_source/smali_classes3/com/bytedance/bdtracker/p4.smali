.class public Lcom/bytedance/bdtracker/p4;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# instance fields
.field public final a:Lcom/bytedance/bdtracker/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "tt_data"

    .line 2
    .line 3
    const-string v1, "device_platform"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sput-object v2, Lcom/bytedance/bdtracker/p4;->b:[Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "ab_version"

    .line 12
    .line 13
    const-string v3, "iid"

    .line 14
    .line 15
    const-string v4, "aid"

    .line 16
    .line 17
    const-string v5, "version_code"

    .line 18
    .line 19
    filled-new-array {v4, v5, v2, v3, v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sput-object v1, Lcom/bytedance/bdtracker/p4;->c:[Ljava/lang/String;

    .line 24
    .line 25
    const-string v1, "app_version"

    .line 26
    .line 27
    const-string v2, "device_id"

    .line 28
    .line 29
    filled-new-array {v4, v1, v0, v2}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/bytedance/bdtracker/p4;->d:[Ljava/lang/String;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/bdtracker/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/bdtracker/p4;->a:Lcom/bytedance/bdtracker/d;

    .line 5
    .line 6
    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-eqz p0, :cond_1

    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/HashMap;Lcom/bytedance/bdtracker/d;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/bdtracker/d;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getEncryptor()Lcom/bytedance/mpaas/IEncryptor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getEncryptor()Lcom/bytedance/mpaas/IEncryptor;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/bdtracker/z;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getEncryptor()Lcom/bytedance/mpaas/IEncryptor;

    move-result-object v0

    check-cast v0, Lcom/bytedance/bdtracker/z;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/z;->encryptorType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "a"

    :goto_0
    iget-boolean p1, p1, Lcom/bytedance/bdtracker/d;->E:Z

    const-string v1, "Content-Type"

    if-eqz p1, :cond_1

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "application/octet-stream;tt-data="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    const-string p1, "application/json; charset=utf-8"

    goto :goto_1

    :goto_2
    return-object p0
.end method

.method public static a(Lcom/bytedance/applog/IAppLogInstance;Lorg/json/JSONObject;)V
    .locals 5

    invoke-interface {p0}, Lcom/bytedance/applog/IAppLogInstance;->getEncryptAndCompress()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    .line 10
    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    const/16 v4, 0x80

    invoke-virtual {v2, v4, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/bdtracker/p4;->a([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    const/16 v2, 0x8

    new-array v2, v2, [B

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v2}, Lcom/bytedance/bdtracker/p4;->a([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    aget-object v2, p0, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-string v2, "key"

    .line 11
    :try_start_1
    aget-object v1, p0, v1

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v1, "iv"

    :try_start_2
    aget-object p0, p0, v0

    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_1
    return-void
.end method

.method public static a([BLjava/lang/String;Ljava/lang/String;)[B
    .locals 7

    :try_start_0
    const-string v0, "AES/CBC/PKCS7PADDING"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v3, v2, [B

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "AES"

    .line 3
    invoke-direct {v1, v3, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    new-array v3, v2, [B

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5
    :cond_1
    invoke-direct {p1, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p2, 0x2

    invoke-virtual {v0, p2, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/p4;->a:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-boolean v0, v0, Lcom/bytedance/bdtracker/d;->E:Z

    if-nez v0, :cond_1

    return-object p1

    .line 7
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/bytedance/bdtracker/p4;->d:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Landroid/util/Pair;

    invoke-direct {v7, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/p4;->b(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "tt_info"

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)[B
    .locals 6

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    const/16 v1, 0x2000

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/p4;->a:Lcom/bytedance/bdtracker/d;

    .line 10
    .line 11
    iget-boolean v2, v2, Lcom/bytedance/bdtracker/d;->E:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    .line 13
    const-string v3, "UTF-8"

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    :try_start_1
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    :try_start_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    .line 28
    .line 29
    move-object v1, v2

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    move-object v1, v2

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :try_start_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :catchall_1
    move-exception p1

    .line 46
    :goto_1
    :try_start_4
    iget-object v2, p0, Lcom/bytedance/bdtracker/p4;->a:Lcom/bytedance/bdtracker/d;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 49
    .line 50
    const-string v3, "EncryptUtils"

    .line 51
    .line 52
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 56
    const-string v4, "Convert string to bytes failed"

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    :try_start_5
    new-array v5, v5, [Ljava/lang/Object;

    .line 60
    .line 61
    invoke-interface {v2, v3, v4, p1, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    .line 65
    .line 66
    .line 67
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/bytedance/bdtracker/p4;->a:Lcom/bytedance/bdtracker/d;

    .line 72
    .line 73
    iget-boolean v0, v0, Lcom/bytedance/bdtracker/d;->E:Z

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    iget-object v0, p0, Lcom/bytedance/bdtracker/p4;->a:Lcom/bytedance/bdtracker/d;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    iget-object v0, p0, Lcom/bytedance/bdtracker/p4;->a:Lcom/bytedance/bdtracker/d;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getEncryptor()Lcom/bytedance/mpaas/IEncryptor;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    .line 97
    iget-object v0, p0, Lcom/bytedance/bdtracker/p4;->a:Lcom/bytedance/bdtracker/d;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getEncryptor()Lcom/bytedance/mpaas/IEncryptor;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    array-length v1, p1

    .line 108
    invoke-interface {v0, p1, v1}, Lcom/bytedance/mpaas/IEncryptor;->encrypt([BI)[B

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    goto :goto_3

    .line 113
    :cond_1
    array-length v0, p1

    .line 114
    invoke-static {p1, v0}, Lcom/bytedance/applog/encryptor/EncryptorUtil;->encrypt([BI)[B

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    :cond_2
    :goto_3
    return-object p1

    .line 119
    :catchall_2
    move-exception p1

    .line 120
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    .line 121
    .line 122
    .line 123
    throw p1
.end method
