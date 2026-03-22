.class public Lmb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = true

.field private static b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private static a()Ljava/security/SecureRandom;
    .locals 7

    .line 1
    const-string v0, "generateSecureRandomNew "

    .line 2
    .line 3
    const-string v1, "EncryptUtil"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lmb/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v2, 0x1a

    .line 11
    .line 12
    if-lt v0, v2, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lf1/a;->a()Ljava/security/SecureRandom;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    const-string v0, "getSecureRandomBytes: NoSuchAlgorithmException"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    const/4 v2, 0x0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    :try_start_1
    const-string v3, "SHA1PRNG"

    .line 29
    .line 30
    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception v3

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    :goto_1
    new-instance v3, Lorg/bouncycastle/crypto/engines/AESEngine;

    .line 38
    .line 39
    invoke-direct {v3}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    .line 40
    .line 41
    .line 42
    const/16 v4, 0x20

    .line 43
    .line 44
    new-array v4, v4, [B

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 47
    .line 48
    .line 49
    new-instance v5, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;

    .line 50
    .line 51
    const/4 v6, 0x1

    .line 52
    invoke-direct {v5, v0, v6}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;-><init>(Ljava/security/SecureRandom;Z)V

    .line 53
    .line 54
    .line 55
    const/16 v6, 0x180

    .line 56
    .line 57
    invoke-virtual {v5, v6}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->setEntropyBitsRequired(I)Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const/16 v6, 0x100

    .line 62
    .line 63
    invoke-virtual {v5, v3, v6, v4, v2}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->buildCTR(Lorg/bouncycastle/crypto/BlockCipher;I[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    .line 64
    .line 65
    .line 66
    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    return-object v0

    .line 68
    :goto_2
    sget-boolean v4, Lmb/a;->b:Z

    .line 69
    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v5, "exception : "

    .line 78
    .line 79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v3, " , you should implementation bcprov-jdk15on library"

    .line 90
    .line 91
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-static {v1, v3}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sput-boolean v2, Lmb/a;->b:Z

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :catch_1
    const-string v2, "NoSuchAlgorithmException"

    .line 105
    .line 106
    invoke-static {v1, v2}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_3
    return-object v0
.end method

.method private static b(I)[B
    .locals 1

    .line 1
    invoke-static {}, Lmb/a;->a()Ljava/security/SecureRandom;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    new-array p0, p0, [B

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    new-array p0, p0, [B

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public static c(I)[B
    .locals 3

    .line 1
    const-string v0, "EncryptUtil"

    .line 2
    .line 3
    sget-boolean v1, Lmb/a;->a:Z

    .line 4
    .line 5
    if-nez v1, :cond_2

    .line 6
    .line 7
    new-array p0, p0, [B

    .line 8
    .line 9
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v2, 0x1a

    .line 12
    .line 13
    if-lt v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lf1/a;->a()Ljava/security/SecureRandom;

    .line 16
    .line 17
    .line 18
    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    const-string v1, "getSecureRandomBytes: NoSuchAlgorithmException"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    if-nez v1, :cond_1

    .line 27
    .line 28
    :try_start_1
    const-string v1, "SHA1PRNG"

    .line 29
    .line 30
    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_1

    .line 35
    :catch_1
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    :goto_1
    invoke-virtual {v1, p0}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v2, "getSecureRandomBytes getInstance: exception : "

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v0, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :catch_2
    const-string p0, "getSecureRandomBytes getInstance: NoSuchAlgorithmException"

    .line 67
    .line 68
    invoke-static {v0, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_3
    const/4 p0, 0x0

    .line 72
    new-array p0, p0, [B

    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_2
    invoke-static {p0}, Lmb/a;->b(I)[B

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method

.method public static d(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lmb/a;->c(I)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lmb/b;->a([B)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static e(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setBouncycastleFlag: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "EncryptUtil"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lmb/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-boolean p0, Lmb/a;->a:Z

    .line 24
    .line 25
    return-void
.end method
