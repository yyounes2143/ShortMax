.class public Lhb/v;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Lhb/v;->b(Ljava/lang/String;[B)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p0

    .line 12
    :catch_0
    const-string p0, "hmsSdk"

    .line 13
    .line 14
    const-string p1, "Unsupported encoding exception,utf-8"

    .line 15
    .line 16
    invoke-static {p0, p1}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p0, ""

    .line 20
    .line 21
    return-object p0
.end method

.method public static b(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "hmsSdk"

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    array-length v2, p1

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    const/4 v2, 0x0

    .line 12
    :try_start_0
    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lhb/v;->c([B)Ljava/security/PublicKey;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p1, p0}, Lhb/v;->d([BLjava/security/PublicKey;)[B

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Lmb/b;->a([B)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-object p0

    .line 29
    :catch_0
    const-string p0, "encrypt(): Invalid key specification"

    .line 30
    .line 31
    :goto_0
    invoke-static {v1, p0}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catch_1
    const-string p0, "encrypt(): getInstance - No such algorithm,transformation"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_1
    return-object v0

    .line 39
    :cond_1
    :goto_2
    const-string p0, "encrypt: content is empty or null"

    .line 40
    .line 41
    invoke-static {v1, p0}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v0
.end method

.method private static c([B)Ljava/security/PublicKey;
    .locals 1

    .line 1
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 4
    .line 5
    .line 6
    const-string p0, "RSA"

    .line 7
    .line 8
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private static d([BLjava/security/PublicKey;)[B
    .locals 3

    .line 1
    const-string v0, "hmsSdk"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    const-string v1, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    .line 6
    .line 7
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    .line 21
    .line 22
    const-string p1, "The loaded public key is null"

    .line 23
    .line 24
    invoke-direct {p0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    const-string p0, "rsaEncrypt(): doFinal - The provided block is not filled with"

    .line 29
    .line 30
    :goto_0
    invoke-static {v0, p0}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_1
    const-string p0, "rsaEncrypt():False filling parameters!"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_2
    const-string p0, "rsaEncrypt():  No such filling parameters "

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_3
    const-string p0, "rsaEncrypt(): init - Invalid key!"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_4
    const-string p0, "rsaEncrypt(): getInstance - No such algorithm,transformation"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_5
    const-string p0, "rsaEncrypt(): getBytes - Unsupported coding format!"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_1
    const/4 p0, 0x0

    .line 50
    new-array p0, p0, [B

    .line 51
    .line 52
    return-object p0
.end method
