.class public Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;
.super Ljava/lang/Object;
.source "AWSKeyValueStore.java"


# static fields
.field private static final i:Lcom/amazonaws/logging/Log;

.field static j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field c:Landroid/content/Context;

.field d:Landroid/content/SharedPreferences;

.field private final e:Ljava/lang/String;

.field f:Landroid/content/SharedPreferences;

.field g:Lcom/amazonaws/internal/keyvaluestore/KeyProvider;

.field private h:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->j:Ljava/util/Map;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/security/SecureRandom;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->h:Ljava/security/SecureRandom;

    .line 10
    .line 11
    invoke-static {p2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i(Ljava/lang/String;)Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a:Ljava/util/Map;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->c:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {p0, p3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->r(Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private c(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p3}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    const-string v0, "AES/GCM/NoPadding"

    .line 6
    .line 7
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-virtual {v0, v1, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance p2, Ljava/lang/String;

    .line 20
    .line 21
    const-string p3, "UTF-8"

    .line 22
    .line 23
    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    return-object p2

    .line 27
    :catch_0
    move-exception p1

    .line 28
    sget-object p2, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i:Lcom/amazonaws/logging/Log;

    .line 29
    .line 30
    const-string p3, "Error in decrypting data. "

    .line 31
    .line 32
    invoke-interface {p2, p3, p1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    return-object p1
.end method

.method private d(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "AES/GCM/NoPadding"

    .line 2
    .line 3
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "UTF-8"

    .line 12
    .line 13
    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-object p1

    .line 26
    :catch_0
    move-exception p1

    .line 27
    sget-object p2, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i:Lcom/amazonaws/logging/Log;

    .line 28
    .line 29
    const-string p3, "Error in encrypting data. "

    .line 30
    .line 31
    invoke-interface {p2, p3, p1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    return-object p1
.end method

.method private f()[B
    .locals 2

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    iget-object v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->h:Ljava/security/SecureRandom;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private h([B)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2

    .line 1
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method private static i(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->j:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->j:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/util/Map;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->j:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method private j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, ".encrypted"

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private k()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ".aesKeyStoreAlias"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method private l(Ljava/lang/String;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, ".iv"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    .line 19
    .line 20
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-static {v0}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    array-length v1, v0

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-direct {p0, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->h([B)Ljava/security/spec/AlgorithmParameterSpec;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v2, "Cannot base64 decode the initialization vector for "

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p1, " read from SharedPreferences."

    .line 65
    .line 66
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    .line 78
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v2, "Cannot read the initialization vector for "

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p1, " from SharedPreferences."

    .line 93
    .line 94
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    .line 106
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v2, "Initialization vector for "

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p1, " is missing from the SharedPreferences."

    .line 121
    .line 122
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v0
.end method

.method private m()V
    .locals 1

    .line 1
    new-instance v0, Lcom/amazonaws/internal/keyvaluestore/KeyProvider23;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/amazonaws/internal/keyvaluestore/KeyProvider23;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->g:Lcom/amazonaws/internal/keyvaluestore/KeyProvider;

    .line 7
    .line 8
    return-void
.end method

.method private n()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_9

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    const-string v3, ".encrypted"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    const-string v3, ".iv"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    const-string v3, ".keyvaluestoreversion"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_0

    .line 50
    .line 51
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    instance-of v3, v3, Ljava/lang/Long;

    .line 56
    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    iget-object v3, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    .line 60
    .line 61
    const-wide/16 v4, 0x0

    .line 62
    .line 63
    invoke-interface {v3, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    instance-of v3, v3, Ljava/lang/String;

    .line 85
    .line 86
    if-eqz v3, :cond_2

    .line 87
    .line 88
    iget-object v3, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    .line 89
    .line 90
    const/4 v4, 0x0

    .line 91
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_2

    .line 99
    .line 100
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    instance-of v3, v3, Ljava/lang/Float;

    .line 105
    .line 106
    if-eqz v3, :cond_3

    .line 107
    .line 108
    iget-object v3, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    .line 109
    .line 110
    const/4 v4, 0x0

    .line 111
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    instance-of v3, v3, Ljava/lang/Boolean;

    .line 132
    .line 133
    const/4 v4, 0x0

    .line 134
    if-eqz v3, :cond_4

    .line 135
    .line 136
    iget-object v3, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    .line 137
    .line 138
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    instance-of v3, v3, Ljava/lang/Integer;

    .line 159
    .line 160
    if-eqz v3, :cond_5

    .line 161
    .line 162
    iget-object v3, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    .line 163
    .line 164
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    instance-of v3, v3, Ljava/util/Set;

    .line 185
    .line 186
    if-eqz v3, :cond_8

    .line 187
    .line 188
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    check-cast v3, Ljava/util/Set;

    .line 193
    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-eqz v5, :cond_7

    .line 208
    .line 209
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    check-cast v5, Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    if-eqz v5, :cond_6

    .line 223
    .line 224
    const-string v5, ","

    .line 225
    .line 226
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    .line 238
    .line 239
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :cond_9
    return-void
.end method

.method private declared-synchronized q(Ljava/lang/String;)Ljava/security/Key;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->g:Lcom/amazonaws/internal/keyvaluestore/KeyProvider;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Lcom/amazonaws/internal/keyvaluestore/KeyProvider;->b(Ljava/lang/String;)Ljava/security/Key;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catch Lcom/amazonaws/internal/keyvaluestore/KeyNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    :try_start_1
    sget-object v1, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i:Lcom/amazonaws/logging/Log;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "Deleting the encryption key identified by the keyAlias: "

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v1, v0}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->g:Lcom/amazonaws/internal/keyvaluestore/KeyProvider;

    .line 39
    .line 40
    invoke-interface {v0, p1}, Lcom/amazonaws/internal/keyvaluestore/KeyProvider;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    monitor-exit p0

    .line 44
    const/4 p1, 0x0

    .line 45
    return-object p1

    .line 46
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    throw p1
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    monitor-exit p0

    .line 28
    return p1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    monitor-exit p0

    .line 38
    return p1

    .line 39
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    throw p1
.end method

.method declared-synchronized e(Ljava/lang/String;)Ljava/security/Key;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->g:Lcom/amazonaws/internal/keyvaluestore/KeyProvider;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Lcom/amazonaws/internal/keyvaluestore/KeyProvider;->a(Ljava/lang/String;)Ljava/security/Key;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catch Lcom/amazonaws/internal/keyvaluestore/KeyNotGeneratedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    :try_start_1
    sget-object v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i:Lcom/amazonaws/logging/Log;

    .line 14
    .line 15
    const-string v1, "Encryption Key cannot be generated successfully."

    .line 16
    .line 17
    invoke-interface {v0, v1, p1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    const/4 p1, 0x0

    .line 22
    return-object p1

    .line 23
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    throw p1
.end method

.method public declared-synchronized g(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-object v0

    .line 7
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_5

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {p0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->k()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {p0, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->q(Ljava/lang/String;)Ljava/security/Key;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    sget-object v1, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i:Lcom/amazonaws/logging/Log;

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v3, "Error in retrieving the decryption key used to decrypt the data from the persistent store. Returning null for the requested dataKey = "

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {v1, p1}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    monitor-exit p0

    .line 58
    return-object v0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto/16 :goto_2

    .line 61
    .line 62
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    .line 63
    .line 64
    invoke-interface {v3, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    if-nez v3, :cond_3

    .line 69
    .line 70
    monitor-exit p0

    .line 71
    return-object v0

    .line 72
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    .line 73
    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v5, ".keyvaluestoreversion"

    .line 83
    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    const/4 v4, 0x1

    .line 100
    if-eq v3, v4, :cond_4

    .line 101
    .line 102
    sget-object v1, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i:Lcom/amazonaws/logging/Log;

    .line 103
    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v3, "The version of the data read from SharedPreferences for "

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v3, " does not match the version of the store."

    .line 118
    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    .line 128
    .line 129
    monitor-exit p0

    .line 130
    return-object v0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    goto :goto_0

    .line 133
    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    .line 134
    .line 135
    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-direct {p0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->l(Ljava/lang/String;)Ljava/security/spec/AlgorithmParameterSpec;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-direct {p0, v2, v1, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->c(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iget-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a:Ljava/util/Map;

    .line 148
    .line 149
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    .line 151
    .line 152
    monitor-exit p0

    .line 153
    return-object v1

    .line 154
    :goto_0
    :try_start_4
    sget-object v2, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i:Lcom/amazonaws/logging/Log;

    .line 155
    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v4, "Error in retrieving value for dataKey = "

    .line 162
    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-interface {v2, v3, v1}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->p(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 177
    .line 178
    .line 179
    monitor-exit p0

    .line 180
    return-object v0

    .line 181
    :cond_5
    :goto_1
    :try_start_5
    iget-object v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a:Ljava/util/Map;

    .line 182
    .line 183
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 188
    .line 189
    monitor-exit p0

    .line 190
    return-object p1

    .line 191
    :goto_2
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 192
    throw p1
.end method

.method public declared-synchronized o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    sget-object p1, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i:Lcom/amazonaws/logging/Log;

    .line 5
    .line 6
    const-string p2, "dataKey is null."

    .line 7
    .line 8
    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :cond_1
    if-nez p2, :cond_2

    .line 28
    .line 29
    :try_start_2
    sget-object p2, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i:Lcom/amazonaws/logging/Log;

    .line 30
    .line 31
    const-string v0, "Value is null. Removing the data, IV and version from SharedPreferences"

    .line 32
    .line 33
    invoke-interface {p2, v0}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a:Ljava/util/Map;

    .line 37
    .line 38
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->p(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    .line 43
    .line 44
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :cond_2
    :try_start_3
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {p0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->k()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-direct {p0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->q(Ljava/lang/String;)Ljava/security/Key;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-nez v2, :cond_4

    .line 59
    .line 60
    sget-object v2, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i:Lcom/amazonaws/logging/Log;

    .line 61
    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v4, "No encryption key found for encryptionKeyAlias: "

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-interface {v2, v3}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e(Ljava/lang/String;)Ljava/security/Key;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    if-nez v3, :cond_3

    .line 87
    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string p2, "Error in generating the encryption key for encryptionKeyAlias: "

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p2, " used to encrypt the data before storing. Skipping persisting the data in the persistent store."

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-interface {v2, p1}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    .line 112
    .line 113
    monitor-exit p0

    .line 114
    return-void

    .line 115
    :cond_3
    move-object v2, v3

    .line 116
    :cond_4
    :try_start_4
    invoke-direct {p0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->f()[B

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-eqz v1, :cond_6

    .line 121
    .line 122
    invoke-direct {p0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->h([B)Ljava/security/spec/AlgorithmParameterSpec;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-direct {p0, v2, v3, p2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-static {v1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    if-eqz v1, :cond_5

    .line 135
    .line 136
    iget-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    .line 137
    .line 138
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-interface {v2, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v3, ".iv"

    .line 155
    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v0, ".keyvaluestoreversion"

    .line 176
    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    const/4 v1, 0x1

    .line 185
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :catch_0
    move-exception p2

    .line 198
    goto :goto_0

    .line 199
    :cond_5
    new-instance p2, Ljava/lang/Exception;

    .line 200
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v1, "Error in Base64 encoding the IV for dataKey = "

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw p2

    .line 222
    :cond_6
    new-instance p2, Ljava/lang/Exception;

    .line 223
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    const-string v1, "The generated IV for dataKey = "

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v1, " is null."

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 250
    :goto_0
    :try_start_5
    sget-object v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i:Lcom/amazonaws/logging/Log;

    .line 251
    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    const-string v2, "Error in storing value for dataKey = "

    .line 258
    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string p1, ". This data has not been stored in the persistent store."

    .line 266
    .line 267
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-interface {v0, p1, p2}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 275
    .line 276
    .line 277
    :goto_1
    monitor-exit p0

    .line 278
    return-void

    .line 279
    :goto_2
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 280
    throw p1
.end method

.method public declared-synchronized p(Ljava/lang/String;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ".iv"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, ".keyvaluestoreversion"

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    :goto_0
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    throw p1
.end method

.method public declared-synchronized r(Z)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b:Z

    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->c:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->c:Landroid/content/Context;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v4, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v4, ".encryptionkey"

    .line 34
    .line 35
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->f:Landroid/content/SharedPreferences;

    .line 47
    .line 48
    invoke-direct {p0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->m()V

    .line 49
    .line 50
    .line 51
    sget-object v1, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i:Lcom/amazonaws/logging/Log;

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v3, "Detected Android API Level = "

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v3, "Creating the AWSKeyValueStore with key for sharedPreferencesForData = "

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {p0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->n()V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    goto :goto_3

    .line 103
    :catch_0
    move-exception p1

    .line 104
    goto :goto_1

    .line 105
    :cond_0
    if-nez p1, :cond_1

    .line 106
    .line 107
    sget-object v1, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i:Lcom/amazonaws/logging/Log;

    .line 108
    .line 109
    const-string v2, "Persistence is disabled. Data will be accessed from memory."

    .line 110
    .line 111
    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 115
    .line 116
    if-eqz v0, :cond_2

    .line 117
    .line 118
    iget-object p1, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->d:Landroid/content/SharedPreferences;

    .line 119
    .line 120
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :goto_1
    :try_start_1
    sget-object v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i:Lcom/amazonaws/logging/Log;

    .line 133
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v2, "Error in enabling persistence for "

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-object v2, p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-interface {v0, v1, p1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .line 155
    .line 156
    :cond_2
    :goto_2
    monitor-exit p0

    .line 157
    return-void

    .line 158
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    throw p1
.end method
