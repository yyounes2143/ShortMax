.class public Lqa/k;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lqa/e;)Ljavax/crypto/SecretKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lqa/e;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "build aes key, iterationCount:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lqa/e;->g()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "AGC_Keys"

    .line 31
    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lqa/e;->b()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lqa/a;->b(Ljava/lang/String;)[B

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lqa/e;->c()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v2}, Lqa/a;->b(Ljava/lang/String;)[B

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p0}, Lqa/e;->d()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v3}, Lqa/a;->b(Ljava/lang/String;)[B

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v0, v2, v3}, Lqa/k;->e([B[B[B)[B

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Lqa/a;->c([B)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lqa/e;->f()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lqa/e;->e()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-static {v4}, Lqa/a;->b(Ljava/lang/String;)[B

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {p0}, Lqa/e;->g()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    invoke-virtual {p0}, Lqa/e;->h()I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    mul-int/lit8 p0, p0, 0x8

    .line 98
    .line 99
    invoke-direct {v3, v0, v4, v5, p0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    const-string v0, "build aes key end"

    .line 107
    .line 108
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 112
    .line 113
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    const-string v1, "AES"

    .line 118
    .line 119
    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-object v0

    .line 123
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 124
    .line 125
    const-string v0, "invalid data for generating the key."

    .line 126
    .line 127
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0
.end method

.method static b(Ljavax/crypto/SecretKey;[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x11

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v2, "AES/CBC/PKCS5Padding"

    .line 13
    .line 14
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    .line 19
    .line 20
    invoke-direct {v3, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 21
    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-virtual {v2, v4, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 25
    .line 26
    .line 27
    array-length p0, v0

    .line 28
    add-int/2addr p0, v1

    .line 29
    array-length v3, p1

    .line 30
    array-length v0, v0

    .line 31
    sub-int/2addr v3, v0

    .line 32
    sub-int/2addr v3, v1

    .line 33
    invoke-virtual {v2, p1, p0, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 39
    .line 40
    const-string p1, "key or cipherText must not be null."

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method private static c([BI)[B
    .locals 3

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    array-length v1, p0

    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    if-gez p1, :cond_0

    .line 8
    .line 9
    aget-byte v1, p0, v0

    .line 10
    .line 11
    neg-int v2, p1

    .line 12
    shl-int/2addr v1, v2

    .line 13
    int-to-byte v1, v1

    .line 14
    aput-byte v1, p0, v0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    aget-byte v1, p0, v0

    .line 18
    .line 19
    shr-int/2addr v1, p1

    .line 20
    int-to-byte v1, v1

    .line 21
    aput-byte v1, p0, v0

    .line 22
    .line 23
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-object p0

    .line 27
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 28
    .line 29
    const-string p1, "bytes must not be null."

    .line 30
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method private static d([B[B)[B
    .locals 4

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    array-length v0, p0

    .line 6
    array-length v1, p1

    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    array-length v0, p0

    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    array-length v2, p0

    .line 14
    if-ge v1, v2, :cond_0

    .line 15
    .line 16
    aget-byte v2, p0, v1

    .line 17
    .line 18
    aget-byte v3, p1, v1

    .line 19
    .line 20
    xor-int/2addr v2, v3

    .line 21
    int-to-byte v2, v2

    .line 22
    aput-byte v2, v0, v1

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-object v0

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string p1, "left and right must be the same length."

    .line 31
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 37
    .line 38
    const-string p1, "left or right must not be null."

    .line 39
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public static e([B[B[B)[B
    .locals 1

    .line 1
    const/4 v0, -0x4

    .line 2
    invoke-static {p0, v0}, Lqa/k;->c([BI)[B

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-static {p0, p1}, Lqa/k;->d([B[B)[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 p1, 0x6

    .line 11
    invoke-static {p0, p1}, Lqa/k;->c([BI)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0, p2}, Lqa/k;->d([B[B)[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
