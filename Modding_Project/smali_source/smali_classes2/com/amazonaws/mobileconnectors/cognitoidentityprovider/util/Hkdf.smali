.class public final Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;
.super Ljava/lang/Object;
.source "Hkdf.java"


# static fields
.field private static final c:[B


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->c:[B

    .line 5
    .line 6
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->b:Ljavax/crypto/SecretKey;

    .line 6
    .line 7
    const-string v0, "Hmac"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->a:Ljava/lang/String;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "Invalid algorithm "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, ". Hkdf may only be used with Hmac algorithms."

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->b:Ljavax/crypto/SecretKey;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "Hkdf has not been initialized"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method private b()Ljavax/crypto/Mac;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->b:Ljavax/crypto/SecretKey;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    goto :goto_0

    .line 15
    :catch_1
    move-exception v0

    .line 16
    goto :goto_1

    .line 17
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw v1

    .line 23
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw v1
.end method

.method public static f(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public c([BI[BI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->a()V

    .line 2
    .line 3
    .line 4
    if-ltz p2, :cond_4

    .line 5
    .line 6
    array-length v0, p3

    .line 7
    add-int/2addr p4, p2

    .line 8
    if-lt v0, p4, :cond_3

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->b()Ljavax/crypto/Mac;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    invoke-virtual {p4}, Ljavax/crypto/Mac;->getMacLength()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    mul-int/lit16 v0, v0, 0xff

    .line 19
    .line 20
    if-gt p2, v0, :cond_2

    .line 21
    .line 22
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->c:[B

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    const/4 v2, 0x0

    .line 26
    move v3, v2

    .line 27
    :goto_0
    if-ge v3, p2, :cond_1

    .line 28
    .line 29
    :try_start_0
    invoke-virtual {p4, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p4, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p4, v1}, Ljavax/crypto/Mac;->update(B)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4}, Ljavax/crypto/Mac;->doFinal()[B

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    move v4, v2

    .line 43
    :goto_1
    array-length v5, v0

    .line 44
    if-ge v4, v5, :cond_0

    .line 45
    .line 46
    if-ge v3, p2, :cond_0

    .line 47
    .line 48
    aget-byte v5, v0, v4

    .line 49
    .line 50
    aput-byte v5, p3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_2

    .line 59
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    int-to-byte v1, v1

    .line 62
    goto :goto_0

    .line 63
    :goto_2
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    const-string p2, "Requested keys may not be longer than 255 times the underlying HMAC length."

    .line 74
    .line 75
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_3
    new-instance p1, Ljavax/crypto/ShortBufferException;

    .line 80
    .line 81
    invoke-direct {p1}, Ljavax/crypto/ShortBufferException;-><init>()V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    const-string p2, "Length must be a non-negative value."

    .line 88
    .line 89
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1
.end method

.method public d(Ljava/lang/String;I)[B
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->e([BI)[B

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public e([BI)[B
    .locals 2

    .line 1
    new-array v0, p2, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->c([BI[BI)V
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw p2
.end method

.method public g([B[B)V
    .locals 5

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->c:[B

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    check-cast p2, [B

    .line 11
    .line 12
    :goto_0
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->c:[B

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    array-length v3, p2

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2}, Ljavax/crypto/Mac;->getMacLength()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    new-array p2, p2, [B

    .line 29
    .line 30
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_3

    .line 36
    :catch_0
    move-exception p1

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    :goto_1
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 39
    .line 40
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->a:Ljava/lang/String;

    .line 41
    .line 42
    invoke-direct {v3, p2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    .line 53
    .line 54
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->a:Ljava/lang/String;

    .line 55
    .line 56
    invoke-direct {p1, v0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->h(Ljavax/crypto/SecretKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :goto_2
    :try_start_1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 70
    .line 71
    const-string v2, "Unexpected exception"

    .line 72
    .line 73
    invoke-direct {p2, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :goto_3
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 78
    .line 79
    .line 80
    throw p1
.end method

.method public h(Ljavax/crypto/SecretKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->b:Ljavax/crypto/SecretKey;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "Algorithm for the provided key must match the algorithm for this Hkdf. Expected "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, " but found "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method
